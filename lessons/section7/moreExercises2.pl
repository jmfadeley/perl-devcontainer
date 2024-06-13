#!/usr/bin/perl

use strict;

print "Enter a series of strings, each on a separate line.\n\n";

# Original approach. Works but verbose.
# my $input;
# my @inputLines;
# while($input = <STDIN>) {
#   push @inputLines, $input;
# }

# my $counter = 0;
# my $count = 0;
# while ($counter < 4) {
#   if ($count < 10) {
#     print $count;
#     $count++;
#   } else {
#     $counter++;
#     $count = 0;
#   }
# }

# print"\n";
# foreach my $line(@inputLines) {
#   printf "%25s", $line;
# }

my @lines;
while(<>) {
  chomp;
  push @lines, $_;
}

print "0123456789012345678901234567890123456789\n";
foreach(@lines) {
  printf"%25s\n", $_;
}