#!/usr/bin/perl
use strict;
use Cwd;

my $directory;

if (! @ARGV) {
  $directory = '.'
} elsif (@ARGV == 1) {
  $directory = $ARGV[0];
} else {
  print "./exercise2.pl <directory>\n";
  exit;
}

my $numFiles = &countFiles($directory);
print "The total number of files in the directory structure is: $numFiles.\n";

sub countFiles {
  my $dir = pop @_;
  my $count = 0;

  chdir "$dir" or die "Couldn't chdir into $dir: $!";
  opendir my $dh, '.' or die "opendir failed to open '.': $!";

  while (readdir $dh) {
    if (/^\.{1,2}\Z/) { # . or .. exactly.
      next;
    } elsif (-f) {
      $count++;
      next;
    } elsif (-d) {
      $count += &countFiles($_);
      next;
    } else {
      print "Skipping file '$_' in directory $dir.\n";
      next;
    }
  }
  
  chdir '..'; # Return to working directory you started in.
  $count; # Return;
}
