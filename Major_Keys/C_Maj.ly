% Description: Chord tool for the key of C Major
% Author: Talos Thoren
% Date: January 23, 2013

\version "2.16.1"

% Defining variables
c_maj_triads = { \key c \major <c e g>1 <d f a> <e g b> <f a c> <g b d> <a c e> <b d f> <c e g> }
c_maj_triadNames = \new ChordNames { \c_maj_triads }
chordTool = \new StaffGroup
{
  <<
  \new Staff
  {
    \relative c'
    << 
      \c_maj_triads 
      \c_maj_triadNames 
    >>
  }
  \new Staff \relative c,
  {
    \clef bass
    <<
      \c_maj_triads
    >>
  }
  >>
}

\score
{
  \chordTool
}

