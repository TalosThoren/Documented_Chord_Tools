% Description: Chord tool for the key of D-Flat Major
% Author: Talos Thoren
% Date: January 23, 2013

\version "2.16.1"

% Defining variables
% The Key of D-Flat Major has five flats:
% B-Flat, E-Flat, A-Flat, D-Flat, G-Flat
d_flat_maj_triads = { \key des \major <des f aes>1 <ees ges bes> <f aes c> <ges bes des> <aes c ees> <bes des f> <c ees ges> <des f aes> }
d_flat_maj_triadNames = \new ChordNames { \d_flat_maj_triads }
chordTool = \new StaffGroup
{
  <<
  \new Staff
  {
    \relative c'
    << 
      \d_flat_maj_triads 
      \d_flat_maj_triadNames 
    >>
  }
  \new Staff \relative c,
  {
    \clef bass
    <<
      \d_flat_maj_triads
    >>
  }
  >>
}

\score
{
  \chordTool
}

