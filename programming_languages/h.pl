#! /usr/bin/perl
#
# Author : Kalyan
# Date : January 31, 2024
# Purpose: First Perl of 2024

print "File name to read in: "; 
$filename = <STDIN>;
chomp $filename;
open(FILE,$filename);


while ($line = <FILE>) {
    chomp $line;
    @pairs= split ' ', $line;
    $name_to_number{$pair[0]} = $pair[1];
    $number_to_name{$pair[1]} = $pair[0];
}

while (true) {
    print "(N) for name (#) for number search and (.) to exit: ";
    $choice = <STDIN>;
    chomp $choice;

    if ($choice eq 'N') {
        print "Enter name: ";
        $name = <STDIN>;
        chomp $name;
        print $name_to_number{$name} . "\n";
    } elsif ($choice eq '#') {
        print "Enter number: ";
        $number = <STDIN>;
        chomp $number;
        print $number_to_name{$number} . "\n";
    } elsif ($choice eq '.') {
        print "Done!\n";
        last;
    }
}