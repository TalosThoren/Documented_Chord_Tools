% Description: Chord tool for the key of B Flat minor
% Author: Talos Thoren
% Date: January 24, 2013

\version "2.16.1"

\header
{
  title = "Key of B-Flat minor"
}

% Defining variables
% The Key of B Flat minor has five flats:
% B-Flat, E-Flat, A-Flat, D-Flat, G-Flat
b_flat_min_triads = { \key bes \minor <bes des f>1 <c ees ges> <des f a> <ees ges bes> <f a c> <ges bes des> <a c ees> <bes des f> }
b_flat_min_triadNames = \new ChordNames { \b_flat_min_triads }

% Some Chord Tools can use alternate starting
% octaves to facilitate ease of study
alt_bass_chordTool = \new Staff \relative c
{
  \clef bass
  <<
    \b_flat_min_triads
  >>
}

chordTool = \new StaffGroup
{
  <<
    \new Staff
    {
      \relative c'
      << 
	\b_flat_min_triads 
	\b_flat_min_triadNames 
      >>
    }

    \new Staff \relative c,
    {
      \clef bass
      <<
	\b_flat_min_triads
      >>
    }

    \alt_bass_chordTool
  >>
}

\score
{
  \chordTool
}

