#!/usr/bin/perl
use strict;

die "Usage: perl ./hardlinks.pl <filename [filename ...]>\n" if (@ARGV == 0);

foreach (@ARGV) {
  my ($dev, $ino, $mode, $nlinks) = stat($_);
  print "The device and inode numbers for $_ are $dev and $ino, respectively.\n";
  print "There is $nlinks hardlink(s) for $_.\n";
}