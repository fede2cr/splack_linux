#include <stdio.h>

int
main(int argc, char **argv) 
{
  int i;
  int sflag=1, nflag=0, rflag=0, vflag=0, mflag=0, usage=0;
  int thisopt;
  char me[256];

  while((thisopt=getopt(argc,argv, "amnrsv")) != EOF)
    switch(thisopt) {
    case 'a':
      sflag++; nflag++; rflag++; vflag++; mflag++;
      break;
    case 'm':
      mflag++;
      break;
    case 'n':
      nflag++;
      break;
    case 'r':
      rflag++;
      break;
    case 's':
      sflag++;
      break;
    case 'v':
      vflag++;
      break;
    case '?':
      usage++;
    }

  if (usage)  {
    fprintf(stderr, "usage: uname [-amnrsv]\n");
    exit(1);
  }

  if (mflag | nflag | rflag | vflag)
    sflag--;

  if (sflag)
    printf("SunOS");
  if (nflag) {
    if (sflag)
      putchar(' ');
    gethostname(me, 256);
    printf("%.9s", me);
  }
  if (rflag) {
    if (sflag|nflag)
      putchar(' ');
    printf("4.1.4");
  }
  if (vflag) {
    if (sflag|nflag|rflag)
      putchar(' ');
    printf("2");
  }
  if (mflag) {
    char buf[256];
    char *type, *c;
    int fd;
    
    fd = open("/proc/cpuinfo", 0, 0);
    read(fd, &buf[0], 256);
    c = &buf[0];
    while(1) {
      if(c[0] == 't' && c[1] == 'y' && c[2] == 'p' &&
	 c[3] == 'e')
	break;
      c++;
    }
    
    while(*c++ != ':')
      ;
    while(*c++ != ' ') /* skip that pesky space */
      ;
    type = c;
    while(*c != '\n')
      c++;
    *c = 0;
    
    if (sflag|nflag|rflag|vflag)
      putchar(' ');
    
    printf("%.9s", type);
  }
  putchar('\n');
  exit(0);
}
