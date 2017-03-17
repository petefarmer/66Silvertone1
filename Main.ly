% 66 Silvertone 1
\version "2.18.0"
%\include "definitions_No-Tab.ly"
\include "AGuitar.ly"
\include "BGuitar.ly"
\include "BGuitarShort.ly"
\include "CGuitar.ly"
\include "BGuitarLong.ly"
\include "BGuitarCoda.ly"

\book {
 \header {
  title = "'66 Silvertone 1"
  subtitle = "DRAFT"
  subsubtitle = "v0.1"
  composer = "John Jorgenson"
  copyright = \markup { \char ##x00A9 Copyright Jorgensongs 2014 }
 }

\score {
%\unfoldRepeats
\new StaffGroup <<
  \new Staff \with {
   instrumentName = \markup {\column {"Lead" \line {"Guitar"}}}
   \clef "treble_8"
  }{
   \key f \major
  \tempo 4 = 100
  \time 4/4 
   \AGuitar
   \BGuitar
   \BGuitarShort
   \CGuitar
   \AGuitar
   \BGuitarLong
   \BGuitarCoda

  }

% \new Staff \with {
%  instrumentName = \markup {\column {"Rhythm" \line {"Guitar"}}}
%  \clef "treble_8"
%  \key a \minor
%  }{
%  \time 3/4 
%  \time 3/4 
%  \tempo 4 = 100
%   \IntroRhythmGuitar
%  } % Staff (Guitar)
%  \new Staff {
%   \set Staff.instrumentName = #"Bass" 
%   \clef "bass"
%   \IntroBass
%   \SectionABass
%   \SectionBBass
%   \SectionABass
%   \SectionCBass
%   \SectionBBass
%   \SectionABass
%   \SectionCBass
%   \CodaBass
%  }

 >> % StaffGroup
 \layout {
  \context {
   \Score {
    \override StaffGrouper.staff-staff-spacing.padding = #5
    \override StaffGrouper.staff-staff-spacing.basic-distance = #5
   }
  }
  \context { \TabStaff \remove Clef_engraver }
 }
\midi {}
} % score
} % book
