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

% Description: Chord tool for the key of A Sharp minor
% Author: Talos Thoren
% Date: January 24, 2013

\version "2.16.1"

\header
{
  title = "Key of A-Sharp minor"
}

% Defining variables
% The Key of A Sharp minor has seven sharps:
% F-Sharp, C-Sharp, G-Sharp, D-Sharp, A-Sharp, E-Sharp, B-Sharp (Every note is sharp)
a_sharp_min_triads = { \key ais \minor <ais cis eis>1  <bis dis fisis> <cis eis gisis> <dis fisis ais> <eis gisis bis> <fisis ais cis> <gisis bis dis> <ais cis eis> }
a_sharp_min_triadNames = \new ChordNames { \a_sharp_min_triads }

% Some Chord Tools can use alternate starting
% octaves to facilitate ease of study
alt_treb_chordTool = \new Staff \relative c''
{
  <<
    \a_sharp_min_triads
    \a_sharp_min_triadNames
  >>
}

chordTool = \new StaffGroup
{
  <<
    \new Staff
    {
      \relative c'
      << 
	\a_sharp_min_triads 
	%\a_sharp_min_triadNames 
      >>
    }

    \alt_treb_chordTool

    \new Staff \relative c
    {
      \clef bass
      <<
	\a_sharp_min_triads
      >>
    }
  >>
}

\score
{
  \chordTool
}


