#!/usr/bin/perl

use strict;

# The forward slashes we use are shortcuts for m/ which stands for pattern match.
# m/pattern/ is the same as /pattern/
# You can use different delimiters with `m//` like...
# m<http://> which is much more clear than /http:\/\//
# Also m/stuff/ is the same as m%stuff% and m{stuff}, just different delimiters.
# It's easier to read sometimes.

# $movie = "Avengers";
# m/$movie/ = the same as "Avengers"

# Further MODIFIERS for matching:
# i - Makes machine insensitive.
# /Perl/i = hits "perl","PeRl", etc.

# s - makes match of newlines
# /.*/s - Matches any string AND the newlines \n
# \N - Matches everything EXCEPT \n, so you could remove all newlines by...

$_ = "any string \n of characters \n including \n newlines";
if (/any.*including\N/s) {
  print; 
}

print "\n";

# X - causes Perl to ignore whitespace in a pattern

$_ = "Tennessee";
if (/Te (.)\1 e (.)\2 (.)\3/x) {
  print "$_\n";
}

$_ = "Peter Piper picked a peck of pickled peppers.";

if (m|Peter|) {
  print "That matched!\n";
}

$_ = "https://optimalcomputersinc.com";
if (m<https://>) {
  print "This too, will match.\n";
}
