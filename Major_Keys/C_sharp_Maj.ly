% Description: Chord tool for the key of C-Sharp Major
% Author: Talos Thoren
% Date: January 23, 2013

\version "2.16.1"

% Variable for C-Sharp Major chord tool

% Key of C-Sharp Major has six sharps:
% F-Sharp, C-Sharp, G-Sharp, D-Sharp, A-Sharp, E-Sharp, B-Sharp (Every Note is sharp) 
c_sharp_maj_triads = { \key cis \major <cis eis gis>1 <dis fis ais> <eis gis bis> <fis ais cis> <gis bis dis> <ais cis eis> <bis dis fis> <cis eis gis> }
f_sharp_maj_triadNames = \new ChordNames { \c_sharp_maj_triads }
chordTool = \new StaffGroup
{
  <<
  \new Staff
  {
    \relative c'
    << 
      \c_sharp_maj_triads 
      \f_sharp_maj_triadNames 
    >>
  }
  \new Staff \relative c,
  {
    \clef bass
    <<
      \c_sharp_maj_triads
    >>
  }
  >>
}

\score
{
  \chordTool
}

