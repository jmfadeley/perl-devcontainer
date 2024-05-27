#!/usr/bin/perl

@numbers = reverse(1..25);

foreach $even(@numbers) {
  if ($even % 2 == 0) {
    print $even,  " ";
  }
}

print "\n";

foreach $odd(@numbers) {
  if ($odd % 2 == 1) {
    print $odd, " ";
  }
}

print "\n";