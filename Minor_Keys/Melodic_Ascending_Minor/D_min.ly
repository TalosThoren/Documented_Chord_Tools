% Description: Chord tool for the key of D minor
% Author: Talos Thoren
% Date: January 24, 2013

\version "2.16.1"

% Defining variables
% The key of D minor has one flat:
% B Flat
d_min_triads = { \key d \minor <d f a>1 <e g bes> <f a c> <g bes d> <a c e> <bes d f> <c e g> <d f a> }
d_min_triadNames = \new ChordNames { \d_min_triads }
chordTool = \new StaffGroup
{
  <<
  \new Staff
  {
    \relative c'
    << 
      \d_min_triads 
      \d_min_triadNames 
    >>
  }
  \new Staff \relative c,
  {
    \clef bass
    <<
      \d_min_triads
    >>
  }
  >>
}

\score
{
  \chordTool
}
