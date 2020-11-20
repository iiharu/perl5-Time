package Time::Spec;

use strict;
use warnings;
use Carp;

sub new {
    my ($class, @args) = @_;

    my %args = ref $args[0] eq 'HASH' ? %{ $args[0] } : @args;

    my $self = {};

    for my $key (keys %args) {
        if ($key eq 'tv_sec' or $key eq 'tv_nsec') {
            croak "Invalid Argument $key" if $args{$key} !~ qr/\d+/;
            $self->{$key} = $args{$key};
        } else {
            croak "Invalid Argument $key";
        }
    }

    $self->{tv_sec} ||= time;
    $self->{tv_nsec} ||= 0;

    bless $self, $class;

    $self;
}

sub tv_sec {
    my $self = shift;
    $self->{tv_sec};
}

sub tv_nsec {
    my $self = shift;
    $self->{tv_nsec};
}

sub time {
    my $self = shift;
    $self->tv_sec + $self->tv_nsec * 10 ** -9;
}

1;
