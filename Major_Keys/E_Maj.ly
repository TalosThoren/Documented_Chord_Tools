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

% Description: Chord tool for the key of E Major
% Author: Talos Thoren
% Date: January 23, 2013

\version "2.16.1"

\header
{
  title = "Key of E Major"
}

% Variable for E Major chord tool

% Key of E Major has four sharps:
% F-Sharp, C-Sharp, G-Sharp, D-Sharp 
e_maj_triads = { \key e \major <e gis b>1 <fis a cis> <gis b dis > <a cis e> <b dis fis > <cis e gis> <dis fis a> <e gis b> }
e_maj_triadNames = \new ChordNames { \e_maj_triads }

% Some Chord Tools can use alternate starting
% octaves to facilitate ease of study
alt_treb_chordTool = \new Staff \relative c'
{
  <<
    \e_maj_triads
    \e_maj_triadNames
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
	\e_maj_triads 
	%\e_maj_triadNames 
      >>
    }

    \alt_treb_chordTool

    \new Staff \relative c,
    {
      \clef bass
      <<
	\e_maj_triads
      >>
    }
  >>
}

\score
{
  \chordTool
}

