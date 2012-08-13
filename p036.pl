#!/usr/bin/perl -w
use strict;
use warnings;

sub dectobin{
	my($decnum)=shift;
	my $binnum = unpack("B32", pack("N", $decnum)); 
	$binnum =~ s!^0+(?=\d)!!;
	return $binnum;
}

sub palindromic {
	my($num)=shift;
	my $rnum=reverse $num;
	if ($rnum==$num){
		return 1;
	} else {
		return 0;
	}
}

my $sum=0;
my $decnum;
foreach $decnum (1..1000000){
	my $binnum = dectobin($decnum);
	$sum+=$decnum if palindromic($decnum) && palindromic($binnum);
}

print "PE 36:", $sum, "\n";
