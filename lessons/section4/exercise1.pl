#!/usr/bin/perl

print "Enter a number.\n";
chomp($arg1 = <STDIN>);
print "Enter another number.\n";
chomp($arg2 = <STDIN>);

print "$arg1 + $arg2 = ", $arg1 + $arg2, "\n";
print "$arg1 - $arg2 = ", $arg1 - $arg2, "\n"; 
print "$arg1 / $arg2 = ", $arg1 / $arg2, "\n"; 
print "$arg1 * $arg2 = ", $arg1 * $arg2, "\n"; 
print "$arg1 % $arg2 = ", $arg1 % $arg2, "\n"; 
print "$arg1 . $arg2 = ", $arg1 . $arg2, "\n"; 
print "$arg1 x $arg2 = ", $arg1 x $arg2, "\n"; 