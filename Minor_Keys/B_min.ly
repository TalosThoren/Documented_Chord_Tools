% Description: Chord tool for the key of B minor
% Author: Talos Thoren
% Date: January 24, 2013

\version "2.16.1"

% Defining variables
% The Key of B minor has two sharps:
% F-Sharp, C-Sharp
b_min_triads = { \key b \minor <b d fis>1  <cis e g> <d fis a> <e g b > <fis a cis> <g b d> <a c e> <b d fis> }
b_min_triadNames = \new ChordNames { \b_min_triads }
chordTool = \new StaffGroup
{
  <<
  \new Staff
  {
    \relative c'
    << 
      \b_min_triads 
      \b_min_triadNames 
    >>
  }
  \new Staff \relative c
  {
    \clef bass
    <<
      \b_min_triads
    >>
  }
  >>
}

\score
{
  \chordTool
}

