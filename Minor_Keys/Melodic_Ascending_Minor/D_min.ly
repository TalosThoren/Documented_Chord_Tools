% Description: Chord tool for the key of D minor
% Author: Talos Thoren
% Date: January 24, 2013

\version "2.16.1"

\header
{
  title = "Key of D minor"
}

% Defining variables
% The key of D minor has one flat:
% B Flat
d_min_triads = { \key d \minor <d f a>1 <e g b> <f a cis> <g b d> <a cis e> <b d f> <cis e g> <d f a> }
d_min_triadNames = \new ChordNames { \d_min_triads }

% Main Variable
chordTool = \new StaffGroup
{
  <<
    \new Staff
    {
      \relative c'
      << 
	\d_min_triads 
	\d_min_triadNames 
      >>
    }

    \new Staff \relative c,
    {
      \clef bass
      <<
	\d_min_triads
      >>
    }
  >>
}

\score
{
  \chordTool
}

