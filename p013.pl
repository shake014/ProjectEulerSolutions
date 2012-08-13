#!/usr/bin/perl -w
use 5.010;
use Math::BigInt;
$sum = 0;
open(NUMS, "nums.txt") or die $!;
$numbers = <NUMS>;
@numbers=split(',',$numbers);
foreach(@numbers){
	$sum+=$_;
}
print $sum;
$extranum=<STDIN>;
$answer=$sum+$extranum;
print $answer;
close(NUMS);
