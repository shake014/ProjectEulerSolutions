#!/usr/bin/perl -w
foreach $n (1..100){
    $n**=2;
    $sum1+=$n;
}
foreach $m (1..100){
    $sum2+=$m;
}
$sum2**=2;
$sum=abs($sum2-$sum1);
print "PE 6:", $sum,"\n";
