% Description: Chord tool for the key of E Major
% Author: Talos Thoren
% Date: January 23, 2013

\version "2.16.1"

\header
{
  title = "Key of E Major"
}

% Variable for E Major chord tool

% Key of E Major has four sharps:
% F-Sharp, C-Sharp, G-Sharp, D-Sharp 
e_maj_triads = { \key e \major <e gis b>1 <fis a cis> <gis b dis > <a cis e> <b dis fis > <cis e gis> <dis fis a> <e gis b> }
triadNames = \new ChordNames { \e_maj_triads }
chordTool = \new StaffGroup
{
  <<
  \new Staff
  {
    \relative c'
    << 
      \e_maj_triads 
      \triadNames 
    >>
  }
  \new Staff \relative c,
  {
    \clef bass
    <<
      \e_maj_triads
    >>
  }
  >>
}

\score
{
  \chordTool
}

