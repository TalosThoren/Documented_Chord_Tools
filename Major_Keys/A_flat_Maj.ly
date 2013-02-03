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

% Description: Chord tool for the key of A-Flat Major
% Author: Talos Thoren
% Date: January 23, 2013

\version "2.16.1"

\header
{
  title = "Key of A-Flat Major"
}

% Defining variables
% The Key of A-Flat Major has four flats:
% B-Flat, E-Flat, A-Flat, D-Flat
a_flat_maj_triads = { \key aes \major <aes c ees>1 <bes des f> <c ees g> <des f aes> <ees g bes> <f aes c> <g bes des> <aes c ees> }
a_flat_maj_triadNames = \new ChordNames { \a_flat_maj_triads }

% Some Chord Tools can use alternate starting
% octaves to facilitate ease of study
alt_treb_chordTool = \new Staff \relative c''
{
  <<
    \a_flat_maj_triads
    \a_flat_maj_triadNames
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
	\a_flat_maj_triads 
	%\a_flat_maj_triadNames 
      >>
    }

    \alt_treb_chordTool

    \new Staff \relative c
    {
      \clef bass
      <<
	\a_flat_maj_triads
      >>
    }
  >>
}

\score
{
  \chordTool
}

