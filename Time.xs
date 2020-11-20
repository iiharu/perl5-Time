#define PERL_NO_GET_CONTEXT
#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"

#include <time.h>

MODULE = Time		PACKAGE = Time

int
clock_getres(clk_id)
PPCODE:
{
  clockid_t _clk_id = SvIV(ST(0));
  struct timespec *_res;
  clock_getres(_clk_id, _res);
}
  
