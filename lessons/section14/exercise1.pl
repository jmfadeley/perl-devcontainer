#!/usr/bin/perl
use strict;
use Cwd;

if (@ARGV != 1) {
  print "Usage: perl ./exercise1.pl <starting directory>\n";
  exit;
} else {
  my $startDir = $ARGV[0];
  &find($startDir, $startDir);
}

sub find {
  my $startDir = shift @_;
  my $relativePath = shift @_;

  chdir "$startDir" or die "Couldn't chdir into $startDir: $!";
  opendir my $dh, '.' or die "opendir failed to open '.': $!";

  while (readdir $dh) {
    if (/^\./) {
      next;
    } elsif (-d) {
      $relativePath = "$relativePath/$_";
      # recursive call.
      $relativePath = &find($_, $relativePath);
      next;
    } elsif (-f) {
      print "$relativePath/$_\n";
      next;
    }
  }
  
  chdir '..'; # Return to working directory you started in.
  $relativePath =~ s/(\.?.*)\/.*/$1/;
  $relativePath;
}
