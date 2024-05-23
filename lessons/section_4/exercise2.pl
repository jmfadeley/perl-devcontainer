#!/usr/bin/perl

print "Please enter a number.\n";
chomp ($arg1 = <STDIN>);
print "Please enter another number.\n";
chomp ($arg2 = <STDIN>);

if ($arg1 > $arg2) {
  print "$arg1 is greater.\n";
} elsif ($arg1 < $arg2) {
  print "$arg2 is greater.\n";
} else {
  print "They are equal.\n";
}