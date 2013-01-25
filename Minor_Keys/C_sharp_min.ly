% Description: Chord tool for the key of C Sharp minor
% Author: Talos Thoren
% Date: January 24, 2013

\version "2.16.1"

\header
{
  title = "Key of C_Sharp minor"
}

% Defining variables
% The Key of C Sharp minor has four sharps:
% F-Sharp, C-Sharp, G-Sharp, D-Sharp
c_sharp_min_triads = { \key cis \minor <cis e gis>1  <dis fis a> <e gis b> <fis a cis> <gis b dis> <a cis e> <b dis f> <cis e gis> }
c_sharp_min_triadNames = \new ChordNames { \c_sharp_min_triads }
chordTool = \new StaffGroup
{
  <<
  \new Staff
  {
    \relative c'
    << 
      \c_sharp_min_triads 
      \c_sharp_min_triadNames 
    >>
  }
  \new Staff \relative c,
  {
    \clef bass
    <<
      \c_sharp_min_triads
    >>
  }
  >>
}

\score
{
  \chordTool
}

