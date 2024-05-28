#!/usr/bin/perl

@numbers = (1..100);
$sum = 0;
foreach $number(@numbers) {
  print "$number + ";
  $sum += $number;
}
print "0 = $sum\n";