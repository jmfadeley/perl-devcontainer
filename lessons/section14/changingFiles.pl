#!/usr/bin/perl
use strict;

$^I = ".bak"; # Starts undefined, but when given a value, it gives the diamond operator
# special powers. 

while (<>) {
  s/perl/Perl/g;
  print;
}