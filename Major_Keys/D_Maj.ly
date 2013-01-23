% Description: Chord tool for the key of D Major
% Author: Talos Thoren
% Date: January 23, 2013

\version "2.16.1"

% Variable for D Major chord tool

% Key of D Major has two sharps:
% F-Sharp, C-Sharp
d_maj_triads = { \key d \major <d fis a>1 <e g b> <fis a cis> <g b d> <a cis e> <b d fis> <cis e g> <d fis a> }
triadNames = \new ChordNames { \d_maj_triads }
chordTool = \new StaffGroup
{
  <<
  \new Staff
  {
    \relative c'
    << 
      \d_maj_triads 
      \triadNames 
    >>
  }
  \new Staff \relative c,
  {
    \clef bass
    <<
      \d_maj_triads
    >>
  }
  >>
}

\score
{
  \chordTool
}
