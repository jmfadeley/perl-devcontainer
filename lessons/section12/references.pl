#!/usr/bin/perl
use strict;

# A reference is a pointer to the memory location to a data structure in Perl.
# Similar to C.
# Will be an array or hash.

# To create one, place a backslash before an array or hash
# \@names 
# \%looneyTunes;

my @grades = qw(97 83 100 62 78 85 72 93 89 65); # Create array.
my $grades = \@grades; # Creates and assigns reference. 

if (@{$grades} == @grades) {
  print "The first grade is ${$grades}[0]\n"; # Dereference.
}

# To access, you dereference.
my @numbers = (1..10);
my $arrayRef = \@numbers; 

print"$numbers[2]\n"; # Same as below.
print "${$arrayRef}[2]\n"; # Same as above.

print "$$arrayRef[3]\n" # Scalar ref, but only works if it is simple. This is important.