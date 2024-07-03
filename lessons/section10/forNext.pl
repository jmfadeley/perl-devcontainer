#!/usr/bin/perl
use strict;

my $i = 0;
$_ = 0;
print "Enter numeric value:\n";
while (<>) {
  chomp(my $num = $_);
  print "Going to $_\.\n";
  for ($i = 0; $i <= $num; $i++) {
    if ($i == 2) {
      print "double the fun\n";
      next;
    } else {
      print "$i\n";
    }
  }
  print "\n\$i is $i. Enter new value:\n"; # You were skipping i == 7 because of postincrement.
  last if $i>=7; # Affects only while loop.
}