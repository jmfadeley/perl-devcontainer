#!/usr/bin/perl

use strict;

print "Enter an integer between 10 and 20.\n";
chomp (my $seed = <STDIN>);

my $num = int(rand($seed)); # Rand returns a decimal, int rounds it.
my $tries = 0;
print "Guess a number in the range of 0 to $seed.\n";

# print "Debug: $num\n";
while (1) { # While using the below chomp line as the condition, it can be cheated with CTRL+D.
  chomp(my $guess=<STDIN>); # Putting it here instead keeps CTRL+D from bypassing.
  $tries++;
  $guess == $num ? last : print "Nope.\n";
}
print "Correct! It took you ", $tries == 1 ? "just one try!" : "$tries tries!", "\n";