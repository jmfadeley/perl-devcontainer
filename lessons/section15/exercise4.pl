#!/usr/bin/perl
use strict;

my @numbers = (0..40);

# foreach my $entry (0..40) {
#   $numbers[$entry] = int(rand(40));
# }

print "Ascending: ";
foreach(sort {$a<=>$b} @numbers) {
  print "$_ ";
}
print "\n";

print "Descending: ";
foreach(sort {$b<=>$a} @numbers) {
  print "$_ ";
}
print "\n";