#/!usr/bin/perl

use strict;

print "Are you fit or flabby? If fit, enter a 1, otherwise enter a 0.\n";
chomp (my $fit = <STDIN>);

&pumpIron unless $fit;
print "\nThen keep at it.\n" if $fit;

sub pumpIron {
  
  print "\nHere's your prescription:\n";
  print "\tMon and Fri of week one, work upper body.\n";
  print "\tWed of week one, work legs.\n";
  print "\tMon and Fri of week two, work legs.\n";
  print "\tWed of week two, work upper body.\n";
  print "\tRepeat this two week program for 3 months, then check back with me.\n\n";
}