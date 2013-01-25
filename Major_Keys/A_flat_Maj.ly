% Description: Chord tool for the key of A-Flat Major
% Author: Talos Thoren
% Date: January 23, 2013

\version "2.16.1"

\header
{
  title = "Key of A-Flat Major"
}

% Defining variables
% The Key of A-Flat Major has four flats:
% B-Flat, E-Flat, A-Flat, D-Flat
a_flat_maj_triads = { \key aes \major <aes c ees>1 <bes des f> <c ees g> <des f aes> <ees g bes> <f aes c> <g bes des> <aes c ees> }
a_flat_maj_triadNames = \new ChordNames { \a_flat_maj_triads }
chordTool = \new StaffGroup
{
  <<
  \new Staff
  {
    \relative c'
    << 
      \a_flat_maj_triads 
      \a_flat_maj_triadNames 
    >>
  }
  \new Staff \relative c
  {
    \clef bass
    <<
      \a_flat_maj_triads
    >>
  }
  >>
}

\score
{
  \chordTool
}

