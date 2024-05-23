#!/usr/bin/perl

print "Enter a number. \n";
chomp($arg = <STDIN>);

print "$arg + $arg = ", $arg += $arg, "\n";
print "$arg * $arg = ", $arg *= $arg, "\n";
print "$arg . $arg = ", $arg .= $arg, "\n";