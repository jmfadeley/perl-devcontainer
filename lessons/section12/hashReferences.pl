#!/usr/bin/perl
use strict;

# So Perl can use auto-vivification to create automatic arrays or hashes when reading files in.
# When we dereference a non-existent array or hash, Perl automatically creates the data structure.

my %d1;

my $conference;
my $division;

if (@ARGV < 1) {
  print "perl ./hashReferences <d1conferences_file>\n";
  die;
}

while (<>) {
  if (/^Conference,(.*)/){
    $conference = $1;
    # print "$conference\n";
  } elsif (/^Division,(.*)/) {
    $division = $1;
    # print "$division\n";
  } elsif (/^Teams,(.*)/) {
    # print "@team\n";
    push @{$d1{$conference}{$division}}, split /,/, $1;
    # or just `@{$d1{$conference}{$division}} = split /,/, $1;`
  }
}

&printConferenceInfo(\%d1);

sub printConferenceInfo {
  for $conference (keys %d1) {
    print "Conference: $conference\n";
    for $division (keys %{$d1{$conference}}) {
      print "\tDivision: $division\n";
      for (my $team = 0; $team < $#{${$d1{$conference}}{$division}}; $team++) {
        print "\t\t${$d1{$conference}}{$division}[$team]\n";
      }
    }
  }
}
