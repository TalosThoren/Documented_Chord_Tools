% Description: Chord tool for the key of G Major
% Author: Talos Thoren
% Date: January 23, 2013

\version "2.16.1"

% Defining variables
%
% Key of G Major has one sharp:
% F-Sharp
% For use with chordmode: { g1:maj a:m b:m c:maj d:maj e:m f:dim }
triads = { \key g \major <g b d>1 <a c e> <b d fis> <c e g> <d fis a> <e g b> <fis a c> }
triadNames = \new ChordNames { \triads }
chordTool = \new StaffGroup
{
  <<
  \new Staff
  {
    \relative c'
    << 
      \triads 
      \triadNames 
    >>
  }
  \new Staff \relative c,
  {
    \clef bass
    <<
      \triads
    >>
  }
  >>
}

\score
{
  \chordTool
}

