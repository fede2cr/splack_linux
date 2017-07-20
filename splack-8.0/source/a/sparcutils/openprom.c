/* (C) 1996 Derrick J. Brashear (shadow@dementia.org) 
 * This is distributed under the GNU General Public License, version 2 or 
 * later. However, I'm willing to be accomodating if that's not useful to you.
 *
 * make openprom should work. This doesn't do oem-logo and security foo 
 * It tries to look like the SunOS version.
 */
#undef DEBUG

#include <sys/types.h>
#include <sys/param.h>
#include <stdio.h>
#include <fcntl.h>
#include <asm/openpromio.h>

typedef union {
  struct openpromio op_array;
  char buf[OPROMMAXPARAM];
} prom_buffer;

static int openprom_fd;
static char *openprom_dev;

static void
openprom_open(int oflag)
{
  if ((openprom_fd = open(openprom_dev,oflag)) < 0) {
    printf("cannot open %s\n", openprom_dev);
    exit (1);
  }
}

static void
openprom_close()
{
  if (close(openprom_fd) < 0) {
    printf("close error on %s\n", openprom_dev);
    exit (1);
  }
}

static void
print_one_var(char *var)
{
  prom_buffer myprom_buffer;
  struct openpromio *opp = &(myprom_buffer.op_array);
  
  (void)strcpy(opp->oprom_array, var);
  opp->oprom_size = OPROMMAXPARAM - 36;
  
  if ((ioctl(openprom_fd,OPROMGETOPT,opp) < 0) || opp->oprom_size < 0) {
    (void)printf("%s: data not available.\n", var);
  } else {
    if (opp->oprom_size == 0) {
      *opp->oprom_array = 0;
      (void)printf("%s=\n", var);
    } else {
      (void)printf("%s=%s\n", var, opp->oprom_array);
    }
  }
}

static void
dump_all_vars()
{
  prom_buffer myprom_buffer;
  struct openpromio *opp = &(myprom_buffer.op_array);
  
  openprom_open(O_RDONLY);
  
  memset(myprom_buffer.buf, 0, OPROMMAXPARAM);
  while (1) {
    opp->oprom_size = 32;
    
    if (ioctl(openprom_fd,OPROMNXTOPT,opp) < 0) {
      printf("OPROMNXTOPT failed\n");
      exit(1);
    }
    
    if (opp->oprom_size == 0) {
      openprom_close();
      return;
    }
    print_one_var(opp->oprom_array);
  }
}

static void
get_put_one_var(char *var)
{
  prom_buffer myprom_buffer;
  struct openpromio *opp = &(myprom_buffer.op_array);
  int varlen = 0;
  char *val;
  
  val = (char *)strchr(var, '=');
  
  if (val == NULL) {
    openprom_open(O_RDONLY);
    print_one_var(var);
  }
  else {
    *val++ = '\0';
    varlen = strlen(var) + 1;
#ifdef DEBUG
    printf("var %s val %s\n", var, val);
#endif    
    openprom_open(O_RDWR);
    (void)strcpy(opp->oprom_array, var);
    (void)strcpy(opp->oprom_array + varlen, val);
    opp->oprom_size = varlen + strlen(val);

    if (ioctl(openprom_fd, OPROMSETOPT, opp) < 0) {
      (void)printf("%s: invalid property.\n", var);
    }
  }
  openprom_close();
}

int
main(int argc, char **argv)
{
  int c;
  extern char *optarg;
  extern int optind;
  
  openprom_dev = "/dev/openprom";
  
  while ((c = getopt(argc, argv, "f:")) != -1)
    switch (c) {
    case 'f':
      openprom_dev = optarg;
      break;
    default:
      printf("Usage: %s [-f prom-device] [variable[=value] ...]\n");
      exit (1);
    }
  if (optind >= argc) {
    dump_all_vars();
    exit(0);
  }
  
  while (optind < argc) {
    if (strcmp(argv[optind], "-") == 0) {
      int c;
      char *nl, line[OPROMMAXPARAM];
      
      while (fgets(line, sizeof line, stdin) != NULL) {
	if (nl = (char *)strchr(line, '\n'))
	    *nl = 0;
	else
	  while ((c = getchar()) != '\n' && c != EOF);
	get_put_one_var(line);
      }
      clearerr(stdin);
    }
    else
      get_put_one_var(argv[optind]);
    
    optind++;
  }
  exit (0);
}
