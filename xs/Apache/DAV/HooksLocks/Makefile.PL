
# 
# /*
#  * *********** WARNING **************
#  * This file generated by Apache::DAV::WrapXS/0.01
#  * Any changes made here will be lost
#  * ***********************************
#  * 1. /opt/perl5.6.1/lib/site_perl/5.6.1/ExtUtils/XSBuilder/WrapXS.pm:38
#  * 2. /opt/perl5.6.1/lib/site_perl/5.6.1/ExtUtils/XSBuilder/WrapXS.pm:1898
#  * 3. xsbuilder/xs_generate.pl:6
#  */
# 


use ExtUtils::MakeMaker ();

local $MMARGS ;

if (-f '../../../mmargs.pl')
    {
    do '../../../mmargs.pl' ;
    die $@ if ($@) ;
    }

$MMARGS ||= {} ;


ExtUtils::MakeMaker::WriteMakefile(
    'NAME'    => 'Apache::DAV::HooksLocks',
    'VERSION' => '0.01',
    'TYPEMAPS' => ['../../../typemap'],
'depend'  => {
          'HooksLocks.c' => ''
        }
,
    
    %$MMARGS,
);

