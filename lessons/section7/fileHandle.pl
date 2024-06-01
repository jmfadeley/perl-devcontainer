#!/usr/bin/perl

# A filehandle is a connection between your Perl program and the outside world.
# Named like variables and arrays.
# 6 special filehandles: STDIN, STDOUT, STDERR, ARVG, DATA and ARVGOUT.

# STDIN - keyboard by default
# STDOUT - computer monitor by default
# STDERR - computer monitor by default

# Can be manually set with statements like
# program.pl < inputFile 2> outputFile;
# Standard input is being redirected by <, which makes program.pl receive its
# standard input from the input file. Meanwhile 2> outputs errors to outputFile.
# These numbers are file descriptors for Unix-based systems.
 # STDIN - 0, redirect with < (the number is optional)
 # STDOUT - 1, can be redirected with > (the number is optional)
 # STDERR - 2. So...
 # program.pl < inputFile >outputFile 2> errFile;

 # Open filehandles with the open functions
#  open INPUT, "file"; # Open file for reading. INPUT is the name, open is default.
#  open INPUT, "<file"; # Open file for reading. Identical to above but more explicit. 
#  open OUTPUT, ">$outputFile"; # # Open file for writing using variable. Use of scalar.
#  open TRASH, ">>", $bitbucket; # Open file for appending. Three argument.

# Filehandles can be closed optionally. Perl will do it automatically and close/reopen 
# existing ones.
# Bad filehandles return end-of-file or undef in scalar context/empty list in list context.
# Lack of permissions are a common cause.
# Use -w or warnings pragma to get help from Perl to detect bad filehandles.

# An if statement can confirm if it returned false or undef, or worked fine.

# You can use the die function to quit Perl program, and print an (optional) error and return 
# a non-zero exit status (0 is successful)

# if(!open FILE,'>>', $message) {
#   die "Can't open $message for appending:$!";
# }

# Use the warn function to delive ra message and line number where the error ocurred like
# 'die` does but program continues.

# Perl 5.10 has autodie function and pragma, will do above automatically.
# use autodie;
# open FILE, "<", whateverFile;

# Once open, you use filehandles like you would <STDIN>
# if (! open FILE, '>>', '$output') {
#  die "File $output couldn't be opened for appending: $!";
# }
# print FILE "Whoa! You're cooking with gas!\n";

# You can change the default output location for STDOUT by using select:
# open FILE, ">outputFile";
# select FILE;
# print "Hello, world!\n"; # output goes to FILE.
# select STDOUT; # Sets output filehandle back to STDOUT or the screen. 
# It's a good idea to change it back to STDOUT when finished.

# You can change the locations of the other default file locations. 
# You just have to open them like so.
# if (!open STDERR, ">>/var/tmp/errlog") {
#   die "Couldn't pen /var/tmp/errlog for appending: $!";
# }

# The say operator (version 5.10)d oes the same thing as print but appends a new line.

# use v5.10
# print "Hello world!\n";
# say "Hello world!";
# Both are identical.

# Scalar variables can be used for a filehandle.
# Allows passing filehandles as arguments to functions and storing
# filehandles in arrays or hashes.

# You can create a filehandle in a scalar by using a scalar variable as the argument
# to 'open' ie:
# open $file_fh, ">>", "./outputFile";
# print $file_fh "Whatever.\n";

