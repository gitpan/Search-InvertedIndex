use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
    'NAME'           => 'Search::InvertedIndex',
    'VERSION_FROM'   => 'lib/Search/InvertedIndex.pm',
    'PREREQ_PM'      => { 'Digest::SHA1'            => 0,
                          'DB_File'                 => 0,
                          'Class::ParmList'         => 0,
                          'Class::NamedParms'       => 0,
                          'Tie::FileLRUCache'       => 0,
                          'Tie::DB_File::SplitHash' => 0,
                        },
    'linkext'        => { LINKTYPE=>'' },    # no link needed
    'dist'           => {'COMPRESS'=>'gzip -9f', 'SUFFIX' => 'gz',
    'ZIP'            => '/usr/bin/zip','ZIPFLAGS'=>'-rl'}
);
