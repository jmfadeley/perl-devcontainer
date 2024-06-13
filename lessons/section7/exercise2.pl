#!/usr/bin/perl
use strict;

my $outputFile;
my $inputFile = $ARGV[0];

#print "\@ARGV = @ARGV\n\n\n";

if(! open INPUT, "<", "$inputFile") { # Attempts to change input.
  die "Couldn't open \"$inputFile\" for input: $!";
}

if (@ARGV >= 2) { # @ it's an array now...
  $outputFile = $ARGV[1];
  if(! open OUTPUT, ">", "$outputFile") { # Attempts to change output if found.
    die "Couldn't open \"$outputFile\" for output: $!";
  }
  while (<INPUT>) {
    print OUTPUT "$_"; # Outputs default variable, aka inputFile.
  }
} else {
  while (<INPUT>) {
    print;
  }
}