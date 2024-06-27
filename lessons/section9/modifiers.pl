#!/usr/bin/perl

use strict;

# Using multiple modifiers.
$_ = "Peter Piper picked \na peck of pickled peppers";

if (/ peter .* peppers/isx) { # Match on case insensitivity, newlines, and ignore space in pattern
  print "Peter sure picked em.\n";
}

# You can also use Anchors.

# \A anchors pattern to start of string.

$_ = "Nanny is Nanny and I call her Nan...";

if (m{\A(Nanny) is.*\1}) { # Matches. In the demo, he forgot .*
  print "$_\n";
}

# Likewise Z looks at the absolute end, no \n after using it. 

if(m{\A(nan).*\1.*\1.*\z}i) {
  print "And at the end...\n";
}
# \Z Optional \n after it.

$_ = "Nanny is Nanny and I call her Nan...\n";
if(m{\A(nan).*\1.*\1.*\Z}i) {
  print "And at the end again...\n";
}

# There were original symbols. \A was ^ and \Z was $

$_ = "Start, then go until the end";

if(/^Start/) {
  print "Match on start.\n";
}

if (/end$/) {
  print "And voila.\n";
}

# More anchors.
# \b - word boundary anchor, whre a word contains letters, underscores and/or numbers

$_= "We grow and flourish";
if (/we\b/i) {
  print "Okay...?\n";
}

$_= "Weeds grow and flourish";
if (/we\b/i) {
  print "You won't see me...\n";
}

# \B matches where \b won't
if (/we\B/i) {
  print "SURPRISE!\n";
}

