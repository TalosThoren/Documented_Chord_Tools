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

% Description: Chord tool for the key of D Sharp minor
% Author: Talos Thoren
% Date: January 24, 2013

\version "2.16.1"

\header
{
  title = "Key of D-Sharp minor"
}

% Defining variables
% The Key of D Sharp minor has six sharps:
% F-Sharp, C-Sharp, G-Sharp, D-Sharp, A-Sharp, E-Sharp
d_sharp_min_triads = { \key dis \minor <dis fis ais>1  <eis gis b> <fis ais cisis> <gis b dis> <ais cisis eis> <b dis fis> <cisis eis gis> <dis fis ais> }
d_sharp_min_triadNames = \new ChordNames { \d_sharp_min_triads }
chordTool = \new StaffGroup
{
  <<
  \new Staff
  {
    \relative c'
    << 
      \d_sharp_min_triads 
      \d_sharp_min_triadNames 
    >>
  }
  \new Staff \relative c,
  {
    \clef bass
    <<
      \d_sharp_min_triads
    >>
  }
  >>
}

\score
{
  \chordTool
}


