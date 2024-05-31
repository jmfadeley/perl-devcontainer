#!/usr/bin/perl

@randomNumbers;

foreach $num(1..10) { # Could use $_ instead of $num but why.
  @randomNumbers[$num]= int(rand(10));
}

foreach $num(@randomNumbers) {
  print "$num "; # First is always blank because the above skips 0-base.
  print "*" x $num, "\n"; # You could "while" loop this but this is more elegant.
}
