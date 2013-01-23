% Description: Chord tool for the key of G-Flat Major
% Author: Talos Thoren
% Date: January 23, 2013

\version "2.16.1"

% Defining variables
% The Key of G-Flat Major has six flats:
% B-Flat, E-Flat, A-Flat, D-Flat, G-Flat, C-Flat
g_flat_maj_triads = { \key ges \major <ges bes des>1 <aes ces ees> <bes des f> <ces ees ges> <des f aes> <ees ges bes> <f aes ces> <ges bes des> }
g_flat_maj_triadNames = \new ChordNames { \g_flat_maj_triads }
chordTool = \new StaffGroup
{
  <<
  \new Staff
  {
    \relative c'
    << 
      \g_flat_maj_triads 
      \g_flat_maj_triadNames 
    >>
  }
  \new Staff \relative c,
  {
    \clef bass
    <<
      \g_flat_maj_triads
    >>
  }
  >>
}

\score
{
  \chordTool
}

