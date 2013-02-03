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

% Description: Chord tool for the key of C-Flat Major
% Author: Talos Thoren
% Date: January 23, 2013

\version "2.16.1"

\header
{
  title = "Key of C-Flat Major"
}

% Defining variables
% The Key of C-Flat Major has seven flats:
% B-Flat, E-Flat, A-Flat, D-Flat, G-Flat, C-Flat, F-Flat (All notes are flat)
c_flat_maj_triads = { \key ces \major <ces ees ges>1 <des fes aes> <ees ges bes> <fes aes ces> <ges bes des> <aes ces ees> <bes des fes> <ces ees ges> }
c_flat_maj_triadNames = \new ChordNames { \c_flat_maj_triads }
chordTool = \new StaffGroup
{
  <<
  \new Staff
  {
    \relative c'
    << 
      \c_flat_maj_triads 
      \c_flat_maj_triadNames 
    >>
  }
  \new Staff \relative c,
  {
    \clef bass
    <<
      \c_flat_maj_triads
    >>
  }
  >>
}

\score
{
  \chordTool
}

