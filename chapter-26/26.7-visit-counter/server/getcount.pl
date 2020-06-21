#!/usr/bin/env perl

print "Content-type: text/html\n\n";

# open recording file with OPEN mode
open(LOGFILE, "<count.dat");

# load count into variable $count
$count = <LOGFILE>;

# close handler
close LOGFILE;

# print result
print "howmany=$count";