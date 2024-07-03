#!/usr/bin/perl
use strict;

# && and
# || or

my $youreHappy = 1;
my $youKnowIt = 0;

if (($youreHappy) && ($youKnowIt)) {
  &clapYourHands;
}

if (($youreHappy) || ($youKnowIt)) {
  &stompYourFeet;
}

# Can be used to assign.

my $first;
my $value = $first || (2+3);
print "$value, because \$first is undefined. \n";

my $weight = 190;
my $goal = 180;

if ($weight > $goal && &diet) { # and replaces && in comparisons
  print "Sweat && walk it out!\n";
}

if ($weight > $goal and &diet) { # and replaces && in comparisons
  print "Sweat AND walk it out!\n";
}

if ($weight < $goal || &diet) { # or replaces || in comparisons
  print "Sweat || walk it out too!\n";
}

if ($weight < $goal or &diet) { # or replaces || in comparisons
  print "Sweat OR walk it out too!\n";
}

if (($weight > $goal) && (&diet)) { # and replaces && in comparisons
  print "Sweat and walk it out more clearly!\n";
}

my $newValue = $first or (2+3);

print "$newValue, because 'or' doesn't work here. \n";

sub clapYourHands {
  print "Clap clap!\n";
}

sub stompYourFeet {
  print "Stomp stomp!\n";
}

sub diet {
  170
}