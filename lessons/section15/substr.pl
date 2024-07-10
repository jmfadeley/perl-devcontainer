#!/usr/bin/perl
use strict;

my $word = "Supercalifragilisticexpialidocious";
my $sub = substr ($word, 5, 4);

print "\u$sub... FORNIA!\n";

$sub = substr($word, index($word, "fr"), 4);

print "Tele-$sub ya.\n";

# Only two commands starts at the beginning.

$sub = substr($word, 14);
print "$sub.\n";