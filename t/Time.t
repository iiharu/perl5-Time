# Before 'make install' is performed this script should be runnable with
# 'make test'. After 'make install' it should work as 'perl Time.t'

#########################

use strict;
use warnings;

use Test::More;
BEGIN { use_ok('Time', ':all') };

#########################

# Insert your test code below, the Test::More module is use()ed here so read
# its man page ( perldoc Test::More ) for help writing this test script.

is CLOCK_REALTIME, 0;
is CLOCK_MONOTONIC_RAW, 4;
is CLOCK_MONOTONIC_RAW_APPROX, 5;
is CLOCK_MONOTONIC, 6;
is CLOCK_UPTIME_RAW, 8;
is CLOCK_UPTIME_RAW_APPROX, 9;
is CLOCK_THREAD_CPUTIME_ID, 16;
is CLOCK_PROCESS_CPUTIME_ID, 12;

done_testing;
