% Description: Chord tool for the key of E Flat minor
% Author: Talos Thoren
% Date: January 24, 2013

\version "2.16.1"

\header
{
  title = "Key of E-Flat minor"
}

% Defining variables
% The Key of E Flat minor has six flats:
% B-Flat, E-Flat, A-Flat, D-Flat, G-Flat, C-Flat
e_flat_min_triads = { \key ees \minor <ees ges bes>1 <f aes ces > <ges bes des> <aes ces ees> <bes des f> <ces ees ges> <des f aes> <ees ges bes> }
e_flat_min_triadNames = \new ChordNames { \e_flat_min_triads }
chordTool = \new StaffGroup
{
  <<
  \new Staff
  {
    \relative c'
    << 
      \e_flat_min_triads 
      \e_flat_min_triadNames 
    >>
  }
  \new Staff \relative c,
  {
    \clef bass
    <<
      \e_flat_min_triads
    >>
  }
  >>
}

\score
{
  \chordTool
}

