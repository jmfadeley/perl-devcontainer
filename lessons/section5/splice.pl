#!/usr/bin/perl
@numbers = (1..12);
print "\@numbers = @numbers\n"; # Don't comma space out the variables for easier reading.

# shift @numbers;
# unshift @numbers, "partridge";
splice @numbers, 1, 1, "patridge";

print "\@numbers = @numbers\n";

splice (@numbers, 4, 1, "golden rings");

print "\@numbers = @numbers\n";

# pop @numbers;
# push @numbers, "drummers drumming";

splice @numbers, 11, 1, "drummers drumming";

print "\@numbers = @numbers\n";

splice @numbers, 0, 12, 1..12;
print "\@numbers = @numbers\n";
