#!/usr/bin/perl -T
use strict;
use warnings;
use 5.008;
 
use Data::Dumper;
use CGI;
my $q = CGI->new;
 
my %data;
$data{name} = $q->param('name');
$data{subject} = $q->param('subject');
$data{comment} = $q->param('comment');
 
print $q->header;
if ($data{name} !~ /^[\s\w.-]+$/) {
	print "Name must contain only alphanumerics, spaces, dots and dashes.";
	exit;
}
 
print "response " . Dumper \%data;