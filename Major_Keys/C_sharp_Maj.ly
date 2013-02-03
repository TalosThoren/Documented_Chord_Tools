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

% Description: Chord tool for the key of C-Sharp Major
% Author: Talos Thoren
% Date: January 23, 2013

\version "2.16.1"

\header
{
  title = "Key of C-Sharp Major"
}

% Variable for C-Sharp Major chord tool

% Key of C-Sharp Major has six sharps:
% F-Sharp, C-Sharp, G-Sharp, D-Sharp, A-Sharp, E-Sharp, B-Sharp (Every Note is sharp) 
c_sharp_maj_triads = { \key cis \major <cis eis gis>1 <dis fis ais> <eis gis bis> <fis ais cis> <gis bis dis> <ais cis eis> <bis dis fis> <cis eis gis> }
f_sharp_maj_triadNames = \new ChordNames { \c_sharp_maj_triads }
chordTool = \new StaffGroup
{
  <<
  \new Staff
  {
    \relative c'
    << 
      \c_sharp_maj_triads 
      \f_sharp_maj_triadNames 
    >>
  }
  \new Staff \relative c,
  {
    \clef bass
    <<
      \c_sharp_maj_triads
    >>
  }
  >>
}

\score
{
  \chordTool
}

