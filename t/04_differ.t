#
# $Id: 04_differ.t 3 2006-08-04 11:17:18Z ryo $

use strict;
use lib qw(blib);
use Data::SimplePassword;

use Test::More tests => 1;

my $sp = Data::SimplePassword->new;

my $n = 100;
my @result;
for(1..$n){
    push @result, $sp->make_password( 32 );
}

ok( scalar &uniq( @result ) == $n, "unique test" );


sub uniq {
    my $seen = {};
    return grep { ! $seen->{$_} ++ } @_;
}

