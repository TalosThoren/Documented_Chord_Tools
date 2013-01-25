% Description: Chord tool for the key of D Sharp minor
% Author: Talos Thoren
% Date: January 24, 2013

\version "2.16.1"

% Defining variables
% The Key of D Sharp minor has six sharps:
% F-Sharp, C-Sharp, G-Sharp, D-Sharp, A-Sharp, E-Sharp
d_sharp_min_triads = { \key dis \minor <dis fis ais>1  <eis gis b> <fis ais cis> <gis b dis> <ais cis eis> <b dis fis> <cis eis gis> <dis fis ais> }
d_sharp_min_triadNames = \new ChordNames { \d_sharp_min_triads }
chordTool = \new StaffGroup
{
  <<
  \new Staff
  {
    \relative c'
    << 
      \d_sharp_min_triads 
      \d_sharp_min_triadNames 
    >>
  }
  \new Staff \relative c,
  {
    \clef bass
    <<
      \d_sharp_min_triads
    >>
  }
  >>
}

\score
{
  \chordTool
}

