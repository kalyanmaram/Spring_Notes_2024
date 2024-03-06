#!/usr/bin/perl
# Author : Kalyan
# Date : February 14, 2024
# Purpose: Q1 of Homework1

print "File name to to read in: ";
$filename = <STDIN>;
chomp $filename;
open(FILE,$filename);

while($line = <FILE>)
{
	chomp $line;
	@pair = split ' ', $line;
	$name_to_number{$pair[0]} = $pair[1];
	$number_to_name{$pair[1]} = $pair[0];
}

while(true)
{
	print "Enter (N) for name (#) for number search and (.) to exit: ";
	$action = <STDIN>;
	chomp $action;

	if($action eq 'N'){
		print "Enter name: ";
		$name = <STDIN>;
		chomp $name;
		print $name_to_number{$name} . "\n";
} elsif ($action eq '#') {
	print "Enter number: ";
	$number = <STDIN>;
	chomp $number;
	print $number_to_name{$number} . "\n";
} elsif ($action eq '.') {
	print "Done!\n";
	last;
}
}
