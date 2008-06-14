#
# $Id: 04_differ.t 13 2008-06-14 10:28:53Z ryo $

use strict;
use lib qw(blib);
use Data::SimplePassword;

use Test::More tests => 1;
use List::MoreUtils;

my $sp = Data::SimplePassword->new;

my $n = $ENV{RUN_HEAVY_TEST} ? 1000 : 10;
my @result;
for(1..$n){
    push @result, $sp->make_password( 32 );
}

ok( scalar List::MoreUtils::uniq( @result ) == $n, "unique test" );

