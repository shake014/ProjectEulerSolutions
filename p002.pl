#!/usr/bin/perl -w
my $i = 1;
my $j = 1;
my $k;
my $sum = 0;
while($k<4000000){
	$sum+=$k if $k % 2 == 0;
	$k = $i + $j;
	$i = $j;
	$j = $k;
}
print "PE 2:", $sum, "\n";
