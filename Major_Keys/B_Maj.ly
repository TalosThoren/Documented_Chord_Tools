% Description: Chord tool for the key of B Major
% Author: Talos Thoren
% Date: January 23, 2013

\version "2.16.1"

\header
{
  title = "Key of B Major"
}

% Variable for B Major chord tool

% Key of B Major has five sharps:
% F-Sharp, C-Sharp, G-Sharp, D-Sharp, A-sharp 
b_maj_triads = { \key b \major <b dis fis>1 <cis e gis> <dis fis ais> <e gis b> <fis ais cis > <gis b dis> <ais cis e> <b dis fis> }
b_maj_triadNames = \new ChordNames { \b_maj_triads }

% Some Chord Tools can use alternate starting
% octaves to facilitate ease of study
alt_bass_chordTool = \new Staff \relative c
{
  \clef bass
  <<
    \b_maj_triads
  >>
}

%Main Variable
chordTool = \new StaffGroup
{
  <<
    \new Staff
    {
      \relative c'
      << 
	\b_maj_triads 
	\b_maj_triadNames 
      >>
    }

    \new Staff \relative c,
    {
      \clef bass
      <<
	\b_maj_triads
      >>
    }

    \alt_bass_chordTool
  >>
}

\score
{
  \chordTool
}

