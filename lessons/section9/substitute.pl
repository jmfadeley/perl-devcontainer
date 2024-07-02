#!/usr/bin/perl
use strict;

# Up until now, we've just been matching. We can also substitute with s///.

$_ = "Popeye's favorite food is Spinach.";

s/spinach/broccoli/;
print "1) $_\n";

# Modifiers can also be used.
$_ = "Popeye loves\nspinach and Olive Oyl.\n";

s/oyl/oil/ix;
print "2) $_\n";

s/olive oil/more spinach/i;
print "3) $_\n";

s/^spinach/Olive Oyl/m; # The m causes matching line by line in a string. So ^ and $ work.
print "4) $_\n";

s/spinach.$/Olive Oyl./m; # Note periods!
print "5) $_\n";

s/Olive Oyl/squash/g; # Global matches ALL lines.
print "6) $_\n";

# You can use whatever for a delimiter.
# s!pattern!replacement!
# s<pattern><replacement>

my $veggie = "potato";
$veggie =~ s/pot/tom/;

print "7) $veggie\n";

$_="all caps";
s/(.*)/\U$1/; # Now all caps. \U affects all characters after it.

print "8) $_\n";


$_="LOWER CASE\n";
s/(.*)\s+(.*)\n/\L$1 \E$2/; # L to lower case. \E ends \U, \L Affects.

print "9) $_\n";

# Caps U and L are for the entire capture section, lower case for 

$_= "mr. mike masters";
s/(.*\b)\.\s(.*\b)\s(.*\b)/\u$1\. \u$2 \u$3/g;
print "10) $_\n";

s/(.*\b)/\l$1/g;
print "11) $_\n";