#!/usr/bin/perl
use strict;

# =~ binds, giving you freedom to use something besides $_

print "Is it hot, cold, or warm where you are?\n";

chomp(my $temp=<STDIN>);
if ($temp=~/hot/) {
  print "It's getting hot in here.\n";
} elsif ($temp=~/cold/) {
  print "Brrrr...\n";
} else {
  print "Just right or complete nonsense.\n";
}