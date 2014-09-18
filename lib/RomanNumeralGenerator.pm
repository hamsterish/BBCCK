package RomanNumeralGenerator;

=head
BBC Coding Kata
Roman Numerals
=cut

use Moose::Util::TypeConstraints;
use Moose;
use Modern::Perl;
use Math::Roman;

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
