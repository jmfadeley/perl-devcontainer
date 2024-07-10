#!/usr/bin/perl
use strict;

# index command lets you look up the index of a string.

my $stringOne = "When we're hungry, love will keep us alive, love.";
my $stringTwo ="hungry";
my $stringThree = "love";
my $stringFour = "zero";

print index($stringOne, $stringTwo), "\n";

# Can also take a third argument for the starting point of a search.
print index($stringOne, $stringThree, 15), "\n";
print index($stringOne, $stringThree, 20), "\n";

# You can also start the search from the right side with rindex
print rindex($stringOne, $stringThree), "\n";

# -1 for nothing.
print index($stringOne, $stringFour), "\n";