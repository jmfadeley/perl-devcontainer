#!/usr/bin/perl

@quarterbacks = qw(Brady Manning Palmer Newton);

print "There are ", @quarterbacks, " quarterbacks playing today.\n";

print "There are ", scalar @quarterbacks, " quarterbacks playing today.\n";

print "There are scalar @quarterbacks quarterbacks playing today.\n";

chomp (@inputLines = <STDIN>); # End of input marked with CTRL+D in Linux and CTRL+Z in Windows.

print @inputLines, "\n";