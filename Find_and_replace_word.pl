#!/usr/bin/perl

# Copied Code 
$file = "default.properties";
open (IN, $file) || die "Cannot open file ".$file." for read";     
@lines=<IN>;  
close IN;
 
open (OUT, ">", $file) || die "Cannot open file ".$file." for write";
foreach $line (@lines)
{  
   $line =~ s/hello/hello hello hello/ig;  
   print OUT $line;  
}  
close OUT;
