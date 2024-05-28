#!/usr/bin/perl

@numbers = (1..25);

@numbers2 = reverse(@numbers);

while(($index, $value) = each @numbers) {
  print "Index $index.\t", $value * @numbers2[$index], "\n";
}

print "\n";
