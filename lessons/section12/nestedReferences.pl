#!/usr/bin/perl
use strict;

my @secEast = ("Florida", "Georgia", "Kentucky", "Missouri", 
  "South Carolina", "Tennesee", "Vanderbilt");
my @secWest = ("Alabama", "Arkansas", "Auburn", "LSU", "Mississippi State", "Ole Miss", "Texas A&M");

my @sec = (\@secEast, \@secWest);

print "${$sec[0]}[0]\n";


my @big10East = ("Penn State", "Ohio State", "Michigan", "Indiana", "Maryland", "Michigan State", "Rutgers");
my @big10West = ("Wisconsion", "Iowa", "Nebraska", "Minnesota", "Northwestern", "Illinois", "Perdue");

my @big10 = (\@big10East, \@big10West);

my @d1 = (\@sec, \@big10);  # Remember that d1 is an array, NOT a reference. This is important.

print "$d1[0]\n"; # \@sec ref
print "{$d1[0]}[0]\n"; # \@secEast ref
print "${${$d1[0]}[0]}[0]\n"; # Florida

print "Confused why it doesn't print the array? It's because it's references.\n";
print "@secEast\n";
print "vs...\n";
print \@secEast, "\n";
print "But!\n";
print "@secEast[4]\n";
print "vs...\n";
print ${\@secEast}[4], "\n";

# This is confusing. But there's a way to simplify it with:
# ${REFERENCE}[$x] can be rewritten as REFERENCE->[$x] so...
print "$d1[0]->[0]\n"; # Same as ${$d1[0]}[0].
print "$d1[0]->[0]->[0]\n"; # Same as ${${$d1[0]}[0]}[0].

# There is a simpler way than this:
# Here's another way to deref. Say we want Ohio State in Big 10 East.
print "$d1[1][0][2]\n"; # Works because it's an array already. 

# Anonymous references, which can even be created automatically.
# Basically instead of doing...
# @numbers = (1..10);
# $ref = \@numbers;
# ... you could just do:

my $ref = [1..10]; # Remember, this is a ref, not an array.
print "TEST TEST: ${$ref}[2]\n";

# Likewise has would be...
# % hash = (
#   Bugs=> "Bunny", 
#   Tasmanian=>"Devil",
#   Elmer=>"Fudd"
# );
# $hashRef =\%hash;

# Or just...
my $hashRef = { Bugs=> "Bunny", Tasmanian=>"Devil", Elmer=>"Fudd"}; # This is a ref, not a hash.
print "${$hashRef}{'Bugs'}\n"; # If you were to put this in a hash, you could access it like $hash{'hashRef'}{'Bugs'}


# It's [] for anonymous array ref and {} for anonymous hash ref.
# So to do the same thing as @big10 and @sec above with the @acc conference.
my @acc = (
  ["ACC Atlantic", "Clemson", "Louisville", "Florida State", "NC State", "Wake Forest", "Syracuse", "Boston College"],
  ["ACC Coastal", "Virginia Tech", "North Carolina", "Miami", "Pittsburgh", "Georgia Tech", "Virginia", "Duke"]
  ); # These are anonymous arrays.

push @d1, \@acc;

print "$d1[2][0][5]\n";

my %d1Hash = ( # Hash of...
  "sec" => { # Refs...
    "east" => ["Florida", "Georgia", "Kentucky", "Missouri", "South Carolina", "Tennesee", "Vanderbilt"],
    "west" => ["Alabama", "Arkansas", "Auburn", "LSU", "Mississippi State", "Ole Miss", "Texas A&M"],
  }, 
  "big10" => {
    "east" => ["Penn State", "Ohio State", "Michigan", "Indiana", "Maryland", "Michigan State", "Rutgers"],
    "west" => ["Wisconsion", "Iowa", "Nebraska", "Minnesota", "Northwestern", "Illinois", "Perdue"],
  },
  "acc" => {
    "atlantic" => ["Clemson", "Louisville", "Florida State", "NC State", "Wake Forest", "Syracuse", "Boston College"],
    "coastal" => ["Virginia Tech", "North Carolina", "Miami", "Pittsburgh", "Georgia Tech", "Virginia", "Duke"],
  },
  "accArray" => \@acc, # Array.
);

# Don't forget you could also assign like...
# $ticker_to_co{appl} = "Apple Inc.";

print "BEHOLD! $d1Hash{'sec'}{'west'}[1]\n";
print "BEHOLD! $d1Hash{'acc'}{'coastal'}[5]\n";
print "BEHOLD ARRAY! $d1Hash{'accArray'}[0][1]\n";