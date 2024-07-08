#!/usr/bin/perl
use strict;

# > opens and overwrites.
# >> opens and appends, does not overwrite.
my $i; # Blank then 1, 2, 3...
$i++ if (-e "testfile$i");
open FILE, ">testfile$i" or die "Could not open testfile$i $!\n";

print FILE "This is a short file.\n";

# This overwrites an existing file, which may not be ideal. 
# You may want to use a file test to get information about a file before
# doing such a test.

# Arguments:
# -r - tests if file or directory is readable
# -w - tests if file or directory is writable
# -x - tests if file or directory is executable
# -e - tests if file or directory exists
# -z - tests if file or directory exists and has zero size
# -f - tests if entry is a plain file
# -d - tests if entry is a directory
# -M - tests modification age (measured in days)
# -A - tests access age (measured in days)
# -s - File or directory exists and has a nonzero size (returns size in bytes) 

# Tests can be paired:
# if -e $file and -f $file);

# You can use virtual filehandle (_) if you read the same file multiple times.
# print "The plain file, $file, exists!" if (-e $file and -f _);

# As of 5.10 you can stack multiple file tests:
# print "The plain file, $file, exists!" if (-e -f -x -o $file);

