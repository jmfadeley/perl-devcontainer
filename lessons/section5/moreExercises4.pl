#!/usr/bin/perl

@randomNumbers;

foreach(1..100) {
  # print $_, "\n";
  @randomNumbers[$_] = int (rand(100)); # Default variable. In this case, 1..100.
}

# foreach(5..9) {
#   print $_, "\n"; # Where as here it would be 5 through 9.
# }

print "@randomNumbers \n\n";

@randomNumbers = sort(@randomNumbers);
print "@randomNumbers \n";