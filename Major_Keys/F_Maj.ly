% Description: Chord tool for the key of F Major
% Author: Talos Thoren
% Date: January 23, 2013

\version "2.16.1"

\header
{
  title = "Key of F Major"
}

% Defining variables
% The Key of F Major has one flat:
% B-Flat
f_maj_triads = { \key f \major <f a c>1 <g bes d> <a c e> <bes d f> <c e g> <d f a> <e g bes> <f a c> }
f_maj_triadNames = \new ChordNames { \f_maj_triads }

% Some Chord Tools can use alternate starting
% octaves to facilitate ease of study
alt_treb_chordTool = \new Staff \relative c'
{
  <<
    \f_maj_triads
    \f_maj_triadNames
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
	\f_maj_triads 
	%\f_maj_triadNames 
      >>
    }

    \alt_treb_chordTool

    \new Staff \relative c,
    {
      \clef bass
      <<
	\f_maj_triads
      >>
    }
  >>
}

\score
{
  \chordTool
}

