use strict;
use warnings;
use lib qw(/home/hamid);
use Test::More;
use Test::Exception;
use Data::Dumper;

#Can you find/load module
require_ok('RomanNumeralGenerator');

my $test_obj = RomanNumeralGenerator->new();

#Test the methods I'll need to use
can_ok($test_obj, 'number');
can_ok($test_obj, 'generate');

#Test the range of numbers that can be passed to class
#should be anything between 1 and 3999
dies_ok { $test_obj->number( -2 ) } 
          '(-2) failed as expected... Number should be between 1..3999';
dies_ok { $test_obj->number( 40000 ) } 
          '(40000) failed as expected... Number should be between 1..3999';
lives_ok { $test_obj->number( 3050 ) } '(3050) passed as expected ;)';
lives_ok { $test_obj->number( 3999 ) } '(3999) passed as expected ;)';

#Test the results I get are as expected
my %testHash = ( 20 => "XX", 3999 => "MMMCMXCIX", 5 => "V" );

while ( my ($key, $value) = each %testHash ) {
    $test_obj->number($key);
    cmp_ok( $test_obj->generate($key), 'eq', $testHash{$key}, "Testing $key");
}

done_testing();
