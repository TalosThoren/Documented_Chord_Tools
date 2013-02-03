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

% Description: Chord tool for the key of A Flat minor
% Author: Talos Thoren
% Date: January 24, 2013

\version "2.16.1"

\header
{
  title = "Key of A-Flat minor"
}

% Defining variables
% The Key of A Flat minor has seven flats:
% B-Flat, E-Flat, A-Flat, D-Flat, G-Flat, C-Flat, F-Flat (All notes are flat)
a_flat_min_triads = { \key aes \minor <aes ces ees>1  <bes des fes> <ces ees ges> <des fes aes> <ees ges bes> <fes aes ces> <ges bes des> <aes ces ees> }
a_flat_min_triadNames = \new ChordNames { \a_flat_min_triads }

% Some Chord Tools can use alternate starting
% octaves to facilitate ease of study
alt_treb_chordTool = \new Staff \relative c''
{
  <<
    \a_flat_min_triads
    \a_flat_min_triadNames
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
	\a_flat_min_triads 
	%\a_flat_min_triadNames 
      >>
    }

    \alt_treb_chordTool

    \new Staff \relative c
    {
      \clef bass
      <<
	\a_flat_min_triads
      >>
    }
  >>
}

\score
{
  \chordTool
}

