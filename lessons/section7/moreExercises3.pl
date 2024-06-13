#!/usr/bin/perl

use strict;
my $i = 1;
my @array;
while ($i++ <= 20) {
  my $random_number = int(rand(20)) +1;
  push @array, $random_number;
}

print "12345678901234567890\n";

foreach(@array) {
  # When using a variable for the spacing, use brackets for clarity, 
  # my $format = $_; # Then you could declare this ie: `%${format}d`
  printf "%${_}d\n", $_; # This is simplier but not as clear. 
}