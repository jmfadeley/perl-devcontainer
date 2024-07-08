#!/usr/bin/perl
use strict;
# use Cwd;

my @files = glob'.* *';
print "@files\n";

@files = <.* *>;
print "@files\n";

@files = glob '[cd]*';
print "@files\n";