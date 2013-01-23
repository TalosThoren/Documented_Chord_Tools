% Description: Chord tool for the key of C-Flat Major
% Author: Talos Thoren
% Date: January 23, 2013

\version "2.16.1"

% Defining variables
% The Key of C-Flat Major has seven flats:
% B-Flat, E-Flat, A-Flat, D-Flat, G-Flat, C-Flat, F-Flat (All notes are flat)
c_flat_maj_triads = { \key ces \major <ces ees ges>1 <des fes aes> <ees ges bes> <fes aes ces> <ges bes des> <aes ces ees> <bes des fes> <ces ees ges> }
c_flat_maj_triadNames = \new ChordNames { \c_flat_maj_triads }
chordTool = \new StaffGroup
{
  <<
  \new Staff
  {
    \relative c'
    << 
      \c_flat_maj_triads 
      \c_flat_maj_triadNames 
    >>
  }
  \new Staff \relative c,
  {
    \clef bass
    <<
      \c_flat_maj_triads
    >>
  }
  >>
}

\score
{
  \chordTool
}

