% Description: Chord tool for the key of B Flat minor
% Author: Talos Thoren
% Date: January 24, 2013

\version "2.16.1"

% Defining variables
% The Key of B Flat minor has five flats:
% B-Flat, E-Flat, A-Flat, D-Flat, G-Flat
b_flat_min_triads = { \key bes \minor <bes des f>1 <c ees ges> <des f aes> <ees ges bes> <f aes c> <ges bes des> <aes c ees> <bes des f> }
b_flat_min_triadNames = \new ChordNames { \b_flat_min_triads }
chordTool = \new StaffGroup
{
  <<
  \new Staff
  {
    \relative c'
    << 
      \b_flat_min_triads 
      \b_flat_min_triadNames 
    >>
  }
  \new Staff \relative c,
  {
    \clef bass
    <<
      \b_flat_min_triads
    >>
  }
  >>
}

\score
{
  \chordTool
}

