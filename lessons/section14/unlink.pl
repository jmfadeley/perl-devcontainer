#!/usr/bin/perl
use strict;

print "This program will delete a file it's given. You've been warned, perhaps too late.\n";
if (@ARGV != 1) {
  print "./unlink.pl <filename>\n";
  exit;
}

my $file = pop @ARGV;
unlink $file or die "Couldn't unlink $file: $!";