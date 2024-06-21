#!/usr/bin/perl
use strict;

my $i = 0;
my %menu; # As a hash.
my @items; # As an array.

# Off the bat, the best way I can think of is to do a counter where you 
# check if the line is odd or even, storing to a scalar if odd
# and using said scalar as the key to the even's value. Gonna see what the
# solution is. 
while(<>) { # Diamond operator reads each line.
  chomp;
  $items[$i++] = $_; # Stores as an array, interesting.
}

# Apparently it looks like you can convert an array to a hash with this?
%menu = (@items); 
# The () makes it a list, and when assigning lists to a hash,
# the hash automagically alternates k/v for each value.
# See an example in interpolation.pl

while ((my $item, my $price) = each %menu) {
  print "The price of a $item is \$$price.\n";
}