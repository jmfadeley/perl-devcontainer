#!/usr/bin/perl

@family = qw(Bill Sarah Jonny); # Oh spaces are not needed for qw.
print "\@family = @family\n";

# To get the last index, just change @ for $#.
print "last index = $#family\n"; # Zero based.
print "last member = @family[$#family]\n";

@numbers = (0..9);
print $numbers[5], "\n";
print @numbers[5], "\n"; # It seems either works in this case.
$sum = $numbers[5] + $numbers[9];
print $sum, "\n\n";

$fourBills= $family[0]x4;
print $fourBills, "\n";

# Reverse.
@numbers2 = (1..5);
@reverseNumbers = reverse(@numbers2);
print @reverseNumbers, "\n";

@numbers3 = (2,3,5,4,4,1);
@sortedNumbers = sort(@numbers3); # Parenthesis don't matter for function calls.
print @sortedNumbers, "\n";

