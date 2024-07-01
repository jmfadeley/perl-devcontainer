#!/usr/bin/perl
use strict;

while(<>) {
  if (/^(\d{4}\/\d{2}\/\d{2})\s(\d{2}:\d{2}:\d{2})\s\-\s(\d{4}\/\d{2}\/\d{2})\s(\d{2}:\d{2}:\d{2})\s\-\sSN:(\d+)/) {
    print "Start Date: $1\n";
    print "Start Time: $2\n";
    print "End Date: $3\n";
    print "End Time: $4\n";
    print "SN: $5\n";
  }
}