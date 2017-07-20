/*
 * checkconsole.c
 * Taken from UltraPenguin 1.1.9
 */

#include <sys/ioctl.h>
#include <errno.h>

int main(void)
{
	char z;
	
	z = 12;
	if (ioctl(0, TIOCLINUX, &z) < 0)
		exit(1);
	exit(0);
}
