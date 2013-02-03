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

% Description: Chord tool for the key of D-Flat Major
% Author: Talos Thoren
% Date: January 23, 2013

\version "2.16.1"

\header
{
  title = "Key of D-Flat Major"
}

% Defining variables
% The Key of D-Flat Major has five flats:
% B-Flat, E-Flat, A-Flat, D-Flat, G-Flat
d_flat_maj_triads = { \key des \major <des f aes>1 <ees ges bes> <f aes c> <ges bes des> <aes c ees> <bes des f> <c ees ges> <des f aes> }
d_flat_maj_triadNames = \new ChordNames { \d_flat_maj_triads }
chordTool = \new StaffGroup
{
  <<
  \new Staff
  {
    \relative c'
    << 
      \d_flat_maj_triads 
      \d_flat_maj_triadNames 
    >>
  }
  \new Staff \relative c,
  {
    \clef bass
    <<
      \d_flat_maj_triads
    >>
  }
  >>
}

\score
{
  \chordTool
}

