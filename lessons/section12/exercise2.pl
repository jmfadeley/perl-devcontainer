#!/usr/bin/perl
use strict;

# I dislike this structure but I am doing the exercise anyway.
my @secEast = ("SEC East", "Florida", "Georgia", "Kentucky", "Missouri", 
  "South Carolina", "Tennesee", "Vanderbilt");
my @secWest = ("SEC West", "Alabama", "Arkansas", "Auburn", "LSU", "Mississippi State", "Ole Miss", "Texas A&M");

my @sec = (\@secEast, \@secWest);

print "${$sec[0]}[0]\n";


my @big10East = ("Big 10 East", "Penn State", "Ohio State", "Michigan", "Indiana", "Maryland", "Michigan State", "Rutgers");
my @big10West = ("Big 10 West", "Wisconsion", "Iowa", "Nebraska", "Minnesota", "Northwestern", "Illinois", "Perdue");

my @big10 = (\@big10East, \@big10West);

my @d1 = (\@sec, \@big10); 


foreach my $conference (@d1) {
  foreach my $division (@{$conference}) { # Anonymous ref.
    print "${$division}[0]\n";
    for (my $i = 1; $i <= $#$division; $i++) { # Length of division.
       print "\t$$division[$i]\n";
    }
  }
  print "\n";
}