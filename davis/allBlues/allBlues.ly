% Created on Fri Dec 31 19:24:11 CET 2010
\version "2.12.3"

\paper { }

\header {
title = "All Blues"
composer = "Miles Davis"
subtitle = "clarinette"

}

\paper {

}

\include "italiano.ly"

global = {
   \time 3/4
   \key fad \minor
   \clef treble
   \set Score.skipBars = ##t
}

staffClarinetteEnSib = \relative do' {           
   R2.*8
   
   \repeat "volta" 2 {\mark \markup \box { \musicglyph #"scripts.segno" } dod'2. ^"9"
   ~dod2 r8 mi,
   dod' re dod2~
   ~dod2 r8 mi,
   
   dod'2. ~
   dod4 r8 re dod mi,
   dod'2.
   ~dod2
   r4 
   
   si4.^"17" do8~do4
   re4. mi8~mi4
   re4. do8~do4
   
   si2~si8 mi,
   dod'2.~
   dod4. re8 dod la~
   la2.~
   la2 r8 lad 
   
   si2.~ ^"25"
   si
   do~
   do
   si
   dod
   si
   la \once \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible \mark \markup \box { \musicglyph #"scripts.coda" } \break
   
   r
   r
   r
   r
   r
   r
   r
   r
} 


\mark \markup {"Open for solos"}

\repeat "volta" 2 { 
   la8   si dod mi fa sol
   \improvisationOn \override Stem #'transparent = ##t
   la4 la la 
   la4 la la 
   la4 la la 
   la4 la la 
   la4 la la 
   la4 la la 
   la4 la la 
   \improvisationOff \override Stem #'transparent = ##f 



   la,8   si do re mi sol 
   \improvisationOn \override Stem #'transparent = ##t
   la4 la la 
   la4 la la 
   la4 la la 
   \improvisationOff \override Stem #'transparent = ##f 
   
   

   la,8   si dod mi fa sol 
   \improvisationOn \override Stem #'transparent = ##t
   la4 la la 
   la4 la la 
   la4 la la 
   \improvisationOff \override Stem #'transparent = ##f 
   

   mi,8  sol sold si dod re 
   \improvisationOn \override Stem #'transparent = ##t
   la4 la la 
   \improvisationOff \override Stem #'transparent = ##f 
   
   fa8  lab la do re mib
   mi,8  sol sold si dod re
   la,8  si dod mi fa sol 
   \improvisationOn \override Stem #'transparent = ##t
   la4 la la 
   la4 la la 
   la4 la la 
   \improvisationOff \override Stem #'transparent = ##f 
}

   \mark \markup {"Interlude"}
   la8   si dod mi fa sol
   \improvisationOn \override Stem #'transparent = ##t
   la4 la la 
   la4 la la 
   la4 la la 
   la4 la la 
   la4 la la 
   la4 la la 
   la4_\markup {"D.S al Coda"} la la 
   \improvisationOff \override Stem #'transparent = ##f 

   \bar "||"
   
   \mark \markup \box { \musicglyph #"scripts.coda" }  si2.~
   si
   do~^"molto ritard"
   do
   si
   \fermata
   \bar "||"

}
sauts= {
   s2.*16 \break
   \repeat unfold 6 { s2.*8 \break }   
   s2.*8 \break
    \overrideProperty #"Score.NonMusicalPaperColumn"
       #'line-break-system-details #'((Y-offset . 135))
   
}

harmonies = \chordmode {
   s2.*40
   la2.*8:7
   re2.*4:sus2
   la2.*4:7
   mi2.*2:7.9+
   fa2.:7.9+
   mi:7.9+
   la:7
}

\score {
   <<
   \new ChordNames \with { chordChanges = ##t} {\harmonies}
   \new Staff {
      \new Voice \with {\consists Pitch_squash_engraver}
      <<
      \sauts
      \global
      \staffClarinetteEnSib
      >>
   }
   >>
}
