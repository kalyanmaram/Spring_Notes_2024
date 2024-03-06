#! /usr/bin/perl
#
# Author : Kalyan
# Date : January 31, 2024
# Purpose: First Perl of 2024

print("Hello,World\n");

$count = 1;
$message = "hello";

print $count . "\n";
print "$message $count\n";

@list = ("Kalyan","Sai","Maram");
print $list[0] . "\n";
for($i=0;$i<3;$i++){
   print $list[$i] . "\n";
}

my %hash = ("SaiKalyan" => "Maram");

print $myHash{"SaiKalyan"} . "\n";

print "Enter a file: ";
my $name = <STDIN>;
chomp $name;

open(FILE,$name);
while(my $line=<FILE>)
{
    chomp $line;

    my ($type, $value) = split " ", $line;
    print "[" . $type . "," . $value . "]\n";
    printPairs($type, $value);
}

sub printPairs
{
    my ($value, $type) = @_; # interchange the values
    print "[" . $type . "," . $value . "]\n";
}

print("Hello, World\n");

my $count = 1; # Added 'my' to declare the variable
my $message = "hello"; # Added 'my' to declare the variable

print $count . "\n";
print "$message $count\n";

my @list = ("Kalyan","Sai","Maram"); # Added 'my' to declare the variable
print $list[0] . "\n";
for(my $i=0;$i<3;$i++){ # Added 'my' to declare the variable
     print $list[$i] . "\n";
}

my %hash = ("SaiKalyan" => "Maram"); # Corrected variable name from 'myHash' to 'hash'

print $hash{"SaiKalyan"} . "\n"; # Corrected variable name from 'myHash' to 'hash'

print "Enter a file: ";
my $name = <STDIN>; # Added 'my' to declare the variable
chomp $name;

open(FILE,$name);
while(my $line=<FILE>) # Added 'my' to declare the variable
{
    chomp $line;

    my @pairs = split " ", $line; # Corrected the split syntax and added 'my' to declare the variable
    print "[" . $pairs[0] . "," . $pairs[1] . "]\n";
}

sub printPairs
{
    my ($type, $value) = @_; # Corrected the variable assignment
    if ($type eq "school")
    {
         print $value. "\n";
    }
}

