# 
# $Id: 00_load.t 12 2008-06-14 09:27:57Z ryo $

use Test::More tests => 1;

BEGIN {
	use_ok( 'Data::SimplePassword' );
}

diag( "Testing Data::SimplePassword $Data::SimplePassword::VERSION, Perl $], $^X" );
