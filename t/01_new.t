#
# $Id: 01_new.t 3 2006-08-04 11:17:18Z ryo $

use strict;
use lib qw(blib);
use Data::SimplePassword;

use Test::More tests => 3;

BEGIN { use_ok( 'Data::SimplePassword' ) }

can_ok( 'Data::SimplePassword', 'new' );
ok( Data::SimplePassword->new, "" );


