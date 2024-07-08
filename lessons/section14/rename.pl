#!/usr/bin/perl
use strict;

if (@ARGV != 2) {
  print "./rename.pl <original_filename> <new_filename>\n";
  exit;
}

my $newfile = pop @ARGV; # Pop works on the end.
my $originalfile = pop @ARGV;

rename $originalfile, $newfile or die "Couldn't rename $originalfile: $!";