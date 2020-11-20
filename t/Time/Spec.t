use strict;
use warnings;
use Test::More;
use Test::Exception;

use Time::Spec;

subtest 'Time::Spec' => sub {
    ok my $spec = Time::Spec->new;
    my $t = time;
    is $spec->tv_sec, $t;
    is $spec->tv_nsec, 0;
    is $spec->time, $t;
};

subtest 'Time::Spec with tv_sec' => sub {
    ok my $spec = Time::Spec->new(tv_sec => 10);
    is $spec->tv_sec, 10;
    is $spec->tv_nsec, 0;
    is $spec->time, 10;
};

subtest 'Time::Spec with tv_nsec' => sub {
    ok my $spec = Time::Spec->new(tv_nsec => 100);
    my $t = time;
    is $spec->tv_sec, $t;
    is $spec->tv_nsec, 100;
    is $spec->time, $t + 0.000000100;
};


subtest 'Time::Spec with tv_sec, tv_nsec' => sub {
    ok my $spec = Time::Spec->new(tv_sec => 10, tv_nsec => 100);
    is $spec->tv_sec, 10;
    is $spec->tv_nsec, 100;
    is $spec->time, 10.000000100;
};

done_testing;
