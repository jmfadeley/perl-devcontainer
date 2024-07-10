#!/usr/bin/perl
use strict;
use Cwd;

my $directory;

# Recommend running on a folder in home directory ie ~/goinhere
if (!@ARGV) {
  $directory = '.';
} elsif(@ARGV == 1) {
  $directory = $ARGV[0];
} else {
  print "perl ./exercise3.pl <starting directory>\n";
}

&changePermissions($directory);

sub changePermissions {
  my $dir = shift @_;

  chdir "$dir" or die "Couldn't chdir into $dir: $!\n";
  opendir my $dh, '.' or die "opendir failed to open: $!\n";

  print "CWD is ", getcwd(), "\n";

  while (readdir $dh) {
    if (/^\./) {
      next;
    } elsif(-f && /\.csv/) {
      print "Found '$_', updating...\n";
      chmod 0664, "$_"; # This might not work on a hosted Docker.
    } elsif (-d) {
      print "Checking directory '$_'\n";
      &changePermissions($_);
      next;
    } 
    chdir '..';
  }
}