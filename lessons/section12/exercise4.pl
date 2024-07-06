#!/usr/bin/perl
use strict;
my @accAtlantic = ( "Clemson", "Louisville", "Florida State", "NC State", "Wake Forest", "Syracuse", "Boston College");
my @accCoastal = ( "Virginia Tech", "North Carolina", "Miami", "Pittsburgh", "Georgia Tech", "Virginia", "Duke");
my %acc = ("ACC Atlantic" => \@accAtlantic, "ACC Coastal" => \@accCoastal);

my @big10East = ( "Penn State", "Ohio State", "Michigan", "Indiana", "Maryland", "Michigan State", "Rutgers" );
my @big10West = ( "Wisconsin", "Iowa", "Nebraska", "Minnesota", "Northwestern", "Illinois", "Perdue");
my %big10 = ( "Big10East" => \@big10East, "Big10West" => \@big10West );

my @big12Teams = ( "Big 12", "Oklahoma", "Oklahoma State", "West Virginia", "Kansas State", "TCU", "Texas", "Texas Tech", "Baylor", "Iowas State", "Kansas" );
my %big12 = ( "Big12 Teams" => \@big12Teams );

my @conferenceUSAeast = ( "Western Kentucky", "Old Dominion", "Middle Tennessee", "Florida Intl", "Charlotte", "Florida Atlantic", "Marshall" );
my @conferenceUSAwest = ( "Louisiana Tech", "Texas San Antonio", "Southern Mississippi", "North Texas", "Rice", "UTEP" );
my %conferenceUSA = ( "Conference USA East" => \@conferenceUSAeast, "Conference USA West" => \@conferenceUSAwest );

my @secEast = ( "Florida", "Georgia", "Kentucky", "Missouri", "South Carolina", "Tennessee", "Vanderbilt" );
my @secWest = ( "Alabama", "Arkansas", "Auburn", "LSU", "Mississippi State", "Ole Miss", "Texas A&M" );
my %sec = ( "SEC East" => \@secEast, "SEC West" => \@secWest );

my %d1 = ( "ACC" => \%acc, "Big10" => \%big10, "Big12" => \%big12, "Conference USA" => \%conferenceUSA, "SEC" => \%sec );

foreach my $conference (keys %d1) {
  print "Conference: $conference\n";
	foreach my $division (keys %{$d1{$conference}}) {
		print "\tDivision: $division\n";
		for (my $i = 0; $i <= $#{${$d1{$conference}}{$division}}; $i++) {
			print "\t\t${${$d1{$conference}}{$division}}[$i]\n";
		}
	}
	print "\n";
}
