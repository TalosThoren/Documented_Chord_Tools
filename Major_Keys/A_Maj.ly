% Description: Chord tool for the key of A Major
% Author: Talos Thoren
% Date: January 23, 2013

\version "2.16.1"

\header
{
  title = "Key of A Major"
}

% Variable for A Major chord tool

% Key of A Major has three sharps:
% F-Sharp, C-Sharp, G-Sharp
a_maj_triads = { \key a \major <a cis e>1 <b d fis> <cis e gis> <d fis a> <e gis b> <fis a cis > <gis b d> <a cis e> }
a_maj_triadNames = \new ChordNames { \a_maj_triads }

% Some Chord Tools can use alternate starting
% octaves to facilitate ease of study
alt_treb_chordTool = \new Staff \relative c''
{
  <<
    \a_maj_triads
    \a_maj_triadNames
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
	\a_maj_triads 
	% a_maj_triadNames will be displayed beneath the alternate
	% treble staff.
	%
	% \a_maj_triadNames 
      >>
    }

    \alt_treb_chordTool

    \new Staff \relative c
    {
      \clef bass
      <<
	\a_maj_triads
      >>
    }
  >>
}

\score
{
  \chordTool
}

