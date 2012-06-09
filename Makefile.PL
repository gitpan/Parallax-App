use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME                => 'Parallax::App',
    AUTHOR              => q{MAHMUT BULUT <mahmutbulut0@gmail.com>},
    VERSION_FROM        => 'lib/Parallax/App.pm',
    ABSTRACT            => 'RESTful web text API for Nerds',
    ($ExtUtils::MakeMaker::VERSION >= 6.3002
      ? ('LICENSE'=> 'perl')
      : ()),
    PL_FILES            => {},
    PREREQ_PM => {
        'Test::More' => 0,
        'YAML'       => 0,
        'Dancer'     => 1.3095,
        'Net::GitHub'=> 0.46,
    },
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'Parallax-App-*' },
);
