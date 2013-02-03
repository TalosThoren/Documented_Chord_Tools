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

% Description: Chord tool for the key of B Major
% Author: Talos Thoren
% Date: January 23, 2013

\version "2.16.1"

\header
{
  title = "Key of B Major"
}

% Variable for B Major chord tool

% Key of B Major has five sharps:
% F-Sharp, C-Sharp, G-Sharp, D-Sharp, A-sharp 
b_maj_triads = { \key b \major <b dis fis>1 <cis e gis> <dis fis ais> <e gis b> <fis ais cis > <gis b dis> <ais cis e> <b dis fis> }
b_maj_triadNames = \new ChordNames { \b_maj_triads }

% Some Chord Tools can use alternate starting
% octaves to facilitate ease of study
alt_bass_chordTool = \new Staff \relative c
{
  \clef bass
  <<
    \b_maj_triads
  >>
}

%Main Variable
chordTool = \new StaffGroup
{
  <<
    \new Staff
    {
      \relative c'
      << 
	\b_maj_triads 
	\b_maj_triadNames 
      >>
    }

    \new Staff \relative c,
    {
      \clef bass
      <<
	\b_maj_triads
      >>
    }

    \alt_bass_chordTool
  >>
}

\score
{
  \chordTool
}

