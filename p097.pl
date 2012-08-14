$max_n = 1000;
$m = 1e10;
$nx = 1; 
$n=2;
$nx = ($nx * $n) % $m  for (1..7830457); 
$nx = ($nx * 28433) % $m;
$nx++;
 
print "PE 97 = $nx";
