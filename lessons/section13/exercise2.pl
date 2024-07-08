#!/usr/bin/perl
use strict;

die "Usage: perl ./exercise2.pl <filename [filename ...]>" if (@ARGV == 0);

foreach (@ARGV) {
  if (-d) {
    print "$_ is a directory.\n";
  } elsif (-f) {
    print "$_ is a plain file.\n";
  } elsif (-l) {
    "$_ is a symbolic link.\n";
  } elsif (-S) {
    print "$_ is a socket.\n";
  } elsif (-p) {
    print "$_ is a named pipe.\n";
  } elsif (-b) {
    print "$_ is a block-special file.\n";
  } elsif (-c) {
    print "$_ is a character-special file.\n";
  }
}