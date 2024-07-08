#!/usr/bin/perl
use strict;

die "Usage: perl ./size.pl <filename, [filename, ...]>" if (@ARGV == 0);

foreach (@ARGV) {
  # print "The size of $_ is ", -s," bytes big.\n";
  print "$_\n" if (-s > 1000);
}