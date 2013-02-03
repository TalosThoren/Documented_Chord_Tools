% Description: Chord tool for the key of E minor
% Author: Talos Thoren
% Date: January 24, 2013

\version "2.16.1"

\header
{
  title = "Key of E minor"
}

% Defining variables
% The Key of E minor has one sharp:
% F-Sharp
e_min_triads = { \key e \minor <e g b>1  <fis a c> <g b d> <a c e> <b d fis> <c e g> <d fis a> <e g b> }
e_min_triadNames = \new ChordNames { \e_min_triads }

% Some Chord Tools can use alternate starting
% octaves to facilitate ease of study
alt_treb_chordTool = \new Staff \relative c'
{
  <<
    \e_min_triads
    \e_min_triadNames
  >>
}

% Main variable
chordTool = \new StaffGroup
{
  <<
    \new Staff
    {
      \relative c
      << 
	\e_min_triads 
	%\e_min_triadNames 
      >>
    }

    \alt_treb_chordTool

    \new Staff \relative c,
    {
      \clef bass
      <<
	\e_min_triads
      >>
    }
  >>
}

\score
{
  \chordTool
}

