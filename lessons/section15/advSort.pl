#!/usr/bin/perl
use strict;

my @numbers;
# numbers before letters, uppercase before lower.

foreach my $num(1..20) {
  $numbers[$num-1]=int(rand(20));
}

print "@numbers\n";
@numbers = sort @numbers;
print "ASCII sorted: @numbers\n"; # Note this goes wrong because it's numbers.
# Sort sorts in ASCII order.

# Other approach.
# @numbers = (1..40);
# foreach(sort @numbers) {
#   print "$_\n";
# }

# Instead use a subroutine that can be injected into sort.
sub ascend_by_num {
  if ($a < $b) {
    {-1}
  } elsif ($a > $b) {
    {1}
  } else {
    {0}
  }
}

sub descend_by_num {
  if ($a < $b) {1} elsif ($a > $b) {-1} else {0};
}

# This is sort ascending shortcut, called the spaceship operator.
sub spaceship_operator { $a<=> $b } # Numbers only.
# To do the same with characters:
# sub by_char { $a cmp $b }

@numbers = sort ascend_by_num @numbers;
print "Subroutine ascending sorted: @numbers\n"; 
@numbers = sort descend_by_num @numbers;
print "Subroutine descending sorted: @numbers\n"; 

@numbers = sort spaceship_operator @numbers;
print "Spaceship sorted: @numbers\n"; 

foreach my $num(1..20) {
  $numbers[$num-1]=int(rand(20));
}

# You could also just...
print "One liner ascending: ";
foreach (sort {$a<=>$b} @numbers) {
  print "$_ ";
}
print "\n";

# You could also just...
print "One liner descending: ";
foreach (sort {$b<=>$a} @numbers) {
  print "$_ ";
}
print "\n";