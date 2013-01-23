% Description: Chord tool for the key of F Major
% Author: Talos Thoren
% Date: January 23, 2013

\version "2.16.1"

% Defining variables
% The Key of F Major has one flat:
% B-Flat
f_maj_triads = { \key f \major <f a c>1 <g bes d> <a c e> <bes d f> <c e g> <d f a> <e g bes> <f a c> }
f_maj_triadNames = \new ChordNames { \f_maj_triads }
chordTool = \new StaffGroup
{
  <<
  \new Staff
  {
    \relative c'
    << 
      \f_maj_triads 
      \f_maj_triadNames 
    >>
  }
  \new Staff \relative c,
  {
    \clef bass
    <<
      \f_maj_triads
    >>
  }
  >>
}

\score
{
  \chordTool
}

