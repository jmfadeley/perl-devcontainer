#!/usr/bin/perl
use strict;

# *  . and ? are quantifiers
# * - matches 0 or more of the previous character 
# . - matches a single character
# ? - matches 0 or 1 of the previous characters
# Other quantities of matches can be specified with:
# {number, number}
$_ = "The little girl screamed,\"wee\" as she slid down the sliding board.\n";
# $_ = "The little girl screamed,\"weeeeee\" as she slid down the sliding board.\n";

if(/(we{2,5})/) { # Matches we- plus 1-4 additional e's. This is a range.
  print "$1 is a common exclamation.\n";
}

$_ = "The little girl screamed,\"weeeeee\" as she slid down the sliding board.\n";
if(/(we{2,5})\b/) { # Boundary scratches on we+5 e's because it goes over 4. 
  print "$1 is a common exclamation I hope.\n";
}

$_ = "eeeeeeeeeeeeeeeee";

if (/(e{1,})/) { # Will capture as many e's as found, provided there are at least one.
  print "$1\n";
}
# Regular expressino precedence:
# () have highest.
# Quantifiers . * ? + {num1, num2} are next
# Anchors \A, \Z, \z, ^, $ come next
# Or | is next
# Individual characters, character classes and back references are called atoms and
# they come last.

