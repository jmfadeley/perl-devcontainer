#!/usr/bin/perl

# & sigil is for routines, which are user-defined functions.
# They can start with eltters and/or underscores.
# They can contain letters, digits, udnerscores.
# Start with & sigil, but can sometimes be left off. Easier just to leave it on.
# Can be placed anywhere in your program.

#Invoke like `&getInfo;`
# Always has a return value, the last expression evaluated. If not collected, this 
# in the void context.

# Passing arguments goes lke `&compoundInterest($principal, $intRate, $num, $years)`
# Arguments are held in the @_ array in the subroutine.
# $_[0] == $principal
# $_[1] == $intRate
# $_[2] == $int
# $_[3] == $years

# Determine length with scalar of the array.
# $argLength = @_;

# Or you could use the special indice $#_;
# $numEntries = $#_ + 1;
# print "The number of entries in the \@_ array is $numEntries\n";

# Or just...
# foreach $arg(@_){
#   statements;
# }

# The `my` operator makes variables private to the enclosing block, ie:
# sub compoundInterest {
#  my $P = shift;
#  my $r = shift;
#  my $r = $r/100;
#  my $n = shift;
#  my $t = shift;
#  $P*(1 + $r/$n)**($n*$t);
# }

sub getNumbers {
  print "What number would you like to count from? \n";
  chomp ($startingNum = <STDIN>);

  print "What number would you like to count to? \n";
  chomp ($endingNum = <STDIN>);

  ($startingNum, $endingNum); # Last statement is always the return.
}

sub countNumbers {
  # $_[0] # While this works, this isn't clear.
  # $_[1] # Again, even if this provides endingNumber.

  my $startingNum = shift @_;
  my $endingNum = shift @_;

  print "\n";
  while ($startingNum <= $endingNum) {
    print "$startingNum\n";
    $startingNum += 1;
  }
}

# @results = &getNumbers;
# &countNumbers(@results);
($num1, $num2) = &getNumbers; # Destructures it.
&countNumbers($num1, $num2);