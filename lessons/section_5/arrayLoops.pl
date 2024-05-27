#!/usr/bin/perl

foreach $number(1,2,3,4,5) {
  print "$number\n";
}

@numbers = 1..5; # You don't need paranthesis here but it looks nicer.
foreach $number(@numbers) {
  print"$number\n";
}

@numbers = (0..9);

# Each returns index and value. When it gets to 10, it returns false, ending it.
while(($index, $num) = each @numbers) { 
  print "$index $num\n";
}



