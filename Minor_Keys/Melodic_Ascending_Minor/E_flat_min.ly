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

% Description: Chord tool for the key of E Flat minor
% Author: Talos Thoren
% Date: January 24, 2013

\version "2.16.1"

\header
{
  title = "Key of E-Flat minor"
}

% Defining variables
% The Key of E Flat minor has six flats:
% B-Flat, E-Flat, A-Flat, D-Flat, G-Flat, C-Flat
e_flat_min_triads = { \key ees \minor <ees ges bes>1 <f aes c > <ges bes d> <aes c ees> <bes d f> <c ees ges> <d f aes> <ees ges bes> }
e_flat_min_triadNames = \new ChordNames { \e_flat_min_triads }

% Some Chord Tools can use alternate starting
% octaves to facilitate ease of study
alt_treb_chordTool = \new Staff \relative c'
{
  <<
    \e_flat_min_triads
    \e_flat_min_triadNames
  >>
}

% Main Variable
chordTool = \new StaffGroup
{
  <<
    \new Staff
    {
      \relative c
      << 
	\e_flat_min_triads 
	%\e_flat_min_triadNames 
      >>
    }

    \alt_treb_chordTool

    \new Staff \relative c,
    {
      \clef bass
      <<
	\e_flat_min_triads
      >>
    }
  >>
}

\score
{
  \chordTool
}

