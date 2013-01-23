% Description: Chord tool for the key of A Major
% Author: Talos Thoren
% Date: January 23, 2013

\version "2.16.1"

% Variable for A Major chord tool

% Key of A Major has three sharps:
% F-Sharp, C-Sharp, G-Sharp
a_maj_triads = { \key a \major <a cis e>1 <b d fis> <cis e gis> <d fis a> <e gis b> <fis a cis > <gis b d> <a cis e> }
triadNames = \new ChordNames { \a_maj_triads }
chordTool = \new StaffGroup
{
  <<
  \new Staff
  {
    \relative c'
    << 
      \a_maj_triads 
      \triadNames 
    >>
  }
  \new Staff \relative c,
  {
    \clef bass
    <<
      \a_maj_triads
    >>
  }
  >>
}

\score
{
  \chordTool
}

