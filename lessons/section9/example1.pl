#!/usr/bin/perl

use strict;

my $lineno = 1; # As in, line number.
while (<>) {
  print "$lineno) ";
  if (/Te(.)\1e(.)\2(.)\3|Mi(.)\4i(.)\5i(.)\6i/) { 
    print; # Think this just uses the $_ oh it does.
  } else {
    print "\n";
  }
  $lineno+= 1;
}
print "\n";

# Perl .* gets any string that has "Perl" in it.
# /Perl is (so,? ?)+ cool!/
# . can replace any character but would just return everything on its own.

# /Te(.)\1e(.)\2(.)\3/ What we're saying here is to match any character however many times.

# Back references uses \# where 1, 2, 3 are the group you are replacing. 
# But a new format goes \g{N} is more readable when dealing with numbers.
# IE matching on 777-9311?
# /(.)17-93(.)\2/
# Or more readably: /(.)g{1}7-93(.)/g{2}/

# | is the or symbol.
# .* and|or .* with file 2.
# /Te(.)\1e(.)\2(.)\3|Mi(.)\4i(.)\5(.)\6i/

# There are also character classes, a list of possible pattern matches enclosed in square
# brackets. Only one of these characters will match.
# /[0123456789]/ will match a single number.
# /[0-9]/ same as above but the hyphen gives a range.

# A carat ^ negates what's between the square brackets 
# ie [^0-9] says it should NOT be a number

# Further symbols:
# \d - same as \[0-9]\ but for a single number
# /\d+/ - match any decimal number 
# \s matched whitespace ie \f\t\n\r
# w - matched /[a-zA-Z0-9]/ # Word character class

# /a to the end of the match operator to match ascii. This is because unicode is now
# a thing to match against.
# ie /\d+-\d+/a could match 777-9311

# Shortcut for negation of these is just to capitalize them
# \D - Match to any non-digit character, same as /[^0-9]
# \S - Match to any non-white space character ie /[^\f\t\n\r]
# \W - Match [^a-zA-Z0-9_]
# Finally [\d\D] will match any character, any digit or any non digit.