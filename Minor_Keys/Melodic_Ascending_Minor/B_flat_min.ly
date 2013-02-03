% Copyright 2013 Talos Thoren

%    This file is part of the Chord Tools project.
%
%    Chord Tools is free software: you can redistribute it and/or modify
%    it under the terms of the GNU General Public License as published by
%    the Free Software Foundation, either version 3 of the License, or
%    (at your option) any later version.
%
%    Chord Tools is distributed in the hope that it will be useful,
%    but WITHOUT ANY WARRANTY; without even the implied warranty of
%    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
%    GNU General Public License for more details.
%
%    You should have received a copy of the GNU General Public License
%    along with Chord Tools.  If not, see <http://www.gnu.org/licenses/>.

% Description: Chord tool for the key of B Flat minor
% Author: Talos Thoren
% Date: January 24, 2013

\version "2.16.1"

\header
{
  title = "Key of B-Flat minor"
}

% Defining variables
% The Key of B Flat minor has five flats:
% B-Flat, E-Flat, A-Flat, D-Flat, G-Flat
b_flat_min_triads = { \key bes \minor <bes des f>1 <c ees g> <des f a> <ees g bes> <f a c> <g bes des> <a c ees> <bes des f> }
b_flat_min_triadNames = \new ChordNames { \b_flat_min_triads }

% Some Chord Tools can use alternate starting
% octaves to facilitate ease of study
alt_bass_chordTool = \new Staff \relative c
{
  \clef bass
  <<
    \b_flat_min_triads
  >>
}

chordTool = \new StaffGroup
{
  <<
    \new Staff
    {
      \relative c'
      << 
	\b_flat_min_triads 
	\b_flat_min_triadNames 
      >>
    }

    \new Staff \relative c,
    {
      \clef bass
      <<
	\b_flat_min_triads
      >>
    }

    \alt_bass_chordTool
  >>
}

\score
{
  \chordTool
}

