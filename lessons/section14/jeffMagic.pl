#!/usr/bin/perl
use strict;

my $answer = 'bob';
my $newAnswer;
print "\nBehold as I change 'jeff.txt' to '$answer.txt'.\n";
die "Jeff! Jeff where are you? Crap, not again...\n" if (!-e 'jeff.txt');
rename "jeff.txt", "$answer.txt";

while(1) {
  print "Impressed? Enter another name, else press 'enter' to return him to 'jeff.txt'\n";
  chomp(my $newAnswer = <STDIN>);
  if ($newAnswer) {
    print "$answer.txt! I transform you into $newAnswer.txt! SHAZAM!\n";
    rename "$answer.txt", "$newAnswer.txt";
  } else {
    print "Jeff! Return to us! SHAZAM!\n";
    rename "$answer.txt", "jeff.txt";
    last;
  }
  $answer = $newAnswer;
}