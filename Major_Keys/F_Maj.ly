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

% Description: Chord tool for the key of F Major
% Author: Talos Thoren
% Date: January 23, 2013

\version "2.16.1"

\header
{
  title = "Key of F Major"
}

% Defining variables
% The Key of F Major has one flat:
% B-Flat
f_maj_triads = { \key f \major <f a c>1 <g bes d> <a c e> <bes d f> <c e g> <d f a> <e g bes> <f a c> }
f_maj_triadNames = \new ChordNames { \f_maj_triads }

% Some Chord Tools can use alternate starting
% octaves to facilitate ease of study
alt_treb_chordTool = \new Staff \relative c'
{
  <<
    \f_maj_triads
    \f_maj_triadNames
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
	\f_maj_triads 
	%\f_maj_triadNames 
      >>
    }

    \alt_treb_chordTool

    \new Staff \relative c,
    {
      \clef bass
      <<
	\f_maj_triads
      >>
    }
  >>
}

\score
{
  \chordTool
}

