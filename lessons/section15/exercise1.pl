#!/usr/bin/perl
use strict;

my $word = "Supercalifragilisticexpialidocious";
my $curIndex = index($word, "i", 0); 
my $count = $curIndex > -1 ? 1 : 0;
# I don't like that the teacher's approach skips first letter.

print "The letter 'i' is found in $word at the following locations: \n";
while ($curIndex > -1) {
  print "Found: $curIndex.\n";
  $curIndex = index($word, "i", $curIndex + 1); 
  
  $count++ if ($curIndex>0);
}

print "Total number of i's: $count.\n";