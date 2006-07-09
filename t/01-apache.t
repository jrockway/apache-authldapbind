#!/usr/bin/perl
# 01-apache.t - test the module in a running apache
# Copyright (c) 2006 Jonathan Rockway <jrockway@cpan.org>

use Apache::Test qw(ok have_lwp plan);
use Apache::TestRequest qw(GET);

plan(tests => 2, have_lwp);

my $res = GET('/');

ok($res->code, 401, "authentiation is requested");
ok($res->header('www-authenticate'), 'Basic realm="Apache::Test"', 
   "make sure it's us");

