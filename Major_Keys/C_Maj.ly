% Description: Chord tool for the key of C Major
% Author: Talos Thoren
% Date: January 23, 2013

\version "2.16.1"

\include "chordTool.ly"

% Defining variables
%
% For use without chordmode (more stable behavior):
%   <c e g>1 <d f a> <e g b> <f a c> <g b d> <a c e> <b d f> <c e g> 
%
% For use with chordmode: { c1:maj d:m e:m f:maj g:maj a:m b:dim }
% chordmode is unpredictable
triads = %{ \chordmode %} { \key c \major <c e g>1 <d f a> <e g b> <f a c> <g b d> <a c e> <b d f> <c e g> }
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

