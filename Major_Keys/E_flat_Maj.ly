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

% Description: Chord tool for the key of E-Flat Major
% Author: Talos Thoren
% Date: January 23, 2013

\version "2.16.1"

\header
{
  title = "Key of E-Flat Major"
}

% Defining variables
% The Key of E-Flat Major has three flats:
% B-Flat, E-Flat, A-Flat
e_flat_maj_triads = { \key ees \major <ees g bes>1 <f aes c> <g bes d> <aes c ees> <bes d f> <c ees g> <d f aes> <ees g bes> }
e_flat_maj_triadNames = \new ChordNames { \e_flat_maj_triads }

% Some Chord Tools can use alternate starting
% octaves to facilitate ease of study
alt_treb_chordTool = \new Staff \relative c'
{
  <<
    \e_flat_maj_triads
    \e_flat_maj_triadNames
  >>
}

% Main variable
chordTool = \new StaffGroup
{
  <<
    \new Staff
    {
      \relative c
      << 
	\e_flat_maj_triads 
	%\e_flat_maj_triadNames 
      >>
    }

    \alt_treb_chordTool

    \new Staff \relative c,
    {
      \clef bass
      <<
	\e_flat_maj_triads
      >>
    }
  >>
}

\score
{
  \chordTool
}

