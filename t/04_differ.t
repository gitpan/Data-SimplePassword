#
# $Id: 04_differ.t 8 2006-10-19 23:59:11Z ryo $

use strict;
use lib qw(blib);
use Data::SimplePassword;

use Test::More tests => 1;

my $sp = Data::SimplePassword->new;

my $n = 1000;
my @result;
for(1..$n){
    push @result, $sp->make_password( 32 );
}

ok( scalar &uniq( @result ) == $n, "unique test" );


sub uniq {
    my $seen = {};
    return grep { ! $seen->{$_} ++ } @_;
}

