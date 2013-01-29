% Description: Chord tool for the key of A minor
% Author: Talos Thoren
% Date: January 24, 2013

\version "2.16.1"

\header
{
  title = "Key of A minor"
}

% Defining variables
a_min_triads = { \key a \minor <a c e>1  <b d f> <c e g> <d f a> <e g b> <f a c> <g b d> <a c e> }
a_min_triadNames = \new ChordNames { \a_min_triads }
chordTool = \new StaffGroup
{
  <<
  \new Staff
  {
    \relative c'
    << 
      \a_min_triads 
      \a_min_triadNames 
    >>
  }
  \new Staff \relative c
  {
    \clef bass
    <<
      \a_min_triads
    >>
  }
  >>
}

\score
{
  \chordTool
}

