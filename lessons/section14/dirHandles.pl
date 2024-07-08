#!/usr/bin/perl
use strict;
use Cwd;

print "Let's get to directory reading, baby.\n";

while(1) {
  print "\nEnter a directory to glob just hit 'enter' key.\n";
  chomp(my $dh = <STDIN>);
  if ($dh) {
    opendir $dh, my $whateverDir or die "Couldn't open $dh: $!";
    while (readdir $dh) {
      print "$_\n";
    }
    closedir $dh; # Also closes at the end of the script.
  } else {
    print "Fine! Be like that!\n";
    last;
  }
}