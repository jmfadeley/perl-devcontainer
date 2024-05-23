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
chomp ($a = <STDIN>);
chomp ($b = <STDIN>);

print "a: ", $a, "\t", "b: ", $b, "\n";
$a = $a + $b;
$b = $a - $b;
$a = $a - $b;
print "a: ", $a, "\t", "b: ", $b, "\n";



# Precendence: Does it follow order of operations?
print 4+3*7, "\n";
# Yes. This gets 25. PEDMAS.

# Associativity: Does it go left to right or right to left when applicable?
print 4**3**2, "\n"; # 4096 or 262144? The answer is 262144. (4^9);
# This is handled correctly.

# man perlop could walk you through it. But Docker has minized and removed this.
# Or just go to https://perldoc.perl.org/perlop

# Just use paranthesis to control precendence and associativity if needed.

print ((4+3)*7, "\n"); # You either have to put the whole thing in parenthesis
# or a variable and use that, or else Perl thinks you just want to print that section.
# this includes the new line.
print ((4**3)**2, "\n");

print (4+(6/2), "\n");