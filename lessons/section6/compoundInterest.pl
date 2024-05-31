#!/usr/bin/perl
use strict; # Basically screams at you for not writing your "my" name on everything...

my $answer = "y";
while ($answer eq "y" || $answer eq "Y") {
  (my $principal, my $intRate, my $num, my $years) = &getInfo;
  my $value = &compoundInterest($principal, $intRate, $num, $years);

  print "\nThe value of your investment after $years will be $value.\n\n";
  print "Would you like to run another compound interest calculation (y/n)?\n";
  chomp ($answer = <STDIN>);  
}

sub getInfo {
  print "What is the principal investment amount (P), the initial deposit or loan amount?\n";
  chomp (my $principal = <STDIN>);
  print "What is the annual interest rate, as a decimal (r)?\n";
  chomp (my $intRate = <STDIN>);
  print "What is the number of times that interest is compounded per year (n)?\n";
  chomp (my $num = <STDIN>);
  print "What is the number of years the money is invested or borrowed for (t)?\n";
  chomp (my $years = <STDIN>);
  ($principal, $intRate, $num, $years);
}

sub compoundInterest {
  # print "Number of entries in \@_ array is $#_\n"; # Technically +1 but whatever.
  my $P = shift @_;
  my $r = (shift @_)/100; # Remember that we need to make it a proper percentage.
  my $n = shift @_;
  my $t = shift @_;

  $P*(1+$r/$n)**($n*$t); # No need for assignment, the result is returned.
}
