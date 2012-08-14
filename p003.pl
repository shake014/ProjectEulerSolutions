#!/usr/bin/perl -w
use bigint;
use strict;
use warnings;
my $n;
my $m = 600851475143;
foreach $n (1..$m) {
    print "$n\n" if $m%$n==0;
}

