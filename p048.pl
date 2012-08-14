#!/usr/bin/perl -w
use strict;
use warnings;
my $max_n = 1000;
my $m = 1e10;
my $sum = 0;
for $n (1..$max_n){
	my $nx = 1;
	$nx = ($nx * $n) % $m  for (1..$n); 
	$sum = ($sum + $nx) % $m;
}
 
print "PE 48 = $sum";
