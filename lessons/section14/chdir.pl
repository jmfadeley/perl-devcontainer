#!/usr/bin/perl
use strict;
use Cwd;

print "Current Working Directory: ", getcwd(), "\n";

chdir ".." or die "Could not change to the .. directory: $_!\n"; # Can't escape current dir I guess.
print "Current Working Directory is now: ", getcwd(), "\n";

my $newDir = "/tmp";
chdir "$newDir" or die "Couldn't change directory to the $newDir directory: $!\n";
print "Current Working Directory is now ", getcwd(), "\n";