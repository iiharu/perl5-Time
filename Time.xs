#define PERL_NO_GET_CONTEXT
#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"

#include <time.h>

MODULE = Time		PACKAGE = Time

void
clock_getres(clk_id)
  PPCODE:
{
  clockid_t clk_id = SvIV(ST(0));
  struct timespec ts;
  clock_getres(clk_id, &ts);

  AV* av = (AV*)sv_2mortal((SV*)newAV());

  av_push(av, SvREFCNT_inc(sv_2mortal(newSViv(ts.tv_sec))));
  av_push(av, SvREFCNT_inc(sv_2mortal(newSViv(ts.tv_nsec))));

  SV* sv = sv_2mortal(newRV_inc((SV*)av));

  XPUSHs(sv);
  XSRETURN(1);
}

void
clock_gettime(clk_id)
  PPCODE:
{
  clockid_t clk_id = SvIV(ST(0));
  struct timespec ts;
  clock_gettime(clk_id, &ts);

  AV* av = (AV*)sv_2mortal((SV*)newAV());

  av_push(av, SvREFCNT_inc(sv_2mortal(newSViv(ts.tv_sec))));
  av_push(av, SvREFCNT_inc(sv_2mortal(newSViv(ts.tv_nsec))));

  SV* sv = sv_2mortal(newRV_inc((SV*)av));

  XPUSHs(sv);
  XSRETURN(1);
}

void
clock_settime(clk_id)
  PPCODE:
{
  clockid_t clk_id = SvIV(ST(0));
  struct timespec ts;
  clock_settime(clk_id, &ts);

  AV* av = (AV*)sv_2mortal((SV*)newAV());

  av_push(av, SvREFCNT_inc(sv_2mortal(newSViv(ts.tv_sec))));
  av_push(av, SvREFCNT_inc(sv_2mortal(newSViv(ts.tv_nsec))));

  SV* sv = sv_2mortal(newRV_inc((SV*)av));

  XPUSHs(sv);
  XSRETURN(1);
}
