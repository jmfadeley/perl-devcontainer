#!/usr/bin/perl

print "There are ", 268, " days until the election.\n\n";

@array = qw(one two three four);
print "@array\n\n";
print @array;

# Can be used as a function, and perl will treat it as such before printing.
print ("\n"."\n"."hot"."inHere"."\n");

# Ditto as above.
print (3+4);
print "\n";

$color = "red";
$number = 7;

# Formatting.
printf "Wow! You have %5g pairs of %s shoes!\n", $number, $color;
printf "You got %5g or %-5g pairs!\n", $number, $number;

printf "You got %5s or %-5s pairs!\n\n", $color, $color;
# Formatting options:
# %s - strings
# %g - guesses what's right, like floating point, integer, etc for numbers
# %d - decimal numbers
# %f - floating point numbers. Using a number between the symbols will round digits.
# A number between % and the argument will cause justification 
# based on whether it's positive or negative.

$float = 25.27359211058724;

printf "Do the thing %5f and the thing %-5f\n\n", $float, $float; #Rounding.
printf "Do the thing %20f and the thing %-20f\n\n", $float, $float; 
printf "And cents %5.2f and %-5.2f\n\n", $float, $float; # For decimal limits. 

$float = 5.33623164;
printf "Do the thing %5.2f and the thing %-5.2f\n\n", $float, $float; #Rounding. 
printf "Do the thing %.2f and the thing %.2f\n\n", $float, $float; # You don't need the 5.
printf "Do the string %5s and the string %-5s\n\n", $float, $float; #No rounding.