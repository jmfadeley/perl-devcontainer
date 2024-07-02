#!/usr/bin/perl
use strict;

# Equivalent to if(!), opposite of if.

my $full = "false";

unless($full eq "true") {
  print "Eat!\n";
}
if ($full eq "true") {
  print "Stop!\n";
}

# Can use the else clause;

my $cat = 1;

unless ($cat) {
  print "Why?\n";
} else {
  print "Here kitty^2.\n";
}

# Until, opposite of while. Executes until condition is true.

my $cat = 0;
my $dog = 1,000;

until ($cat >= $dog) {
  $cat = $cat +1;
} 
print "Done with long loop.\n";

# They can be used as expression MODIFIERS.

$cat = 0;
$dog = 10;
print "Dogs are great!\n" if $dog > $cat;
$cat += 3 until $cat >= $dog;
print "You have $cat cats...?\n";

&eatFood if $full;

sub eatFood {
  print "Yum!\n";
} 

# Only one expression is allowed.