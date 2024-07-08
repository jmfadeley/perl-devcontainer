#!/usr/bin/perl
use strict;

die "Usage: perl ./size2.pl <filename [filename...]>" if (@ARGV == 0);

foreach (@ARGV) {
  my ($dev, $ino, $mode, $nlink, $uid, $gid, $rdev, $size, $atime, $mtime, $ctime, $blksize,
    $blocks) = stat($_);
  printf "The size of $_ using the '-s' file test is %g bytes.\n", -s; # %g guesses what's right.
  print "The size of $_ use stat's \$size is $size bytes.\n";
  print "The ideal I/O blocksize used for $_ is $blksize and the number of 512 byte blocks used for $_ is $blocks.\n";
}
