package RomanNumeralGenerator;


=head1 NAME

RomanNumeralGenerator - generate Roman numerals from numbers

=head1 DESCRIPTION

A BBC Coding Kata project

=head1 USAGE

use RomanNumeralGenerator;

my $obj = RomanNumeralGenerator->new( number => 10 );

print $obj->generate(); #give you "X"

=cut

use Moose::Util::TypeConstraints;
use Moose;
use Modern::Perl;
use Math::Roman;

=head2 number

Only accept numbers between 1 and 3999. 
so dont be trying anything out of that range ;)

=cut

has 'number' => (
    is => 'rw',
    isa => subtype(
	as 'Int',
	where { $_ >= 1 && $_ <= 3999 },
	
    ),
);

sub generate {
    my $self = shift;

    my $res = Math::Roman->bzero();  
    
    return $res += $self->number;
}


__PACKAGE__->meta->make_immutable;
1;
