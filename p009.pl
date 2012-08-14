#!/usr/bin/perl -w

for ($a = 1; $a <= 500; $a++){
  for ($b = $a+1; $b <= 500; $b++){
    for ($c = $a+2; $c <=500; $c++){
      if ($c == sqrt($a*$a+$b*$b)){
        if (1000 == $a + $b + $c){
	  print($a * $b * $c, "\n");
	  exit;
	}
      }
    }
  }
}

