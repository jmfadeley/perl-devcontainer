#!/usr/bin/perl
use strict;
use File::Basename qw(dirname); # Only imports dirname.
# If nothing else "use File::Basename(); then reference longform like $basename below."

my $file = "/workspaces/perl-practice/lessons/section11/behold.txt";

my $dir = dirname($file);
my $basename = File::Basename::basename($file); # Explicit call.

print "Directory name:\t$dir\nFilename:\t$basename\n";