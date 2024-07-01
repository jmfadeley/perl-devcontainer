#!/usr/bin/perl
use strict;

while(<>) {
  if (/^hide(.*)/) {
    print "slide$1\n";
  }
}