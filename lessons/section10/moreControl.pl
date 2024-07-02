#!/usr/bin/perl
use strict;

# Brackets linmit the scope of my variables.

my $outer = "mango";

{
  my $inner = "apple";
  print "$inner\n";
  print "$outer\n";
  $outer = "banana?";
  
  print "\U$outer\n";
}
# print "$inner\n"; # Does not exist now. It is a completely different variable.
print "$outer\n"; # Changes persist. ALONG WITH THE HORRORS!


# Autoincrement and autodecrements:

my $count = 0;
print "count: $count\n";

$count++;
print "count: $count\n";

my $nextCount = $count++; # post increments, increases AFTER nextCount assignment
print "post inc nextCount: $nextCount\n"; 
print "post inc count: $count\n";

my $nextCount = ++$count; # Preincrement happens BEFORE.
print "pre inc nextCount: $nextCount\n"; 
print "pre inc count: $count\n";

$count--;
print "de inc count: $count\n";