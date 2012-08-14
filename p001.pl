#!/usr/bin/perl -w
#Using a for loop and an if conditional statement, add up all the multiples of 3,5 under 1000:
use strict;
use warnings;
my $sum = 0;
my @nums=(1..1000);
my $a;
foreach $a (@nums){
    $sum+=$a if ($a % 3==0 || $a % 5==0);
}
print $sum;
