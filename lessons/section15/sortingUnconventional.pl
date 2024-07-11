#!/usr/bin/perl
use strict;

# Pseudocode:
# a-b values for comparison. X-Y.
# If X and X are the same, then we'd look at Y and Y. 
# Otherwise we compare just X vs X.
# split command to break them up?

my @entries; 

if (@ARGV == 1 and "$ARGV[0]" =~ /listOf(Numerical)?Values/) {
  while (<>) {
    if(/^\d+/) {
      push @entries, $_;
    }
  }
} else {
  print "Usage: perl ./sortingUnconventional.pl <listOfNumericalValues.txt | listOfValues.txt> \n";
  exit;
}

foreach(sort sort_order @entries) {
  print "$_";
}

# if (ch_A == ch_B) {
#   sec_A to sec_B
# } else {
#   ch_A to ch_B
# }

# Chap-Sect
sub sort_order {

  (my $a1, my $a2) = split /\-/, $a;
  (my $b1, my $b2) = split /\-/, $b;

  if ($a1 == $b1) {
    $a2 <=> $b2;
  } else {
    $a1 <=> $b1;
  }
}