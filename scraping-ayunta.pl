#!/usr/bin/env perl

use Modern::Perl;
use autodie;

use LWP::Simple;
use Mojo::DOM;
use JSON;

my $url = "http://www.granada.org/contrata.nsf/lichis!OpenView&Start=1&Count=30&Expand=2#2";

my $dom = Mojo::DOM->new( get $url );

my $estados_granada = $dom->find("div.tablatr tr");

my @contratos;
for my $contrato (@$estados_granada ) {
  say $contrato->at("font")
    say encode_json $contrato;
}
say encode_json \@contratos;
