#!/usr/bin/perl

use strict;

my $lineno = 1;
while(<>) {
  print "$lineno) ";
  if (/Te(.)\1e(s)\2(.)\3/) { # If using
    print;
  } else {
    print "\n";
  }
  $lineno += 1;
}

print "\n";