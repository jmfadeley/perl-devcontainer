#!/usr/bin/perl
use strict;

my $command = shift @ARGV; # Takes first command off ARGV.
my $s;
my $phrase;
my $newPhrase;
my $global;

$command =~ s/'//g;

# Now we split the command into individual elements so we can check for the global modifiers.
print "$command\n";

($s, $phrase, $newPhrase, $global) = split /\//, $command;

while (<>) {
  if (($global eq 'ig') || ($global eq 'gi')) {
    s/$phrase/$newPhrase/gi; # You can't use variables for modifiers. 
  } elsif ($global eq 'g') {
    s/$phrase/$newPhrase/g;
  } else {
    s/$phrase/$newPhrase/;
  }
  print;
}