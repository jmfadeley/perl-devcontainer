#!/usr/bin/perl


if ('happiness' gt 'depression') {
  print "Happy!\n";
} elsif ('happiness' gt 'sadness') {
  print ":(\n";
} else {
  print "Sure...\n";
}

# Comparators and numerical compariators are as follows. They return true or false:
# lt OR < Less than
# le OR <= Less than or equal to
# gt OR > Greater than
# ge OR >= Greater than or equal to
# eq OR == Equal
# ne OR != Not equal

# Like with JavaScript, a non-zero (including negatives) is true, and 0 is false. 
# String zeros also count.

$arg1 = -10; # Switch to 1 or 0.

if ($arg1) {
  print "Woo!\n";
} else {
  print "Boo!\n";
}