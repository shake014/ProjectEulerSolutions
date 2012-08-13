#!/usr/bin/perl -w
use bignum;
$num1=1;
@num1=(1..1000000);
@nums2=(1,10,100,1000,10000,100000,1000000);
$nums1=join('',@num1);
@numsfin=split('',$nums1);
foreach $num (@nums2){
	$num--;
	$num1*=$numsfin[$num];
}
print $num1;
