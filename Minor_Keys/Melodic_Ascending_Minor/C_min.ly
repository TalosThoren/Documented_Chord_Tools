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

% Description: Chord tool for the key of C minor
% Author: Talos Thoren
% Date: January 24, 2013

\version "2.16.1"

\header
{
  title = "Key of C minor"
}

% Defining variables
% The Key of C minor has 3 flats:
% B-Flat, E-Flat, A-Flat
c_min_triads = { \key c \minor <c ees g>1  <d f a> <ees g b> <f a c> <g b d> <a c ees> <b d f> <c ees g> }
c_min_triadNames = \new ChordNames { \c_min_triads }

% Main Variable
chordTool = \new StaffGroup
{
  <<
    \new Staff
    {
      \relative c'
      << 
	\c_min_triads 
	\c_min_triadNames 
      >>
    }

    \new Staff \relative c,
    {
      \clef bass
      <<
	\c_min_triads
      >>
    }
  >>
}

\score
{
  \chordTool
}

