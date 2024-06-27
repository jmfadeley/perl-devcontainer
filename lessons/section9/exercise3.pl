#!/usr/bin/perl
use strict;

my $term;
my $modifier;

if ($ARGV[0] eq "-i") { # This is assuming the first argument is -i
  $modifier = 1;
  shift @ARGV; # Removes the argument.
}

$term = shift @ARGV; # Removes and stores the search term.

if ($modifier == 1) {
  while(<>) {
    if (/ $term/i) { # Without the space, you could get "driver"
      print;
    }
  }
} else {
  while(<>) {
    if (/ $term/) {
      print;
    }
  }
}

print "\n";

