#!/usr/bin/perl
use strict;
use Cwd;

if (@ARGV != 3) {
  print "Usage: perl ./find.pl <starting dir> <[-f<filename> -d <directory name]>\n";
  exit;
} elsif ("$ARGV[1]" eq "-f" or "$ARGV[1]" eq "-d") {
  my $directory = $ARGV[0];
  my $arg = $ARGV[1];
  my $file = $ARGV[2];
  print "Directory to begin search in: '$directory'\n";
  &find($directory, $arg, $file);
} else {
  print "Incorrect flag.\n";
}

sub find {
  my $dir = shift @_;
  my $arg = shift @_;
  my $file = shift @_;
  my $relativePath .= $dir; # Concat.

  chdir "$dir" or die "Couldn't chdir into $dir: $!";
  opendir my $dh, '.' or die "opendir failed to open '.': $!";

  while (readdir $dh) {
    if (/^\./) {
      next;
    } elsif (("$arg" eq "-f") && -f && /$file/) {
      print getcwd(), "/$_\n";
    } elsif (("$arg" eq "-d") && -f && /$file/) {
      print getcwd(), "/$_\n";
    } elsif (-d) {
      &find($_, $arg, $file);
      next;
    }
  }
  chdir '..';
}
