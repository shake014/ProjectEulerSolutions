#!/usr/bin/perl -w
$i=1;
$largest=0;
$largestnumber=0;
foreach (1..1000000){
	$q=$_;
	until ($_==1){
		if ($_ % 2 ==0) {
			$_/=2;
		} else {
			$_*=3;
			$_++;
		}
		$i++;
	}
	$largestnumber=$q if $i>$largest;
	$largest=$i if $i>$largest;
	$i=0;
	$q=0;
}
print $largestnumber;
