% Description: Chord tool for the key of E minor
% Author: Talos Thoren
% Date: January 24, 2013

\version "2.16.1"

% Defining variables
% The Key of E minor has one sharp:
% F-Sharp
e_min_triads = { \key e \minor <e g b>1  <fis a c> <g b d> <a c e> <b d fis> <c e g> <d fis a> <e g b> }
e_min_triadNames = \new ChordNames { \e_min_triads }
chordTool = \new StaffGroup
{
  <<
  \new Staff
  {
    \relative c'
    << 
      \e_min_triads 
      \e_min_triadNames 
    >>
  }
  \new Staff \relative c,
  {
    \clef bass
    <<
      \e_min_triads
    >>
  }
  >>
}

\score
{
  \chordTool
}

