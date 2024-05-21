#!/usr/bin/perl

chomp ($arg1 = <STDIN>); # Variable assignment, based on standard in. Chomp will automatically removes new line.
print "$arg1\n";
$operator = <STDIN>; # Operators can be whatever. It's duck typing. You can also calculate or assign other variables. 
chomp $operator; # Chomp can be on another line if you want. This is just to illustrate that. 
print "$operator\n"; 
$arg2 = <STDIN>;

print "$arg2\n";
print "= ",