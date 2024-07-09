#!/usr/bin/perl
use strict;
use Cwd;

if (@ARGV != 1) {
  print "Usage: perl ./printRelativeDirStructures.pl <starting directory>\n";
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
      print "$relativePath\n";
      # recursive call.
      $relativePath = &find($_, $relativePath);
      next;
    }
  }
  
  chdir '..'; # Return to working directory you started in.
  $relativePath =~ s/(\.?.*)\/.*/$1/;
  $relativePath;
}
