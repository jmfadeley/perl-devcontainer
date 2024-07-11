#!/usr/bin/perl
use strict;

# sprintf returns the string of what would otherwise look like a printf, thus you can 
# treat it like a variable.

my $amount = sprintf "%4.2f.\n", 3.241383994;
print "Your total is \$$amount";

# More info: https://perldoc.perl.org/functions/sprintf