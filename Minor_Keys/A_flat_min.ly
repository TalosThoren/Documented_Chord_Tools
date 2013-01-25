% Description: Chord tool for the key of A Flat minor
% Author: Talos Thoren
% Date: January 24, 2013

\version "2.16.1"

\header
{
  title = "Key of A-Flat minor"
}

% Defining variables
% The Key of A Flat minor has seven flats:
% B-Flat, E-Flat, A-Flat, D-Flat, G-Flat, C-Flat, F-Flat (All notes are flat)
a_flat_min_triads = { \key aes \minor <aes ces ees>1  <bes des fes> <ces ees ges> <des fes aes> <ees ges bes> <fes aes ces> <ges bes des> <aes ces ees> }
a_flat_min_triadNames = \new ChordNames { \a_flat_min_triads }
chordTool = \new StaffGroup
{
  <<
  \new Staff
  {
    \relative c'
    << 
      \a_flat_min_triads 
      \a_flat_min_triadNames 
    >>
  }
  \new Staff \relative c
  {
    \clef bass
    <<
      \a_flat_min_triads
    >>
  }
  >>
}

\score
{
  \chordTool
}

