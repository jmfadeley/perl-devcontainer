#!/usr/bin/perl
use strict;

my %ticker_to_co;

$ticker_to_co{"appl"} = "Apple Inc.";

# They interpolate between " quotes.
print "appl = $ticker_to_co{appl}\n";

print "%ticker_to_co\n"; # No interpolation.

my %sb_champs=("1967", "Green Bay", "1968", "Green Bay", "1969", "New York Jets", "1970", "Kansas City");

print "\n\nThe 1968 super bowl champions were ";
print "$sb_champs{1968}\n";
print "\n\n";

print "All the winners were were ";
print "%sb_champs\n";
