#!/usr/bin/perl
use strict;
use Cwd;

my $directory;

if (!@ARGV) {
  $directory = '.';
} elsif(@ARGV == 1) {
  $directory = $ARGV[0];
} else {
  print "perl ./scanAndReplaceUnzipped.pl <directory>\n";
}

&scanAndReplace($directory);
sub scanAndReplace {
  my $dir = pop @_;

  chdir "$dir" or die "Couldn't chdir into $dir: $!";
  opendir my $dh, '.' or die "opendir failed to open: $!";

  print "CWD is ", getcwd(), "\n";

  while (readdir $dh) {
    if (/^\.{1,2}\Z/) {
      next;
    } elsif(/\.csv/) {
      &changeSerialNumber($_); 
    } elsif (-d) {
      &scanAndReplace($_);# Good ol' recursion.
      next;
    } else {
      print "Skipping file '$_' in directory $dir.\n";
      next;
    }
  }
  chdir '..'; # Go back to earlier directory.
}

sub changeSerialNumber {
  $ARGV[0] = pop @_;
  my $file = $ARGV[0];

  $^I = ".bak"; # Backup.
  print "Working on $file...\n";
  while (<>) {
    s/(^Serial number\s:\s)\S{5,6}(\(RAID\d+\))/$1xxxx$2/;
    print;
  }
  unlink "$file.bak" or die "Failed to unlink $file.bak: $!";
}