% Description: Chord tool for the key of A Sharp minor
% Author: Talos Thoren
% Date: January 24, 2013

\version "2.16.1"

\header
{
  title = "Key of A-Sharp minor"
}

% Defining variables
% The Key of A Sharp minor has seven sharps:
% F-Sharp, C-Sharp, G-Sharp, D-Sharp, A-Sharp, E-Sharp, B-Sharp (Every note is sharp)
a_sharp_min_triads = { \key ais \minor <ais cis eis>1  <bis dis fis> <cis eis gis> <dis fis ais> <eis gis bis> <fis ais cis> <gis bis dis> <ais cis eis> }
a_sharp_min_triadNames = \new ChordNames { \a_sharp_min_triads }
chordTool = \new StaffGroup
{
  <<
  \new Staff
  {
    \relative c'
    << 
      \a_sharp_min_triads 
      \a_sharp_min_triadNames 
    >>
  }
  \new Staff \relative c
  {
    \clef bass
    <<
      \a_sharp_min_triads
    >>
  }
  >>
}

\score
{
  \chordTool
}


