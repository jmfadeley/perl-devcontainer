#!/usr/bin/perl

# Protip you can use an asterisk after a letter or set of letters to get matching cases. 
# ie perl ./daysSinceMod.pl d* e* f* t*
# Or even just * to get all files in the current directory.
use strict;
if (@ARGV == 0) {
  print "Usage: perl ./daysSinceMod.pl <filename [filename]...>\n";
  die;
}

foreach (@ARGV) {
  # print "$_ was modified ", -M, " days ago.\n";
  printf "$_ was modified %.2f days ago.\n", -M;
}