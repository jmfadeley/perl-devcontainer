#!/usr/bin/perl
use strict;

if (@ARGV == 0) {
  print "Usage: perl ./exercise3.pl <filename>\n";
  exit;
}

my $number;
while(<>) {
  # if (/(\d.\d*)/g) {
  #   print $1,"\n";
  # }
  chomp;
  my $amount = substr($_, index($_, 3), rindex($_, 6) + 1 - index($_, 3));
  $amount = sprintf "%5.2f\n", $amount;
  print "\$amount = $amount";
}