#!/usr/bin/perl
use strict;

# When we match on groups, we can actually break those groupings apart.

$_ = "Spinach is Popeye's favorite food.";
if (/^(\w+)\s+.*\s(\w+).$/) { # Match variables are used AFTER the regex has matched a string.
  print "Popeye ate his favorite $2 for dinner -- $1.\n";
}

$_ = "Tennessee";
if (/Te(.)\1e(.)\2(.)\3/) { # Back refs are used WITHIN the regex to help match a string.
  print "$3 to the $2 to the $1\n";
}

# Match variables persist until next successful match. Might be something to watch 
# out for when doing loops. Most matches are used in if or while loops, so that's why 
# you need to be careful.

# To solve this, there are non-capture parentheses used with (?:)

$_ = "My shoes are brown.";

if (/My\s+(?:tennis)?shoes.*\s(\w+)/) {
  print "Your shoes are $1\n";
}

# Perl provides 3 automatic match variables, each with a weird name:
# $` - contains the portion of the string BEFORE match.
# $& - contains the portion that the string matched.
# $' - contains the portion of the string after the match.

$_= "one two three";
if(/\s\w+\s/) { # Gets the word with two spaces on either side.
  print "Before match: ($`)\nMatch: ($&)\nAfter match: ($')\n";
}