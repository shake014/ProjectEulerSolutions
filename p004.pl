#!/usr/bin/perl -w
use 5.010;
use bignum;
@nums1=(100..999);
@nums2=(100..999);
foreach $num1 (@nums1){
	foreach $num2 (@nums2){
		$a=$num1*$num2;
		my @nums=split('',$a);
		my @nums2=reverse(@nums);
		push(@bignums,$a) if @nums~~@nums2;
	}
}
$c=0;
foreach (@bignums){
	$c=$_ if $_>=$c;
}
print $c;
