use strict;
use warnings;
use ExtUtils::MakeMaker;
use Apache::TestMM qw(test clean);

# parse command line args
Apache::TestMM::filter_args();

# autogenerate the test script
Apache::TestMM::generate_script('t/TEST');

# typical WriteMakefile
WriteMakefile(
    NAME                => 'Apache::AuthLDAPBind',
    AUTHOR              => 'Jonathan T. Rockway <jon-cpan@jrock.us>',
    VERSION_FROM        => 'lib/Apache/AuthLDAPBind.pm',
    ABSTRACT_FROM       => 'lib/Apache/AuthLDAPBind.pm',
    PL_FILES            => {},
    PREREQ_PM => {
		  'Test::More' => 0,
		  'Net::LDAP' => 0,
		  'Apache::Constants' => 0,
		 },
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'Apache-AuthLDAPBind-*' },
);
