#!/usr/bin/perl
use strict;

my %hash;

$hash{bob} = 20;
$hash{dick} = 30;
$hash{harry} = 40;
&test(%hash);

my %hash2 = (lucy => 25, rebecca => 35, charlotte => 45);
&test(%hash2);

sub test {
  my (%hash) = @_;
  foreach my $key (keys %hash) {
    print "$key: $hash{$key}\n";
  }
  print "\n";
}

# It's recommended to pass hashes as references because they can get very large over time.
