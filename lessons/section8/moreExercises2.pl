#!/usr/bin/perl
use strict;

my %menu;
my @items;
my $width;
my $length;

while(<>) {
  chomp;
  $length = length $_;
  if ($length > $width) {
    $width = $length;
  }
  push @items, $_;
}

%menu = @items;

# Because we're reading from the hash, we cannot guarantee order.
while ((my $key, my $value) = each %menu) {
  printf "%${width}s\t\$$value\n", $key;
}