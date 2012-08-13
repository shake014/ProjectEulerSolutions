#!/usr/bin/perl -w
#Using a for loop and an if conditional statement, add up all the multiples of 3,5 under 1000:
@nums=(1..1000);
foreach(@nums){
    $sum+=$_ if ($_ % 3==0 || $_ % 5==0);
}
print $sum;
