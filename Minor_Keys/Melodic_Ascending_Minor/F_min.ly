% Description: Chord tool for the key of F minor
% Author: Talos Thoren
% Date: January 24, 2013

\version "2.16.1"

\header
{
  title = "Key of F minor"
}

% Defining variables
% The Key of F minor has four flats:
% B-Flat, E-Flat, A-Flat, D-Flat
f_min_triads = { \key f \minor <f aes c>1 <g bes d> <aes c e> <bes d f> <c e g> <d f aes> <e g bes> <f aes c> }
f_min_triadNames = \new ChordNames { \f_min_triads }

% Some Chord Tools can use alternate starting
% octaves to facilitate ease of study
alt_treb_chordTool = \new Staff \relative c'
{
  <<
    \f_min_triads
    \f_min_triadNames
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
	\f_min_triads 
	%\f_min_triadNames 
      >>
    }

    \alt_treb_chordTool

    \new Staff \relative c,
    {
      \clef bass
      <<
	\f_min_triads
      >>
    }
  >>
}

\score
{
  \chordTool
}

