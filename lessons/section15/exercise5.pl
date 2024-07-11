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
    if(/^[A-Z]?\d+/) {
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

# # if (ch_A == ch_B) {
# #   sec_A to sec_B
# # } else {
# #   ch_A to ch_B
# # }

# # Chap-Sect
sub sort_order {

  (my $a1, my $a2) = split /\-/, $a;
  (my $b1, my $b2) = split /\-/, $b;

  # Ah ha, a use case for xor!
  if ($a1 =~ /^X/ xor $b1 =~/^X/) { # right is an X.
    $a1 cmp $b1;
  } elsif ($a1 =~ /^\d/ and $b1 =~ /^\d/) { # both numbers, condense and reuse logic.
    if ($a1 == $b1) {
      $a2 <=> $b2;
    } else {
      $a1 <=> $b1;
    }
  }  elsif ($a1 =~/^X/ and $b1 =~/^X/) { # both Xs, strip and check.
    $a1 =~ s/^X(\d+)/$1/;
    $b1 =~ s/^X(\d+)/$1/;
    if ($a1 == $b1) {
      $a2 <=> $b2;
    } else {
      $a1 <=> $b1;
    }
  }

  # if (substr($a1, 0, 1) eq 'X' and substr($b1, 0, 1) eq 'X') {
  #   my $as = substr($a1, 1, 1);
  #   my $bs = substr($b1, 1, 1);
  #   $as <=> $bs;
  # } elsif (substr($a1, 0, 1) eq 'X' or substr($b1, 0, 1) eq 'X') {
  #   $a1 cmp $b1;
  # } elsif ($a1 == $b1) {
  #   $a2 <=> $b2;
  # } else {
  #   $a1 <=> $b1;
  # }
}