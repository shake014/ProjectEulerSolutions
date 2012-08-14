$max_n = 1000;
$m = 1e10;
$sum = 0;
for $n (1..$max_n){
$nx = 1;
$nx = ($nx * $n) % $m  for (1..$n); 
$sum = ($sum + $nx) % $m;
}
 
print "PE 48 = $sum";
