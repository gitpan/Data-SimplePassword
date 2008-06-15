# 
# $URL: svn+ssh://ryo@aquahill.net/home/ryo/svn/Data-SimplePassword/trunk/t/95_perl-critic.t $
# $Id: 95_perl-critic.t 14 2008-06-14 11:12:50Z ryo $

use strict;
use Test::More;

if ($ENV{PERL_TEST_CRITIC}) {
  if (eval { require Test::Perl::Critic; import Test::Perl::Critic -profile => "t/perlcriticrc" }) {
    Test::Perl::Critic::all_critic_ok("lib");
  } else {
    plan skip_all => "couldn't load Test::Perl::Critic";
  }
} else {
  plan skip_all => "define PERL_TEST_CRITIC to run these tests";
}

