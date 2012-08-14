#!/usr/bin/perl -w
my $min = 2;
chomp $min;
my $max = 2000000;
chomp $max;
# Create a max-sized array
my @primes = (1...$max);
# Initially assume all numbers are prime
for($i = 0; $i < $max; $i++) {    
 $primes[$i] = 1;
}
# The sieve
for ($i=2; $i*$i <= $max;$i+=1) {    
 if ($primes[$i]) {        
   for ($j=$i; $j*$i < $max; $j+=1) {            
     $primes[$i * $j] = 0;        
   }    
 }
}
# Show the results
my @p = ();
for ($i=$min; $i<=$max; $i++) {    
	if ($primes[$i]) {        
		push (@p, $i);    
    }
}
$sum=0;
foreach(@p){
    $sum+=$_;
}
print $sum;
