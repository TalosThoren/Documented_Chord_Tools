% Description: Chord tool for the key of C minor
% Author: Talos Thoren
% Date: January 24, 2013

\version "2.16.1"

\header
{
  title = "Key of C minor"
}

% Defining variables
% The Key of C minor has 3 flats:
% B-Flat, E-Flat, A-Flat
c_min_triads = { \key c \minor <c ees g>1  <d f a> <ees g b> <f a c> <g b d> <a c ees> <b d f> <c ees g> }
c_min_triadNames = \new ChordNames { \c_min_triads }

% Main Variable
chordTool = \new StaffGroup
{
  <<
    \new Staff
    {
      \relative c'
      << 
	\c_min_triads 
	\c_min_triadNames 
      >>
    }

    \new Staff \relative c,
    {
      \clef bass
      <<
	\c_min_triads
      >>
    }
  >>
}

\score
{
  \chordTool
}

