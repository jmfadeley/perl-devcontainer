#!/usr/bin/perl

use strict;

my $lineno = 1;
while (<>) {
  if (/([a-zA-Z])\1/) {
    print "$lineno - $_"; # Auto nl from the incoming file.
  } 
  $lineno += 1;
}
print "\n";