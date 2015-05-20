\version "2.18.2"

\header {
  title = "Cocek"
  subtitle = "from Underground"
  composer = "Goran Bregovic"
  arranger = "JeD"
  copyright = "2015"
}

\paper {
  #(set-paper-size "a4")
}

global = {
  \key bes \minor
  \time 4/4
}

chordSequence = \chordmode {
  % theme I
  f1 | f | f | ees2:m f2 |
  f1 | f | f | ees2:m f2 |
  % theme II 
  ees2:m f2 |  ees2:m f2 |  ees2:m f2 |  ees2:m f2 |  
  ees2:m f2 |  ees2:m f2 |  ees2:m f2 |  ees2:m f2 | 
  % theme III
  bes1:m | f | ees:m | f |
  bes:m | f | ees:m | f |
  % break
  bes2:m ges:6 |
  ees:m7 f |
  ees:m7 f |
  ees:m7 f |
  bes2:m ges:6 |
  ees:m7 f |
  ees:m7 f |
  ees:m7 f |
  % theme I
  f1 | f | f | ees2:m f2 |
  f1 | f | f | ees2:m f2 |
}

globalStructure = {
  s1^\markup{"Theme I"} |
  s1*7
  s1^\markup{"Theme II"} |
  s1*7 
  s1^\markup{"Theme III"} |
  s1*7 
  s1^\markup{"Break"}
  s1*7
  s1^\markup{"Theme I"}
  s1*7
  \bar "|."
}

leadOne = \relative f' {
  % theme I
  a8. f'16 ees des c bes c8. f16 ees des c bes |
  a8. f'16 ees des c bes des8 \appoggiatura{c32 des} c8 r4 |
  a8. f'16 ees des c bes c8. f16 ees des c bes |
  ges8. des'16 c des c bes bes8 \appoggiatura{a32 bes} a8~ a4 |
  a8. f'16 ees des c bes c8. f16 ees des c bes |
  a8. f'16 ees des c bes des8 \appoggiatura{c32 des} c8 r4 |
  a8. f'16 ees des c bes c8. f16 ees des c bes |
  ges8. des'16 c des c bes bes8 \appoggiatura{a32 bes} a8~ a4 |
  % theme II
  ges8. des'16 c des c bes a8. ges16 a bes c8-. |
  ges8. des'16 c des c bes a8 \breathe c16 des ees c des bes |
  ges8. des'16 c des c bes a8. ges16 a bes c8-. |
  ges8. des'16 c des c bes a4~ a8 r |
  ges8. des'16 c des c bes a8. ges16 a bes c8-. |
  ges8. des'16 c des c bes a8 \breathe c16 des ees c des bes |
  ges8. des'16 c des c bes a8. ges16 a bes c8-. |
  ges8. des'16 c des c bes a4~ a8 r |
  % theme III
  des8 des c des ees f16 ges ees f des ees |
  c8 c bes c des ees16 f des ees c des |
  bes8 bes a bes c des16 ees c des bes c |
  bes8 \grace{a16 bes} a4 \breathe c16 des ees c des bes a c des ees |
  des8 des c des ees f16 ges ees f des ees |
  c8 c bes c des ees16 f des ees c des |
  bes8 bes a bes c des16 ees c des bes c |
  bes8 \grace{a16 bes} a4 \breathe c16 des ees c des bes a4 |
  % break 
  R1*3 |
  r2 r16 bes a bes c des ees f |
  R1*4 |
  % theme I
  a,8. f'16 ees des c bes c8. f16 ees des c bes |
  a8. f'16 ees des c bes des8 \appoggiatura{c32 des} c8 r4 |
  a8. f'16 ees des c bes c8. f16 ees des c bes |
  ges8. des'16 c des c bes bes8 \appoggiatura{a32 bes} a8~ a4 |
  a8. f'16 ees des c bes c8. f16 ees des c bes |
  a8. f'16 ees des c bes des8 \appoggiatura{c32 des} c8 r4 |
  a8. f'16 ees des c bes c8. f16 ees des c bes |
  ges8. des'16 c des c bes bes8 \appoggiatura{a32 bes} a8~ a4 |
}

