#!/usr/bin/perl
use strict;
use Cwd;

if (@ARGV != 3) {
  print "Usage: perl ./exercise4.pl <starting dir> <[-f<filename> -d <directory name]>\n";
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
  # opendir my $dh, '.' or die "opendir failed to open '.': $!";

  foreach (glob '*') {
    if (/^\./) {
      next;
    # } elsif ("$arg" && /$file/) { # This is what the answer said but I don't think it's working.
    #   print getcwd(), " $arg: /$_\n";
    } elsif (("$arg" eq "-f") && -f && /$file/) {
      print getcwd(), "FOLDER: /$_\n";
    } elsif (("$arg" eq "-d") && -d && /$file/) {
      print getcwd(), "DIRECTORY: /$_\n";
    } elsif (-d) {
      &find($_, $arg, $file);
      next;
    }
  }
  chdir '..';
}
