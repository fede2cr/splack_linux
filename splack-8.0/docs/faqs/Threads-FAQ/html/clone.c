/*I'd suggest people also take a look at the (beta) pthreads library that 
somebody wrote on top of clone() (the announcement is probably still in 
comp.os.linux.announce if you have a reasonable news spool). That is 
probably actually useful, unlike my minimal example.

		Linus

----*/
#include <signal.h>
#include <stdio.h>
#include <stdlib.h>
#include <fcntl.h>

#include <linux/unistd.h>

#define STACKSIZE 16384

#define CSIGNAL         0x000000ff      /* signal mask to be sent at exit */
#define CLONE_VM        0x00000100      /* set if VM shared between processes */
#define CLONE_FS        0x00000200      /* set if fs info shared between processes */
#define CLONE_FILES     0x00000400      /* set if open files shared between processes */
#define CLONE_SIGHAND   0x00000800      /* set if signal handlers shared */

int start_thread(void (*fn)(void *), void *data)
{
	long retval;
	void **newstack;

	/*
	 * allocate new stack for subthread
	 */
	newstack = (void **) malloc(STACKSIZE);
	if (!newstack)
		return -1;

	/*
	 * Set up the stack for child function, put the (void *)
	 * argument on the stack.
	 */
	newstack = (void **) (STACKSIZE + (char *) newstack);
	*--newstack = data;

	/*
	 * Do clone() system call. We need to do the low-level stuff
	 * entirely in assembly as we're returning with a different
	 * stack in the child process and we couldn't otherwise guarantee
	 * that the program doesn't use the old stack incorrectly.
	 *
	 * Parameters to clone() system call:
	 *	%eax - __NR_clone, clone system call number
	 *	%ebx - clone_flags, bitmap of cloned data
	 *	%ecx - new stack pointer for cloned child
	 *
	 * In this example %ebx is CLONE_VM | CLONE_FS | CLONE_FILES |
	 * CLONE_SIGHAND which shares as much as possible between parent
	 * and child. (We or in the signal to be sent on child termination
	 * into clone_flags: SIGCHLD makes the cloned process work like
	 * a "normal" unix child process)
	 *
	 * The clone() system call returns (in %eax) the pid of the newly
	 * cloned process to the parent, and 0 to the cloned process. If
	 * an error occurs, the return value will be the negative errno.
	 *
	 * In the child process, we will do a "jsr" to the requested function
	 * and then do a "exit()" system call which will terminate the child.
	 */
	__asm__ __volatile__(
		"int $0x80\n\t"		/* Linux/i386 system call */
		"testl %0,%0\n\t"	/* check return value */
		"jne 1f\n\t"		/* jump if parent */
		"call *%3\n\t"		/* start subthread function */
		"movl %2,%0\n\t"
		"int $0x80\n"		/* exit system call: exit subthread */
		"1:\t"
		:"=a" (retval)
		:"0" (__NR_clone),"i" (__NR_exit),
		 "r" (fn),
		 "b" (CLONE_VM | CLONE_FS | CLONE_FILES | CLONE_SIGHAND | SIGCHLD),
		 "c" (newstack));

	if (retval < 0) {
		errno = -retval;
		retval = -1;
	}
	return retval;
}

int show_same_vm;

void cloned_process_starts_here(void * data)
{
	printf("child:\t got argument %d as fd\n", (int) data);
	show_same_vm = 5;
	printf("child:\t vm = %d\n", show_same_vm);
	close((int) data);
}

int main()
{
	int fd, pid;

	fd = open("/dev/null", O_RDWR);
	if (fd < 0) {
		perror("/dev/null");
		exit(1);
	}
	printf("mother:\t fd = %d\n", fd);

	show_same_vm = 10;
	printf("mother:\t vm = %d\n", show_same_vm);

	pid = start_thread(cloned_process_starts_here, (void *) fd);
	if (pid < 0) {
		perror("start_thread");
		exit(1);
	}

	sleep(1);
	printf("mother:\t vm = %d\n", show_same_vm);
	if (write(fd, "c", 1) < 0)
		printf("mother:\t child closed our file descriptor\n");
}

