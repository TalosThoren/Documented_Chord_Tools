% Description: Chord tool for the key of G Major
% Author: Talos Thoren
% Date: January 23, 2013

\version "2.16.1"

% Variable for G Major chord tool
triads = \relative c'
{
  \key g \major
  % C Maj chords used as a template
  %<c e g>1 <d f a> <e g b> <f a c> <g b d> <a c e> <b d f> <c e g>
  
  % Key of G Major has one sharp:
  % F-Sharp
  <g b d>1 <a c e> <b d fis> <c e g> <d fis a> <e g b> <fis a c> <g b d>
}


\score
{
  \new Staff
  {
    \triads
  }
}

