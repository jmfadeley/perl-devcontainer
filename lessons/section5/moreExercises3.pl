#!/usr/bin/perl

$value;
$highest;

while($value = <STDIN>) {
  chomp $value;
  if ($value > $highest) {
    $highest = $value;
  };
}

print "The highest value you input is: $highest.\n";