#!/usr/bin/perl
use strict;

my @values = split /,/, "5,4,3,2,1";

print "@values\n";

my @fields = split /:/, "daemon:*:1:1:System Services:/var/root/:/usr/bin/false";

print "@fields\n";

my @words = split /\s+/, "We hold these truths to be self-evident";

print "@words\n";

$_ = "Or you could just split and get the blank spaces from the default";

my @corona = split;

print "@corona[2]\n";

# Join joins a list based on a joining character.

my $add = join "+",@values;

print "$add\n";