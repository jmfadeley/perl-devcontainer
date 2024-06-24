#!/usr/bin/perl
use strict;
# Regex is only for matching text. They match or they don't.


# Text is usually in $_.

# Place the regex between forwards lashes.

$_ = "The word regex is short for the prhase, 'regular expression'";

if (/regex/) {
  print "We have regex!\n";
}

my $word = "hello";
if (/$word/) {
  print "okay? Nope.";
}

$_ = "hello";

if (/$word/) {
  print "Yess.\n";
}

# Symbols:
# . - Dot match to any single character except a new line
# * - matches 0 or more occurences of the preceeding character, so .* match to any string.
# + - Match 1 or more of the preceding character.
# ? - Match 0 or 1 occurrences of the preceeding character.
# \ - erases meta character or makes it literal?

# Grouping that putting them within parantheses.

$_ = "Perl is so, so, so, cool!";
if (/Perl is (so,? *)+ cool!/) {
  print "Really...?\n";
}

# To reuse matched patterns, use back references with a backslash and a number.
$_ = "Tennessee";
if (/Te(.)\1e(.)\2(.)\3/) {
  print "Found it.\n";
}