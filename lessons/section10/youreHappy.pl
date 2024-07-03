#!/usr/bin/perl
use strict;

print "Enter 1 if you're happy and 0 if not.\n";
chomp (my $youreHappy = <STDIN>);

print "Are you sure? 1 if you're happy and 0 if not.\n";
chomp (my $youKnowIt = <STDIN>);

if (($youreHappy) && ($youKnowIt)) {
  &clapYourHands;
  exit;
}

if (($youreHappy) || ($youKnowIt)) {
  &stompYourFeet;
}

sub clapYourHands {
  print "Clap clap!\n";
}

sub stompYourFeet {
  print "Stomp stomp!\n";
}