#!/usr/bin/perl -w
use bignum;
$m=1;
$a=2;
$a**=5;
$b=3;
$b**=3;
$c=5;
$c**=2;
$d=7;
$d**=2;
foreach(1..20){
	$m*=$_;
}
until($m % $a != 0 ){
	$m /= 2;
}
until($m % $b != 0){
	$m /= 3;
}
until($m % $c != 0){
	$m /= 5;
}
until($m % $d !=0){
	$m /= 7;
}
print $m;
