#!/usr/bin/perl


# @num = (1..10);
# @cut = splice @num, 5, 5;
# print "@cut \n";

@randomNumbers = &generateArray();
print "Generated: @randomNumbers \n\n";
@randomNumbers = sort(@randomNumbers);
print "Sorted: @randomNumbers \n\n";
@randomNumbers = &deduplicate(@randomNumbers);
print "Deduplicated: @randomNumbers \n\n";

sub generateArray {
  foreach(0..100){
    @randomNumbers[$_] = int(rand(100));
  }

  return @randomNumbers;
}

# Few problems in my head. First, why can't I just use sets to find duplicates.
# Second, is there any danger from modifying the array as I loop?
sub deduplicate { # @_ default value is weird but whatever.
  # while (($index, $num) = each @_) {
  #   while ($num == @_[$index + 1]) { # Keep checking/removing until no dupe found.
  #     # print "$num, $#_\n";
  #     @cut = splice @_, $index + 2, $#_;
  #     splice @_, $index + 1, $#_, @cut;
  #   }
  # } # Old way, works but hard to read.

  my @array = @_;
  my $i = 0;
  while ($i <= $#array) {
    if (@array[$i] == @array[$i+1]) {
      splice @array, $i, 1;
    } else {
      $i++;
    }
  }

  @array;
}
