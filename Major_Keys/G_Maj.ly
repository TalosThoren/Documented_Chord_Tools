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

% Description: Chord tool for the key of G Major
% Author: Talos Thoren
% Date: January 23, 2013

\version "2.16.1"

\header
{
  title = "Key of G Major"
}

% Defining variables
%
% Key of G Major has one sharp:
% F-Sharp
% For use with chordmode: { g1:maj a:m b:m c:maj d:maj e:m f:dim g:maj }
g_maj_triads = { \key g \major <g b d>1 <a c e> <b d fis> <c e g> <d fis a> <e g b> <fis a c> <g b d> }
g_maj_triadNames = \new ChordNames { \g_maj_triads }

% Some Chord Tools can use alternate starting
% octaves to facilitate ease of study
alt_treb_chordTool = \new Staff \relative c''
{
  <<
    \g_maj_triads
    \g_maj_triadNames
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
	\g_maj_triads 
	%\g_maj_triadNames 
      >>
    }

    \alt_treb_chordTool

    \new Staff \relative c
    {
      \clef bass
      <<
	\g_maj_triads
      >>
    }
  >>
}

\score
{
  \chordTool
}
