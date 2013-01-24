% Description: Chord tool for the key of F minor
% Author: Talos Thoren
% Date: January 24, 2013

\version "2.16.1"

% Defining variables
% The Key of F minor has four flats:
% B-Flat, E-Flat, A-Flat, D-Flat
f_min_triads = { \key f \minor <f aes c>1 <g bes des> <aes c ees> <bes des f> <c ees g> <des f aes> <ees g bes> <f aes c> }
f_min_triadNames = \new ChordNames { \f_min_triads }
chordTool = \new StaffGroup
{
  <<
  \new Staff
  {
    \relative c'
    << 
      \f_min_triads 
      \f_min_triadNames 
    >>
  }
  \new Staff \relative c,
  {
    \clef bass
    <<
      \f_min_triads
    >>
  }
  >>
}

\score
{
  \chordTool
}

