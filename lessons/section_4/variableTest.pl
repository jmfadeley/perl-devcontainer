#!usr/bin/perl

$test1 = 1;
print "test1 starts at: ", $test1, "\n";
$test2 = $test1;
{
  $test1 += 4; # Binary assignment operators work for all operator types.
  print "test1 is in block is: ", $test1, "\n"; 
}
print "test1 is now: ", $test1, "\n"; # 5 persists. 
print "test2 is: ", $test2, "\n"; # Still 1. It is value assignment.

$test3 = "steve";
$test3 .= "mike"; # Concatenate operator.
print $test3, "\n";

$test4 = 1;
$test4 .= 2;
print $test4, "\n"; # String 12.

$test5 = 200;
# $test5 x= 2;
print $test5 x=2,"\n"; # Assignment mid use.
print $test5, "\n";

# Swap. How? Could use a temp, but you could just do...
chomp ($a =<STDIN>);
chomp ($b = <STDIN>);

print "a: ", $a, "\t", "b: ", $b, "\n";
$a = $a + $b;
$b = $a - $b;
$a = $a - $b;
print "a: ", $a, "\t", "b: ", $b, "\n";