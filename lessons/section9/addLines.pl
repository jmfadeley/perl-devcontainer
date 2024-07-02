#!/usr/bin/perl
use strict;

@ARGV = qw (PG_IOPS_abridged.txt);

my $sum = 0;
my @line;
my $lineNo;

if (! open OPFILE, ">outputFile") { # > causes existing data to be overridden. To append, >>
  die "Couldn't open \"outputFile\" file for writing: $!";
}

foreach (<>) {
  chomp;
  if(/^"\d+"/) {
    @line = split /,/, $_;
    # print "\@line length is $#line\n";
    $lineNo = @line[0];
    for (my $i = 2; $i <= $#line; $i++) { # Skips over the line number and date.
      $sum = $sum + $line[$i];
    }
    print OPFILE "$lineNo\t$sum\n";
    print "$lineNo\t$sum\n";
    $sum = 0;
  }
}