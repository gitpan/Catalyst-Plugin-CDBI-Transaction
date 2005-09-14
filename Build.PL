use strict;
use warnings;
use Module::Build;

my %arguments = (
    module_name         => 'Catalyst::Plugin::CDBI::Transaction',
    license             => 'perl',
    dist_author         => 'Brian Cooke <mrkoffee@saltedsnail.com>',
    dist_version_from   => 'lib/Catalyst/Plugin/CDBI/Transaction.pm',
    requires => {
        'Test::More' => 0,
    },
    add_to_cleanup      => [ 'Catalyst-Plugin-CDBI-Transaction-*' ],
    create_makefile_pl  => 'passthrough',
);

Module::Build->new(%arguments)->create_build_script;
