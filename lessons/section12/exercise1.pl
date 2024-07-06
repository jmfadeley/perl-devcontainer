#!/usr/bin/perl
use strict;

my @secEast = ("SEC East", "Florida", "Georgia", "Kentucky", "Missouri", 
  "South Carolina", "Tennesee", "Vanderbilt");
my @secWest = ("SEC West", "Alabama", "Arkansas", "Auburn", "LSU", "Mississippi State", "Ole Miss", "Texas A&M");


my @sec = (\@secEast, \@secWest);

my @big10East = ("Big 10 East", "Penn State", "Ohio State", "Michigan", "Indiana", "Maryland", "Michigan State", "Rutgers");
my @big10West = ("Big 10 West", "Wisconsion", "Iowa", "Nebraska", "Minnesota", "Northwestern", "Illinois", "Perdue");

my @big10 = (\@big10East, \@big10West);

my @accAtlantic = ( "ACC Atlantic", "Clemson", "Louisville", "Florida State", "NC State", "Walke Forest", "Syracuse", "Boston College");
my @accCoastal = ( "ACC Coastal", "Virginia Tech", "North Carolina", "Miami", "Pittsburgh", "Georgia Tech", "Virginia", "Duke");

my @acc = (\@accAtlantic, \@accCoastal);
my @d1 = (\@sec, \@big10, \@acc);

print "\nIn the $d1[0]->[0]->[0] conference, $d1[0]->[0]->[1] is the first team alphabetically.\n";

# print "\n In the ${${$d1[1]}[1]}[0] conference, ${${$d1[1]}[1]}[2] is the second team alphabetically.\n";
print "\nIn the $d1[1]->[1]->[0] conference, $d1[1]->[1]->[2] is the second team alphabetically.\n";