#!/usr/bin/perl -w
use 5.010;
$sum=0;
foreach $decnum (1..1000000){
	my $binnum = unpack("B32", pack("N", $decnum)); 
	$binnum =~ s!^0+(?=\d)!!;
	@decnum=split('',$decnum); @decnum2=reverse(@decnum);
	@binnum=split('',$binnum); @binnum2=reverse(@binnum);
	push(@nums, $decnum) if @decnum~~@decnum2 && @binnum~~@binnum2;
}
foreach(@nums){
	$sum+=$_;
}
print $sum;
