% Description: Chord tool for the key of F Sharp minor
% Author: Talos Thoren
% Date: January 24, 2013

\version "2.16.1"

\header
{
  title = "Key of F-Sharp minor"
}

% Defining variables
% The Key of F Sharp minor has three sharps:
% F-Sharp, C-Sharp, G-Sharp
f_sharp_min_triads = { \key fis \minor <fis a cis>1  <gis b dis> <a cis eis> <b dis fis> <cis eis gis> <dis fis a> <eis gis b> <fis a cis> }
f_sharp_min_triadNames = \new ChordNames { \f_sharp_min_triads }

% Some Chord Tools can use alternate starting
% octaves to facilitate ease of study
alt_treb_chordTool = \new Staff \relative c'
{
  <<
    \f_sharp_min_triads
    \f_sharp_min_triadNames
  >>
}

chordTool = \new StaffGroup
{
  <<
    \new Staff
    {
      \relative c
      << 
	\f_sharp_min_triads 
	%\f_sharp_min_triadNames 
      >>
    }

    \alt_treb_chordTool

    \new Staff \relative c,
    {
      \clef bass
      <<
	\f_sharp_min_triads
      >>
    }
  >>
}

\score
{
  \chordTool
}

