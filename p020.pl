#!/usr/bin/perl -w
use bignum;
$a=100;
$b=&fact(100);
@digits=split('',$b);
foreach(@digits){
	$sum+=$_;
}
print $sum;

sub fact{	
	my($a)=@_;
	if($a==1){
		return 1;
	} else {
		return $a*&fact($a-1);
	}
}


