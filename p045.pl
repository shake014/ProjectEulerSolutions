#!/usr/bin/perl
use bignum;
foreach $m (1..100000){
  $x=$m*(2*$m-1);
  $p=$m*(3*$m-1)/2;
  $hex{$x} = 0;
  $pent{$p} = 0;
  print "$p\n" if defined $hex{$p};
}
