#!/usr/bin/perl

# Arrays are 0 based but can contain any number of scalars.

# List Literal.
# Assigned to Arrays in one of two ways. To variables direct:
($mom, $dad, $son) = ("Bill", "Sarah", "Johnny");

# Or to an array. You can do the above or use qw so you can skip quotes.
@family = qw ( Bill Sarah Johnny ); # Note the spaces between parantheses.

@toTen = (1,2,3,4,5,6,7,8,9,10); # One way.
@rangeToTen = (1..10); # Identical to above but uses range operator. Syntactical sugar.

print @family, "\n";

# Push and pop. Push adds values onto an array and pop takes the values off the end.

push @family, "Laura";
print @family[3], "\n";
print @family, "\n";
$youngest = pop @family;
print @family, "\n";
print $youngest, "\n";

# Shift and unshift are for the beginning.

print "\nShifts!\n";
$oldest = shift @family;
print @family, "\n";
print $oldest, "\n";
unshift @family, "Grandma";
print @family, "\n";

# Splice lets us deal with the middle.
# Takes up to 4 arguments but only 2 are needed.
# 1- Array you will operate on.
# 2- Position in array to start op at. If this is all you give, it will do all.
# 3- Specify a length.
# 4- Can provide a replacement list.

@numbers = (1,2,5,7,9);
print "Numbers: ", @numbers, "\n\n";
@others = splice @numbers, 2;
print "\n Splice position 2:\n";
print @numbers, "\n";
print @others, "\n\n";

@numbers = (1,2,5,7,9);
@others = splice @numbers, 2, 2; # Note that Splice is RETURNING values.
print "\n Splice position 3:\n";
print @numbers, "\n";
print @others, "\n\n";

@numbers = (1,2,5,7,9);
@others = splice @numbers, 2, 3, 3..9;
print "\n Splice position 4:\n";
print @numbers, "\n";
print @others, "\n\n";