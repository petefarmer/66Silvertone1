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
   instrumentName = \markup {\column {{"Guitar"}}}
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
