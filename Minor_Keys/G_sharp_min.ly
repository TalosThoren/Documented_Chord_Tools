% Description: Chord tool for the key of G Sharp minor
% Author: Talos Thoren
% Date: January 24, 2013

\version "2.16.1"

\header
{
  title = "Key of G-Sharp minor"
}

% Defining variables
% The Key of G Sharp minor has five sharps:
% F-Sharp, C-Sharp, G-Sharp, D-Sharp, A-Sharp
g_sharp_min_triads = { \key gis \minor <gis b dis>1  <ais cis e> <b dis fis> <cis e gis> <dis fis ais> <e gis b> <fis ais cis> <gis b dis> }
g_sharp_min_triadNames = \new ChordNames { \g_sharp_min_triads }

% Some Chord Tools can use alternate starting
% octaves to facilitate ease of study
alt_treb_chordTool = \new Staff \relative c'
{
  <<
    \g_sharp_min_triads
    \g_sharp_min_triadNames
  >>
}

% Main variable
chordTool = \new StaffGroup
{
  <<
    \new Staff
    {
      \relative c'
      << 
	\g_sharp_min_triads 
	%\g_sharp_min_triadNames 
      >>
    }

    \alt_treb_chordTool

    \new Staff \relative c
    {
      \clef bass
      <<
	\g_sharp_min_triads
      >>
    }
  >>
}

\score
{
  \chordTool
}


