#!/usr/bin/perl
use strict;

for (my $i =0; $i < 10; $i++) {
  print "$i\n";
}

print "End first loop.\n";

# IMPORTANT: Perl determines if you're running a for or foreach by the number of
# SEMICOLONS in the parantheses. Two - for, zero - foreach.

# Loop controls.

print "\nEnter a word, \"whatever\" to end:\n";
while ($_ = <STDIN>) {
  if (/whatever/) {
    s/whatever/anything/i;
    print "$_\n";
    last; #ends looping.
  } else {
    &doStuff;
  }
  &doMoreStuff; # If last, won't be called.
}

my $i = 0;
$_ = 0;
print "Enter numeric value:\n";
while (<>) {
  chomp(my $num = $_);
  print "Going to $_\.\n";
  for ($i = 0; $i <= $num; $i++) {
    if ($i == 2) {
      print "double the fun\n";
      next;
    } else {
      print "$i\n";
    }
  }
  print "\n\$i is $i. Enter new value:\n"; # You were skipping i == 7 because of postincrement.
  last if $i>=7; # Affects only while loop.
}

sub doStuff {
  print "Do Stuff!\n";
}

sub doMoreStuff {
  print "Do More Stuff?\n";
}

# next - immediate starts next interation of loop
# redo - jumps back to beginning of the loop without going to the next iteration

# Finally ternary operator.

my $one = 1;
my $two = 2;
my $name = $one > $two ? "Brad": "Steven"; # False, so will be Steven.
print "name: $name\n";
my $nickname = $one < $two ? "Brad" : "Steven"; # True so will be Brad.
print "nickname: $nickname\n";

# Ternary Can create "case" like structures:
my $activityLevel = 2;

my $activityFactor = 
  ($activityLevel == 1 ) ? 1.2 :
  ($activityLevel == 2 ) ? 1.375 :
  ($activityLevel == 3 ) ? 1.55 :
  ($activityLevel == 4 ) ? 1.725 :
  ($activityLevel == 5 ) ? 1.9 :
  1.375; # Default of 2.

print "activityFactor: $activityFactor\n";