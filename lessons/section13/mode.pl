#!/usr/bin/perl
use strict;

die "Usage: perl ./mode.pl <filename [filename ...]>\n" if (@ARGV == 0);

foreach (@ARGV) {
  my ($dev, $ino, $mode, $nlink, $uid, $gid, $rdev, $size, $atime, $mtime, $ctime, $blksize,
    $blocks) = stat($_);
  
  printf "Mode in octal = %o. This is equivalent to the file's permissions.\n", $mode;
  printf "Mode in binary = %b. Each bit above is equivalent to 3 digits here, starting from the right.\n", $mode;
  printf "Mode in hex = %X.\n", $mode;

  if ($mode & 000001) { # These are octal numbers, but equivalent in binary to 001.
    print "$_ is world executable.\n";
  }

  if ($mode & 000002) { #010 in binary.
    print "$_ is world writable.\n";
  }

  if ($mode &000004) { #100 in binary.
    print "$_ is world readable.\n";
  }

  if ($mode & 000010) { #1000 in binary
    print "$_ is group executable.\n";
  }

  if ($mode & 000020) { #10000 in binary.
    print "$_ is group writable.\n";
  }

  if ($mode &000040) { #100000 in binary.
    print "$_ is group readable.\n";
  }
}