#!/usr/bin/perl

use strict;

# Approach A.
# my $input;
# my @inputResults;
# while($input = <STDIN>) {
#   push @inputResults, $input;
# }

# print reverse @inputResults; # Works.

# Approach B.

# my $input;
# my @inputResults;
# while($input = <STDIN>) {
#   push @inputResults, $input;
# }
# my $total = @inputResults;
# while($total > 0) { # Also works.
#   print "@inputResults[$total-1]";
#   $total--;
# }

# Instructor's approach.
print "\nEnter lines of input. Once you're finished, enter ctrl-d if you're on a Linux/Unix host.\n";
print "Enter ctrl-c if you're on a Windows machine.\n";

foreach(reverse <>) { # This is readline of ARGV. 
  print; # If ARVG is blank, this reads lines through STDIN. Otherwise, it reads files.
}