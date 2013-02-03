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

% Author: Talos Thoren
% Date: January 23, 2013
% Description: Chord tool for the key of A Major

\version "2.16.1"

\header
{
  title = "Key of A Major"
}

% Variable for A Major chord tool

% Key of A Major has three sharps:
% F-Sharp, C-Sharp, G-Sharp
a_maj_triads = { \key a \major <a cis e>1 <b d fis> <cis e gis> <d fis a> <e gis b> <fis a cis > <gis b d> <a cis e> }
a_maj_triadNames = \new ChordNames { \a_maj_triads }

% Some Chord Tools can use alternate starting
% octaves to facilitate ease of study
alt_treb_chordTool = \new Staff \relative c''
{
  <<
    \a_maj_triads
    \a_maj_triadNames
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
	\a_maj_triads 
	% a_maj_triadNames will be displayed beneath the alternate
	% treble staff.
	%
	% \a_maj_triadNames 
      >>
    }

    \alt_treb_chordTool

    \new Staff \relative c
    {
      \clef bass
      <<
	\a_maj_triads
      >>
    }
  >>
}

\score
{
  \chordTool
}

