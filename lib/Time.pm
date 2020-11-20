package Time;

use 5.024003;
use strict;
use warnings;

use constant {
    CLOCK_REALTIME => 0,
    CLOCK_MONOTONIC_RAW => 4,
    CLOCK_MONOTONIC_RAW_APPROX => 5,
    CLOCK_MONOTONIC => 6,
    CLOCK_UPTIME_RAW => 8,
    CLOCK_UPTIME_RAW_APPROX => 9,
    CLOCK_THREAD_CPUTIME_ID => 16,
    CLOCK_PROCESS_CPUTIME_ID => 12,
};

require Exporter;

our @ISA = qw(Exporter);

our %EXPORT_TAGS = (
    'all' =>
    [ qw(
            CLOCK_REALTIME
            CLOCK_MONOTONIC_RAW
            CLOCK_MONOTONIC_RAW_APPROX
            CLOCK_MONOTONIC
            CLOCK_UPTIME_RAW
            CLOCK_UPTIME_RAW_APPROX
            CLOCK_THREAD_CPUTIME_ID
            CLOCK_PROCESS_CPUTIME_ID
    ) ] );

our @EXPORT_OK = ( @{ $EXPORT_TAGS{'all'} } );

our $VERSION = '0.01';

require XSLoader;
XSLoader::load('Time', $VERSION);

# Preloaded methods go here.

1;
__END__
# Below is stub documentation for your module. You'd better edit it!

=head1 NAME

Time - Perl extension for blah blah blah

=head1 SYNOPSIS

  use Time;
  blah blah blah

=head1 DESCRIPTION

Stub documentation for Time, created by h2xs. It looks like the
author of the extension was negligent enough to leave the stub
unedited.

Blah blah blah.

=head2 EXPORT

None by default.



=head1 SEE ALSO

Mention other useful documentation such as the documentation of
related modules or operating system documentation (such as man pages
in UNIX), or any relevant external documentation such as RFCs or
standards.

If you have a mailing list set up for your module, mention it here.

If you have a web site set up for your module, mention it here.

=head1 AUTHOR

yasuharu.iida, E<lt>yasuharu.iida@localE<gt>

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2020 by yasuharu.iida

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself, either Perl version 5.24.3 or,
at your option, any later version of Perl 5 you may have available.


=cut
