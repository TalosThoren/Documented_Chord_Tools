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

% Description: Chord tool for the key of C Sharp minor
% Author: Talos Thoren
% Date: January 24, 2013

\version "2.16.1"

\header
{
  title = "Key of C_Sharp minor"
}

% Defining variables
% The Key of C Sharp minor has four sharps:
% F-Sharp, C-Sharp, G-Sharp, D-Sharp
c_sharp_min_triads = { \key cis \minor <cis e gis>1  <dis fis ais> <e gis bis> <fis ais cis> <gis bis dis> <ais cis e> <bis dis fis> <cis e gis> }
c_sharp_min_triadNames = \new ChordNames { \c_sharp_min_triads }

% Main Variable
chordTool = \new StaffGroup
{
  <<
    \new Staff
    {
      \relative c'
      << 
	\c_sharp_min_triads 
	\c_sharp_min_triadNames 
      >>
    }

    \new Staff \relative c,
    {
      \clef bass
      <<
	\c_sharp_min_triads
      >>
    }
  >>
}

\score
{
  \chordTool
}

