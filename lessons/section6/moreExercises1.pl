#!/usr/bin/perl

$answer = 'y';
while ($answer eq 'y' || $answer eq 'Y') { # Remember, string not number comparator.
  $number = &getNumber;
  $divisor = &getDivisor($number);
  if ($divisor == -1) {
    print "$number is a prime number. $number and 1 are as good as it's going to get.\n";
  } else {
    print "The smallest divisor of $number is $divisor.\n";
  }
  print "Want to run this again? (y/n)\n";
  chomp($answer = <STDIN>);
  print "\n";
}

sub getNumber {
  print "Give the number you wish to find the smallest divisor for:\n";
  chomp($number = <STDIN>);
  $number; # Could also say return before this.
}

sub getDivisor {
  my $number = shift @_;
  if ($number % 2 == 0) {
    return 2;
  }
  $divisor = sqrt($number);
  $counter = 3;
  while ($counter <= $divisor) {
    if ($number % $counter == 0) {
      return $counter;
    }
    $counter +=1;
  }
  -1; # No value found.
}

