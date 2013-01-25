% Description: Chord tool for the key of E-Flat Major
% Author: Talos Thoren
% Date: January 23, 2013

\version "2.16.1"

\header
{
  title = "Key of E-Flat Major"
}

% Defining variables
% The Key of E-Flat Major has three flats:
% B-Flat, E-Flat, A-Flat
e_flat_maj_triads = { \key ees \major <ees g bes>1 <f aes c> <g bes d> <aes c ees> <bes d f> <c ees g> <d f aes> <ees g bes> }
e_flat_maj_triadNames = \new ChordNames { \e_flat_maj_triads }
chordTool = \new StaffGroup
{
  <<
  \new Staff
  {
    \relative c'
    << 
      \e_flat_maj_triads 
      \e_flat_maj_triadNames 
    >>
  }
  \new Staff \relative c,
  {
    \clef bass
    <<
      \e_flat_maj_triads
    >>
  }
  >>
}

\score
{
  \chordTool
}

