#!/usr/bin/perl

use Modern::Perl;
use lib qw( ./lib/ );
use RomanNumeralGenerator;

my $d = $ARGV[0] || die "syntax: $0 <digit>";

my $obj = RomanNumeralGenerator->new( number => $d );

say 'Roman Numeral: ' . $obj->generate();
