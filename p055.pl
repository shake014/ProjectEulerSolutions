#!/usr/bin/perl -w
use bignum;
$sum=0;
foreach(1..10000){
	$sum++ if lychrel($_);
}
print $sum;

sub lychrel {
    my($num)=shift;
    my $x=0;
    my $rnum= reverse $num;
    while($x<50) {
      $num+=$rnum;
      $rnum=reverse $num;
      last if $rnum == $num;
      $x++;
    }
    return 1 if $x==50;
    return 0 if $num == $rnum;
}
