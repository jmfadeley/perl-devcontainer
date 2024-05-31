#!/usr/bin/perl

# One can simplifying multiple inputs using default value.
# while (<STDIN>) {
  #print $_;
#}

# You can even just do:
# while (<STDIN>) {
  #print;
#}

# There is also diamond operators which can get an entire file.
# This is reading off the @ARGV.

# This writes @ARVG. Comment it out and use `perl cat.pl stuff stuff2` to 
# do the same thing.
@ARGV = qw (stuff stuff2);
while(<>) {
  print;
}

