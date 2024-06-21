#!/usr/bin/perl

use strict;

my %sb_champs = ("1967" => "Green Bay",
                 "1968" => "Green Bay",
                 "1969" => "New York Jets",
                 "1970" => "Kansas City");

print "$sb_champs{'19'.'69'}\n";

# Now to loop it.

while ((my $year, my $team) = each %sb_champs) { # Each iterates over a hash and returns the k/v.
	print "In $year, the Super Bowl champion was $team.\n";
}
