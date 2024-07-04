#!/usr/bin/perl

# Modules are pre-written and well-written subroutines.

# Two types: Those that come with Perl adn those you can download from CPAN and install yourself.
# Run on all OSes. Perl ships with many.

# You can see modules available with corelist, ie:
# corelist -v 5.34.0 
# You can also use regex to narrow search
# corelist -v 5.34.0  /^D/i would return modules that start with "d."

# You can also search CPAN at http://search.cpan.org
# And just Google.

# perldoc - gives you mapage info on modules
# ie:
# perldoc File::Basename

# File::Basename File is the whole thing with the file name, which is the base name.
# To import:
# use File::Basename
# This pulls all the module functions into your program ie fileparse, basename, dirname

# To alias it (in case of name conflicts):
# use File::Basename q(fileparse, basename); will import only specific functions, 
# so my dirname would be safe.
# my $dirname = File::Basename::dirname($full_pathname); # Alternatively, alias it as
# something else.

# Or import module with the empty list:
# use File::Basename()
# This works, you just have to call them explicitly.

# Note you may need to run "sudo apt-get update" then "sudo apt-get install perldoc"
# Look at the Synopsis section for how to use things.

use strict;
use File::Basename;

my $file = "/workspaces/perl-practice/lessons/section11/behold.txt";

my $dir = dirname($file);
my $basename = basename($file);

print "Directory name:\t$dir\nFilename:\t$basename\n";