#!/usr/bin/perl -w
use bignum;
use strict;
use warnings;

sub palindromic{
	my ($a)=shift;
	my $ra = reverse $a;
	if ($a==$ra){
		return 1;
	} else {
		return 0;
	}
}

my @nums1=(100..999);
my @nums2=(100..999);
my $num1;
my $num2;
my $max = 0;
foreach $num1 (@nums1){
	foreach $num2 (@nums2){
		$a=$num1*$num2;
		$max=$a if palindromic($a) && $a>$max;
	}
}
print "PE 4:", $max, "\n";
