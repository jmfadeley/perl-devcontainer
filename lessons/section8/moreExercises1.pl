#!/usr/bin/perl
use strict;

my %menu;
my @items;
my $length;
my $width;

while(<>) {
  chomp;
  $length = length $_;
  if ($length > $width) {
    $width = $length;
  }
 push @items, $_;
}

%menu = @items;

# Without sort, the order is not guaranteed as it is a hash.
# You can do this with foreach because it uses the keys like an array, so
# order counts. 
foreach my $key (sort keys(%menu)) {
  printf "%${width}s\t\$$menu{$key}\n", $key;
}