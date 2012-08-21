#!/usr/bin/perl -w
use strict;
use warnings;

sub even{
	my($k)=shift;
	$k % 2 ==0 ? return 1 : return 0
}

sub fibonnaci{
	my($i, $j) = @_;
	my $m = $j + $i;
	return $m;
}
	
my $i = 1;
my $j = 1;
my $sum = 0;
while($k<4000000){
	$k = fibonnaci($i, $j);
	$sum+=$k if even($k);
	($i, $j) = ($j, $k)
}
print "PE 2:", $sum, "\n";
