BBCCK
=====
After you have done git clone https://github.com/hamsterish/BBCCK.git
then navigate to the BBCCK/ directory and run generate_roman_numeral.pl
with your chosen number as argument. The Roman numeral will print out on terminal.

Test files are placed in the t/
You can run the tests within the t/ directory: prove -v TestRomanNumeralConverter.t

Required cpan modules:
Modern::Perl
Moose
Math::Random
Moose::Util::TypeConstraints
Test::More
Test::Exception
