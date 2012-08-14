#!/usr/bin/perl -w
use strict;
use warnings;

my $m=2520;
sub divis{
	my($m)=shift;
	for (my $n=11;$n=20;$n++){
		until($m%$n==0){
			$m++;
		}
	}
	return $m;
}

print "PE 5:", divis($m),"\n";