#!/usr/bin/perl
# TEST.PL 
# Copyright (c) 2006 Jonathan Rockway <jrockway@cpan.org>

use strict;
use warnings FATAL => 'all';
use lib qw(lib);
use Apache::TestRunPerl ();

Apache::TestRunPerl->new->run(@ARGV);
