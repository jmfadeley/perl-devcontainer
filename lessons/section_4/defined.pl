#!/usr/bin/perl

$var = 5; # Comment this out to test the below.
while ($var) { # Returns false because not defined.
  # print "Hello.\n";
  print $var--, "\n"; # Countdown to zero, which stops while loop.
}

if (!defined ($sar)) { # ! Not symbol returns opposite. Defined checks if it exists.
  print "\$sar is empty.\n";
} else { 
  print "\$sar = $sar.\n";
}