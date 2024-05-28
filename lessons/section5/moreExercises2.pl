#!/usr/bin/perl

@ten = (5);

splice @ten, 0, 10, 1..10;

print "\@ten = @ten\n";