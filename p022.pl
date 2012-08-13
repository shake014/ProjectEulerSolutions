#!/usr/bin/perl -w
use bignum;
use List::Util qw(first);
$sum=0;
%values=("a",1,"b",2,"c",3,"d",4,"e",5,"f",6,"g",7,"h",8,"i",9,"j",10,"k",11,"l",12,"m",13,"n",14,"o",15,"p",16,"q",17,"r",18,"s",19,"t",20,"u",21,"v",22,"w",23,"x",24,"y",25,"z",26);
open (NAMES, "names.txt") or die $!;
$name = <NAMES>;
@name=split(',',$name);
@name=sort(@name);
foreach(@name){
	$_=~s/"//g;
	$_=~s/\W.*//;
	$_=~tr/A-Z/a-z/;
	my $search=$_;
	my $index = first { $name[$_] eq $search } 0 .. $#name;
	my @letters=split('',$_);
	foreach $letter (@letters){
		$value=($index+1)*$values{$letter};
		$sum+=$value;
		
	}
}
print $sum;
close(NAMES);
