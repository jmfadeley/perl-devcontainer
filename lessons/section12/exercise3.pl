#!/usr/bin/perl
use strict;

my @secEast = ("Florida", "Georgia", "Kentucky", "Missouri", "South Carolina", "Tennesee", "Vanderbilt");
my @secWest = ("Alabama", "Arkansas", "Auburn", "LSU", "Mississippi State", "Ole Miss", "Texas A&M");
my %sec = ( SEC_East => \@secEast, SEC_West => \@secWest, );

my @big10East = ("Penn State", "Ohio State", "Michigan", "Indiana", "Maryland", "Michigan State", "Rutgers");
my @big10West = ("Wisconsion", "Iowa", "Nebraska", "Minnesota", "Northwestern", "Illinois", "Perdue");
my %big10 = ("Big10 East" => \@big10East, "Big10 West" => \@big10West);

my @accAtlantic =("Clemson", "Louisville", "Florida State", "NC State", "Wake Forest", "Syracuse", "Boston College");
my @accCoastal = ("Virginia Tech", "North Carolina", "Miami", "Pittsburgh", "Georgia Tech", "Virginia", "Duke");
my %acc = ("ACC Atlantic" => \@accAtlantic, "ACC Coastal" => \@accCoastal);

my %d1 = ( sec => \%sec, big10 => \%big10, acc => \%acc);

foreach my $conference (keys %d1) { # Returns a list of keys.
  print "Conference: $conference\n";
  foreach my $division (keys %{$d1{$conference}}) { # Get the key's return, deref it, then get the keys.
    print "\tDivision: $division\n";
    for (my $team = 0; $team < $#{${$d1{$conference}}{$division}}; $team++) {
      print "\t\t${${$d1{$conference}}{$division}}[$team]\n";
    }
  }
  print "\n";
}