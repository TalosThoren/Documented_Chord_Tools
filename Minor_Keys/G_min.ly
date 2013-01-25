% Description: Chord tool for the key of G minor
% Author: Talos Thoren
% Date: January 24, 2013

\version "2.16.1"

\header
{
  title = "Key of G minor"
}

% Defining variables
% The Key of G minor has two flats:
% B-Flat, E-Flat
g_min_triads = { \key g \minor <g bes d>1 <a c ees> <bes d f> <c e g> <d f a> <ees g bes> <f a c> <g bes d> }
g_min_triadNames = \new ChordNames { \g_min_triads }
chordTool = \new StaffGroup
{
  <<
  \new Staff
  {
    \relative c'
    << 
      \g_min_triads 
      \g_min_triadNames 
    >>
  }
  \new Staff \relative c
  {
    \clef bass
    <<
      \g_min_triads
    >>
  }
  >>
}

\score
{
  \chordTool
}

