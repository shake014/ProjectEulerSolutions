#!/usr/bin/perl -w
use bigint;

$m = 600851475143;
foreach $n (1..$m) {
    print "$n\n" if $m%$n==0;
}