leadTwo = \relative f' {
  % theme I
  f8. des'16 c bes a ges a8. des16 c bes a ges |
  f8. des'16 c bes a ges bes8 \appoggiatura{a32 bes} a8 r4 |
  f8. des'16 c bes a ges a8. des16 c bes a ges |
  ees8. bes'16 a bes a ges ges8 \grace{f16( ges)} f8~ f4 | 
  f8. des'16 c bes a ges a8. des16 c bes a ges |
  f8. des'16 c bes a ges bes8 \appoggiatura{a32 bes} a8 r4 |
  f8. des'16 c bes a ges a8. des16 c bes a ges |
  ees8. bes'16 a bes a ges ges8 \grace{f16( ges)} f8~ f4 | 
  % theme II
  ees8. bes'16 a bes a ges f8. ees16 f ges a8-. |
  ees8. bes'16 a bes a ges f8 \breathe a16 bes c a bes ges |
  ees8. bes'16 a bes a ges f8. ees16 f ges a8-. |
  ees8. bes'16 a bes a ges f4~ f8 r8 |
  ees8. bes'16 a bes a ges f8. ees16 f ges a8-. |
  ees8. bes'16 a bes a ges f8 \breathe a16 bes c a bes ges |
  ees8. bes'16 a bes a ges f8. ees16 f ges a8-. |
  ees8. bes'16 a bes a ges f4~ f8 r8 |
  % theme III
  bes8 bes a bes c des16 ees c des bes c |
  a8 a ges a bes c16 des bes c a bes |
  ges8 ges f ges a bes16 c a bes ges a |
  ges8 \grace{f16 ges} f4 \breathe a16 bes c a bes ges f a bes c |
  bes8 bes a bes c des16 ees c des bes c |
  a8 a ges a bes c16 des bes c a bes |
  ges8 ges f ges a bes16 c a bes ges a |
  ges8 \grace{f16 ges} f4 \breathe a16 bes c a bes ges f4 |
  % break
  des'4 ees16 c des bes c4 des16 bes c a |
  bes4 c16 a bes ges a4 r4 |
  bes4 c16 a bes ges a4 bes16 ges a f |
  ges4 a16 f ges ees f \breathe ges f ges a bes c des  |
  des4 ees16 c des bes c4 des16 bes c a |
  bes4 c16 a bes ges a4 r4 |
  bes4 c16 a bes ges a4 bes16 ges a f |
  ges4 a16 f ges ees f4 r4 |
  % theme I
  f8. des'16 c bes a ges a8. des16 c bes a ges |
  f8. des'16 c bes a ges bes8 \appoggiatura{a32 bes} a8 r4 |
  f8. des'16 c bes a ges a8. des16 c bes a ges |
  ees8. bes'16 a bes a ges ges8 \grace{f16( ges)} f8~ f4 | 
  f8. des'16 c bes a ges a8. des16 c bes a ges |
  f8. des'16 c bes a ges bes8 \appoggiatura{a32 bes} a8 r4 |
  f8. des'16 c bes a ges a8. des16 c bes a ges |
  ees8. bes'16 a bes a ges ges8 \grace{f16( ges)} f8~ f4 | 
}

bassLine = {
  % theme I
  f4 a8 c f4 c8 a |
  f4 a8 c f4 f,8 f' |
  f,4 a8 c f4 f,8 f |
  ees4 ees8 ees f4 f8 f' |
  f,4 a8 c f4 c8 a |
  f4 a8 c f4 f,8 f' |
  f,4 a8 c f4 f,8 f |
  ees4 ees8 ees f4 r4 |
  % theme II
  ees4 ees8 ees f4 r8 f' |
  ees,4 ees8 ees f4 r4 |
  ees4 ees8 ees f4 r8 f' |
  ees,4 ees8 ees f8. f16 a8 c |
  ees,4 ees8 ees f4 r8 f' |
  ees,4 ees8 ees f4 r4 |
  ees4 ees8 ees f4 r8 f' |
  ees,4 ees8 ees f4 c'8 a |
  % theme III
  bes4 des8 f bes,4 des8 f |
  f,4 a8 c f,4 a8 c |
  ees,4 ges8 bes ees,4 ges8 bes |
  f4 a4 c4 f,8 f  |
  bes4 des8 f bes,4 des8 f |
  f,4 a8 c f,4 a8 c |
  ees,4 ges8 bes ees,4 ges8 bes |
  f4 a4 c4 f,8 f  |
  % break 
  f'4 ges16 ees f des ees4 f16 des ees c |
  des4 ees16 c des bes c4 r4 |
  des4 ees16 c des bes c4 des16 bes c a |
  bes4 c16 a bes ges a4 r |
  f'4 ges16 ees f des ees4 f16 des ees c |
  des4 ees16 c des bes c4 r4 |
  des4 ees16 c des bes c4 des16 bes c a |
  bes4 c16 a bes ges a4 r |
  % theme I
  f4 a8 c f4 c8 a |
  f4 a8 c f4 f,8 f' |
  f,4 a8 c f4 f,8 f |
  ees4 ees8 ees f4 f8 f' |
  f,4 a8 c f4 c8 a |
  f4 a8 c f4 f,8 f' |
  f,4 a8 c f4 f,8 f |
  ees4 ees8 ees f4 r4 |
}

tenorSaxOne = \transpose bes, c {
  \relative c'' {
    \global
    \transposition bes
    % Music follows here.
    \leadOne
  }
}

tenorSaxTwo = \transpose bes, c {
  \relative c'' {
    \global
    \transposition bes
    % Music follows here.
    \leadTwo
  }
}

trombone = \transpose bes c {
  \relative c {
    \global
    \transposition bes
    \bassLine
  }
}

right = \relative c'' {
  \global
  % Music follows here.
  
}

left = \relative c' {
  \global
  % Music follows here.
  
}

bass = \relative c,, {
  \global
  \bassLine
  
}

tenorSaxOnePart = \new Staff \with {
  instrumentName = "Tenor Sax I"
  midiInstrument = "tenor sax"
} \tenorSaxOne

tenorSaxTwoPart = \new Staff \with {
  instrumentName = "Tenor Sax II"
  midiInstrument = "tenor sax"
} \tenorSaxTwo

trombonePart = \new Staff \with {
  instrumentName = "Trombone"
  midiInstrument = "trombone"
} { \clef bass \trombone }

pianoPart = \new PianoStaff \with {
  instrumentName = "Piano"
} <<
  \new Staff = "right" \with {
    midiInstrument = "acoustic grand"
  } \right
  \new Staff = "left" \with {
    midiInstrument = "acoustic grand"
  } { \clef bass \left }
>>

bassPart = \new Staff \with {
  midiInstrument = "acoustic bass"
  instrumentName = "Bass"
} { \clef "bass_8" \bass }

\score {
  <<
    \new ChordNames {\chordSequence}
    \globalStructure
    \tenorSaxOnePart
    \tenorSaxTwoPart
    \trombonePart
    \pianoPart
    \bassPart
  >>
  \layout { }
  \midi {
    \tempo 4=100
  }
}
