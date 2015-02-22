#!/usr/bin/perl
use strict;
use warnings;

my $sum = 0;
my $inc;
my $m;

for($inc = 1; $inc < 1001; $inc++) {
	$m = lettertonum($inc);
	$sum += $m;
}

print "$sum\n";

sub lettertonum {
	my $m = shift;
	my $number = 0;
	my $n = 0;
	if ($m == 1000){
		$number = 11
	} elsif ($m >= 100) {
		$n = $m%100;
		if ($n>=20) {
			$number = threedigit($m-$n)+twodigit($n)+3;
		} elsif ($n != 0) {
			$number = threedigit($m-$n)+lesstwen($n)+3;
		} else {
			$number = threedigit($m);
		}
	} elsif ($m >= 20) {
		$number = twodigit($m);
	} else {
		$number = lesstwen($m);
	}	
	return $number;
}

sub lesstwen {
	my $m = shift;
	my $number = 0;
	if ($m == 19) {
		$number = 8;
	} elsif ($m == 18) {
		$number = 8;
	} elsif ($m == 17) {
		$number = 9;
	} elsif ($m == 16) {
		$number = 7;
	} elsif ($m == 15) {
		$number = 7;
	} elsif ($m == 14) {
		$number = 8;
	} elsif ($m == 13) {
		$number = 8;
	} elsif ($m == 12) {
		$number = 6;
	} elsif ($m == 11) {
		$number = 6;
	} elsif ($m == 10) {
		$number = 3;
	} elsif ($m == 9) {
		$number = 4;
	} elsif ($m == 8) {
		$number = 5;
	} elsif ($m == 7) {
		$number = 5;
	} elsif ($m == 6) {
		$number = 3;
	} elsif ($m == 5) {
		$number = 4;
	} elsif ($m == 4) {
		$number = 4;
	} elsif ($m == 3) {
		$number = 5;
	} elsif ($m == 2) {
		$number = 3;
	} elsif ($m == 1) {
		$number = 3;	
	} else {
		$number = 0;
	}	
	return $number;
}

sub threedigit{
	my $m = shift;
	my $number = 0;
	$number = 7 + lesstwen($m/100);
	return $number;
}	

sub twodigit{
	my $m = shift;
	my $number = 0;
	if ($m >= 90){
		$number = 6 + lesstwen($m-90);
	} elsif ($m >= 80){
		$number = 6 + lesstwen($m-80);
	} elsif ($m >= 70){
		$number = 7 + lesstwen($m-70);
	} elsif ($m >= 60){
		$number = 5 + lesstwen($m-60);
	} elsif ($m >= 50){
		$number = 5 + lesstwen($m-50);
	} elsif ($m >= 40){
		$number = 5 + lesstwen($m-40);
	} elsif ($m >= 30){
		$number = 6 + lesstwen($m-30);
	} elsif ($m >= 20){
		$number = 6 + lesstwen($m-20);
	}	
	return $number; 
}
