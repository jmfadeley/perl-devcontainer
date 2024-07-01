#!/usr/bin/perl

use strict;
$_= "Programmers program in Perl to solve their problems.";
if (m/(program).*/i) {
# It would have to backtrack all they the way to "program."
  print "1) That matched ($`)($&)($')\n";
}; # Greedy match. The .* ran through everything so there's nothing for \1

# ? makes it non-greedy.
if (m/(program).*?/i) { # Matches as few characters as possible and more efficient.
  print "2) That matched ($`)($&)($')\n";
}
# Other options:
# *?
# +?
# ??
# {2,7}?

$_ = "All Programmers program in Perl to solve their problems.";

if (m/[a-zA-Z ]*program/i) {
  print "3) That matched ($`)($&)($')\n";
}

# You get double matching on "program" so output is:
# That matched ()(All Programmers program)( in Perl to solve their problems.)

# Non-greedy, stops after first matching.
if (m/[a-zA-Z ]*?program/i) {
  print "4) That matched ($`)($&)($')\n";
}

# Goes back to "program."
if (m/[a-zA-Z ]*(program.*)/i) {
  print "5) That matched ($1)\n";
}

# Stops on first match "Programmers program..." and takes that.
if (m/[a-zA-Z ]*?(program.*)/i) {
  print "6) That matched ($1)\n";
}

# Goes back to "program."
if (m/([a-zA-Z ]*)(program.*)/i) {
  print "7) That matched ($1) and ($2)\n";
}

# Stops on first match "Programmers program..." and takes that.
if (m/([a-zA-Z ]*?)(program.*)/i) {
  print "8) That matched ($1) and ($2)\n";
}
