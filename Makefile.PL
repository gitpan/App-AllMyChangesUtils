
use strict;
use warnings;

use 5.014000;

use ExtUtils::MakeMaker 6.30;



my %WriteMakefileArgs = (
  "ABSTRACT" => "utils for site http://allmychanges.com",
  "AUTHOR" => "Ivan Bessarabov <ivan\@bessarabov.ru>",
  "BUILD_REQUIRES" => {},
  "CONFIGURE_REQUIRES" => {
    "ExtUtils::MakeMaker" => "6.30"
  },
  "DISTNAME" => "App-AllMyChangesUtils",
  "EXE_FILES" => [
    "bin/get_github_favorites",
    "bin/get_pauseid_distributions",
    "bin/get_pauseid_favorites"
  ],
  "LICENSE" => "perl",
  "NAME" => "App::AllMyChangesUtils",
  "PREREQ_PM" => {
    "Data::Printer" => 0,
    "ElasticSearch" => 0,
    "HTTP::Tiny" => 0,
    "JSON" => 0,
    "JSON::PP" => 0,
    "LWP::Simple" => 0,
    "feature" => 0,
    "open" => 0,
    "strict" => 0,
    "utf8" => 0,
    "warnings" => 0
  },
  "TEST_REQUIRES" => {
    "Test::More" => 0
  },
  "VERSION" => "1.0.1",
  "test" => {
    "TESTS" => "t/*.t"
  }
);


my %FallbackPrereqs = (
  "Data::Printer" => 0,
  "ElasticSearch" => 0,
  "HTTP::Tiny" => 0,
  "JSON" => 0,
  "JSON::PP" => 0,
  "LWP::Simple" => 0,
  "Test::More" => 0,
  "feature" => 0,
  "open" => 0,
  "strict" => 0,
  "utf8" => 0,
  "warnings" => 0
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.63_03) } ) {
  delete $WriteMakefileArgs{TEST_REQUIRES};
  delete $WriteMakefileArgs{BUILD_REQUIRES};
  $WriteMakefileArgs{PREREQ_PM} = \%FallbackPrereqs;
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



