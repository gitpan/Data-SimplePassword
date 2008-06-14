#
# $Id: 99_pod-coverage.t 12 2008-06-14 09:27:57Z ryo $

use strict;
use warnings;
use Test::More;

eval "use Test::Pod::Coverage 1.06";
plan skip_all => "Test::Pod::Coverage 1.06 required for testing POD coverage"
	if $@;
all_pod_coverage_ok();

