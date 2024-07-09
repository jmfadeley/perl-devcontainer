#!/usr/bin/perl
use strict;
use Cwd;

my $directory;

if (! @ARGV) {
  $directory = '.';
} elsif (@ARGV == 1) {
  $directory = $ARGV[0];
} else {
  print "Usage: perl ./printDirHandles.pl <directory>\n";
  exit;
}

&printDirStructure($directory);

sub printDirStructure {
  my $dir = pop @_;
  chdir "$dir" or die "Couldn't chdir into $dir: $!";
  print getcwd(), "\n";
  opendir my $dh, '.' or die "opendir faile dto open '.': $!";

  while (readdir $dh) {
    if (/^\./) { # Skip the . and .. directories.
      next;
    } elsif (-d) { # Is a directory.
      &printDirStructure($_); # Recursive call.
      next;
    }
  }
  chdir '..'; # Go back to working directory we began in.
}
