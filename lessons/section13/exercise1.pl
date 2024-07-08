#!/usr/bin/perl

my $i;
while (-e "testfile$i") {
  $i++;
}

open FILE, ">testfile$i" or die "Could not open testfile$i $!\n";

print FILE "This is a short file.\n";