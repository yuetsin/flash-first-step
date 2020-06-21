#!/usr/bin/env perl

print "Content-type: text/html\n\n";

# open recording file with OPEN mode
open(LOGFILE, "<count.dat");

# load count into variable $count
$count = <LOGFILE>;

# increase $count by 1
$count++;

# close handler
close LOGFILE;

# open recording file with WRITE mode
open (LOGFILE, ">count.dat");

# write updated count into LOGFILE
print LOGFILE ("$count");

# close handler
close LOGFILE;

# print result
print "howmany=$count";