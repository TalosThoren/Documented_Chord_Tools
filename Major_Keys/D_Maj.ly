% Description: Chord tool for the key of D Major
% Author: Talos Thoren
% Date: January 23, 2013

\version "2.16.1"

% Variable for D Major chord tool
triads = \relative c'
{
  \key d \major
  % C Maj chords used as a template
  %<c e g>1 <d f a> <e g b> <f a c> <g b d> <a c e> <b d f> <c e g>
  
  % Key of D Major has two sharps:
  % F-Sharp, C-Sharp
  <d fis a>1 <e g b> <fis a cis> <g b d> <a cis e> <b d fis> <cis e g> <d fis a>
}


\score
{
  \new Staff
  {
    \triads
  }
}


