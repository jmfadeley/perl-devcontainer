#!/usr/bin/perl
use strict;

die "Could not open 'hashList.'txt'" if !(-e 'hashList.txt');
@ARGV = qw (hashList.txt);

my %grades;

while(<>) {
  if (/(\w*)\t(\d*)/) {
    $grades{$1} = $2;
  } 
}


# Alternatively just...
# my %grades = (
#   Jane=>92,
#   William=>92,
#   Evan=>90,
#   Leanne=>88,
#   Johnny=>83,
#   Sharon=>80,
# );

# foreach my $key (keys %students) {
#   print "$key = $students{$key}\n";
# }

foreach (sort desc_hash_values keys %grades) {
  print "$_\t $grades{$_}\n";
}
print "----\n";
foreach (sort asc_hash_values keys %grades) {
  print "$_\t $grades{$_}\n";
}

# Descending!
sub desc_hash_values {
  $grades{$b} <=> $grades{$a}
}
sub asc_hash_values {
  $grades{$a} <=> $grades{$b}
}