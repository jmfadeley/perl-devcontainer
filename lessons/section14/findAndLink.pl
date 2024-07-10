#!/usr/bin/perl

use strict;
use Cwd;

# LinkMe file works well. Use: perl ./findAndLink -f LinkMe
if (@ARGV != 3) {
  print "Usage: perl ./findAndLink.pl <starting dir> <[-f<filename> -d <directory name]>\n";
  exit;
} elsif ("$ARGV[1]" eq "-f" or "$ARGV[1]" eq "-d") {
  my $startdir = $ARGV[0];
  my $arg = $ARGV[1];
  my $file = $ARGV[2];
  my $origCwd = getcwd();
  print "Directory to begin search in: '$startdir'\n\n\n";
  &find($startdir, $arg, $file, $origCwd, $startdir);
} else {
  print "Incorrect flag.\n";
}

sub find {
  my $startdir = shift @_;
  my $arg = shift @_;
  my $file = shift @_;
  my $origCwd = shift @_;
  my $relativePath = shift @_;

  chdir "$startdir" or die "Couldn't chdir into $startdir: $!";
  opendir my $dh, '.' or die "opendir failed to open '.': $!";

  while (readdir $dh) {
    if (/^\./) {
      next;
    } elsif ("$arg" && /$file/) {
      print "*****************\n
      Got the \$arg ($arg) and the matching \$file ($_)\n
      *****************\n";
      print "$relativePath/$_\n";
      link "$_", "$origCwd/${_}_Link"; # $_ in the brackets.
      exit;
    } elsif (-d) {
      print "Checking directory, '$_' and \$relativePath = $relativePath.\n";
      $relativePath = &find($_, $arg, $file, $origCwd, $relativePath);
      next;
    }
  }
  chdir '..';
  $relativePath =~s/(\.?.*)\/.*/$1/;
  print "\$relativePath matches were: ($`)($&)($')\n";
  print "Backing out to \$relativePath = $relativePath\n\n";
  $relativePath;
}
