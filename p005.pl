#!/usr/bin/perl -w
use bignum;
use strict;
use warnings;

my $m=2520;
sub divis{
	my($m)=shift;
	my $n;
	foreach $n (11..20){
		until($m%$n==0){
			$m++;
		}
	}
	return $m;
}

print "PE 5:", divis($m),"\n";