#/usr/bin/perl -w
#Problem 12, projecteuler.net
use bignum;

sub fact{
	my($num)=@_;
	if ($num==1){
		return 1
	} else {
		return $num * fact($num-1)
	}
}

sub choose{
	my($max, $num)=@_;
	my $num2=$max-$num;
	my $fmax = fact($max);
	my $fnum = fact($num);
	my $fnum2 = fact($num2);
	my $answer = $fmax/($fnum*$fnum);
	return fact($max)/(fact($num2)*(fact($num)))
}

$m = choose(40, 20);
print "$m";
