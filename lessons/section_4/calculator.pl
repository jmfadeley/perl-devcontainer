#!/usr/bin/perl

$run = true;


while ($run) {
  print "Please enter values: \n";
  chomp ($arg1 = <STDIN>); # Variable assignment, based on standard in. Chomp will automatically removes new line.
  # print "$arg1\n";
  if ($arg1 eq 'q' || $arg1 eq 'Q') { # eq for strings, == is numeric, non-zero
    exit;
  }

  $operator = <STDIN>; # Operators can be whatever. It's duck typing. You can also calculate or assign other variables. 
  chomp $operator; # Chomp can be on another line if you want. This is just to illustrate that. 
  # print "$operator\n"; 
  if ($arg1 eq 'q' || $arg1 eq 'Q') { 
    exit;
  }

  $arg2 = <STDIN>;

  if ($arg1 eq 'q' || $arg1 eq 'Q') {
    exit;
  }

  if ($operator eq '+') {
    $result = $arg1 + $arg2;
  } elsif($operator eq '-') {
    $result = $arg1 - $arg2;
  } elsif($operator eq '*') {
    $result = $arg1 * $arg2;
  } elsif($operator eq '/') {
    $result = $arg1 / $arg2;
  } elsif($operator eq '**') {
    $result = $arg1 ** $arg2;
  } elsif($operator eq '%') {
    $result = $arg1 % $arg2;
  } elsif($operator eq '.') { # Remember that this is a string operator.
    $result = $arg1 . $arg2;
  } elsif($operator eq 'x') { # Ditto.
    $result = $arg1 x $arg2;
  } # Note that if you loop around, $result does not reset.


  print "= $result\n\n\n",
}