#!/usr/bin/perl

use strict;

my $term;

print "Please enter your search term: \n";
chomp ($term = <STDIN>);

while (<>) {
  if (/$term/) {
    print;
  }
}