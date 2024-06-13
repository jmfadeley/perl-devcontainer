#!/usr/bin/perl

use strict;

# Hash is a data structure that can hold multiple values, where those values are indexed
# by strings intead of numbers.
# The keys are related to the values.
# Indices are called "keys."

my %ticker_to_co; # % declares a hash.

$ticker_to_co{appl} = "Apple Inc.";
$ticker_to_co{orcl} = "Oracle Corporation";
$ticker_to_co{fb} = "Facebook";
$ticker_to_co{dis} = "The Walt Disney Company";
$ticker_to_co{amzn} = "Amazon.com Inc";

print "$ticker_to_co{appl}\n\n";

print %ticker_to_co; # Works but there is no spacing and it prints the key then value.
# Note that values are not stored nor presented in any order. 
# In fact, you get different results if you run this script several times.
print "\n" x 2;
foreach(%ticker_to_co) {
  print "$_\n"; # Key new line value, etc...
}

# Hashes are similar in that names must start with underscore or letter,
# and can be followed with underscore, letters or numbers.

# Keys are unique.
# Hash can be any size.
# Keys can be expressions.

my %ticker_to_coName;
$ticker_to_coName{"aa"."pl"} = "Apple Inc.";
if ($ticker_to_coName{"aa"."pl"} == $ticker_to_co{"aapl"}) {
  print "WOO!\n";
};

if ($ticker_to_coName{"aapl"} == $ticker_to_co{"aapl"}) {
  print "Still woo, man...\n";
};