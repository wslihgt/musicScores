\version "2.18.2"

pieceTitle = "My Favorite Things"
composer = "??? as played by J. Coltrane"

\header{  title = \pieceTitle
  composer = \composer
}

globalStyle = { % Use for various rendering styles that apply to all parts
  \accidentalStyle "modern-cautionary"
}

structure = { % Use to give annotations, mainly, also checking meaure consistency
  s2.^\markup{A} |
  s2. * 15 |
  s2.^\markup{B} |
  s2. * 11 | 
  s2 s4^\markup{Solos on A-A-B, then theme B, and to Coda}|
  s2. * 3 |
  s2.^\markup{Coda} |
  s2. * 23 |
  \bar "|."
}

global = { % Use for tempo and key changes
  \time 3/4
  \tempo 2. = 56
  \key e \minor
  % jazz font stuff
  \jazzOn
  \override ChordNames . ChordName #'font-size = #2
  \override ChordNames . ChordName #'font-name = #"lilyjazzchord"
}


chordSeq = \chordmode {
  \repeat volta 2 {
    e2.:m7 |
    fis:m7/e |
    e2.:m7 |
    fis:m7/e |
    c:maj7 |
    c:maj7 |
    c:maj7 |
    c:maj7 |
    a:m7 |
    d:7 |
    g:maj7 |
    c:maj7 |
    g:maj7 |
    c:maj7 |
    fis:7m5-|
    b:7 |
  }
  e:maj7 |
  fis:m7/e |
  e:maj7 |
  fis:m7/e |
  e:maj7 |
  fis:m7/e |
  e:maj7 |
  fis:m7/e |
  a:m7 |
  d:7 |
  g:maj7 |
  c:maj7 |
  g:maj7 |
  c:maj7 |
  fis:7m5-|
  b:7 |
  \bar "||"
  % coda
  e:m7 |
  e:m7 |
  fis:7m5-|
  b:7 |
  e:m7 |
  e:m7 |
  c:maj7 |
  c:maj7 |
  c:maj7 |
  c:maj7 |
  a:7 |
  a:7 |
  g:maj7 |
  c:maj7 |
  c:maj7 |
  d:7 |
  g:6 / d |
  c:maj7 |
  g:6 / d |
  c:maj7 |
  g:maj7 |
  c:maj7 |
  fis:7m5- |
  b:7
}

melody = {
  \repeat volta 2 
  {
    e8^- b'^. r4 b^. |
    fis2 e4^. |
    b8^- e~ e4 e |
    fis8 e fis4 r4 |
    e4 b' b |
    fis2 e4 |
    b e2 |
    fis4 fis2 |
    e4 b' a |
    e fis d |
    d a' g |
    c,2. |
    b4 c d |
    e fis g |
    a b a |
    dis,2.
  }
  e8^- b'^. r4 b^. |
  fis2 e4^. |
  b8^- e~ e4 e |
  fis8 e fis4 r4 |
  e4 b' b |
  fis2 e4 |
  b e2 |
  fis4 fis2 |
  e4 b' a |
  e fis d |
  d a' g |
  c,2. |
  b4 c d |
  e fis g |
  a b a |
  b2. |
  % coda
  r4 b b |
  b4~ b8 e,~ e4 |
  r4 a a |
  a4~ a8 dis,~ dis4 |
  r4 g g |
  g4. b, |
  e2. |
  r2 r8 e |
  e4 fis e |
  fis e fis |
  g a g |
  a2 g8 a |
  b4 c b |
  c2.~ |
  c2. |
  b2. |
  g2.~ |
  g2.~ |
  g2.~ |
  g2. |
  R2. * 4 
}

backOne = {
  \repeat volta 2 
  {
    b,8^- d^. r4 d^. |
    cis^- b a |
    g8^- b~ b4 b |
    a2 r4 |
    b8^- d^. r4 d^. |
    c^- b a |
    g b2 |
    c4 e2 |
    e4 d c |
    d c b |
    b c d |
    e2. |
    d4 c b |
    a g fis |
    e d cis |
    b2.
  }
  b'8^- dis^. r4 dis^. |
  e4 cis2 |
  dis8^- b~ b4 gis |
  a2 r4 |
  b4 dis b |
  cis2 a4 |
  e gis2 |
  a4 a2 |
  e'4 d c |
  d c b |
  b c d |
  e2. |
  d4 c b |
  a g fis |
  e d cis |
  b2.
  % coda
  r4 g' g |
  g4~ g8 b8~ b4  |
  r4 c c |
  c4~ c8 b~ b4 |
  r4 b b  |
  b4. d |
  c2. |
  r2 r8 c |
  c4. b8 c b |
  c4. b8 c b |
  a4. b8 a b |
  a4. g8 b a |
  g2 fis4 |
  e2.~ |
  e2. |
  fis2 d4 |
  r8 d8 r4 d4 |
  r8 c8 r4 c4 |
  r8 d8 r4 d4 |
  r8 c8 r4 c4 |
  R2. * 4 
}

rhythmicGt = \chordmode {
  \repeat volta 2 {
    r8 e:m7 r r e:m7 r |
    r8 fis:m7/e r r fis:m7/e r |
    r8 e:m7 r r e:m7 r |
    r8 fis:m7/e r r fis:m7/e r |
    r8 c:maj7 r r c:maj7 r |
    r8 c:maj7 r r c:maj7 r |
    r8 c:maj7 r r c:maj7 r |
    r8 c:maj7 r r c:maj7 r |
    r8 a:m7 r r a:m7 r |
    r4 d:7 d:7 |
    r8 g:maj7 r r g:maj7 r |
    r4 c2:maj7 |
    r8 g8:maj7 r r g:maj7 r |
    r4 c:maj7 c:maj7 |
    r8 fis:7m5- r r fis:7m5- r |
    r4 b2:7
  }
  e4.:maj7 e:maj7 |
  r8 fis4.:m7/e s4 |
  e4.:maj7 e:maj7 |
  r8 fis4.:m7/e s4 |
  e4.:maj7 e:maj7 |
  r8 fis4.:m7/e s4 |
  e4.:maj7 e:maj7 |
  r8 fis4.:m7/e s4 |
  r8 a:m7 r r a:m7 r |
  r4 d:7 d:7 |
  r8 g:maj7 r r g:maj7 r |
  r4 c2:maj7 |
  r8 g8:maj7 r r g:maj7 r |
  r4 c:maj7 c:maj7 |
  r8 fis:7m5- r r fis:7m5- r |
  r4 b,2:7
  % coda
  e2.:m7~ | e:m7 |
  fis:7m5- | b:7 |
  e2.:m7~ | e:m7 |
  r8 c:maj7 r r c:maj7 r |
  r8 c:maj7 r r c:maj7 r |
  c2.:maj7~ | c2.:maj7 | 
  a:7~ | a:7 |
  g:maj7 | 
  r8 c:maj7 r r c:maj7 r |
  r8 c:maj7 r r c:maj7 r |
  r8 d:7 r r d:7 r |
  r8 e:m/d r r e:m/d r |
  r4 e:m/c e:m/c |
  r8 e:m/d r r e:m/d r |
  r4 e:m/c e:m/c |
  r8 g:maj7 r r g:maj7 r |
  r4 c':maj7 c':maj7 |
  r8 fis:7m5- r r fis:7m5- r |
  r4 b,2:7 |
}

bassNotes = {
  \repeat volta 2 {
    e,,4 r8 e4 r8 |
    e4 r8 e4 r8 |
    e4 r8 e4 r8 |
    e4 r8 e4 r8 |
    c4 r8 c4 r8 |
    c4 r8 c4 r8 |
    c4 r8 c4 r8 |
    c4 r8 c4 r8 |
    a'4 r8 a4 a8 |
    d,4 r2 |
    g4 r8 r4 g8 |
    c,4 r2 |
    g'4 r8 g4 g8 |
    c,4 r2 |
    fis4 r8 fis4 fis8 |
    b,2 r4 
  }
  e4 r8 e4 r8 |
  e4 r8 e4 r8 |
  e4 r8 e4 r8 |
  e4 r8 e4 r8 |
  e4 r8 e4 r8 |
  e4 r8 e4 r8 |
  e4 r8 e4 r8 |
  e4 r8 e4 r8 |
  a4 r8 a4 a8 |
  d,4 r2 |
  g4 r8 r4 g8 |
  c,4 r2 |
  g'4 r8 g4 g8 |
  c,4 r2 |
  fis4 r8 fis4 fis8 |
  b,2 r4 |
  e2.~ |
  e2. |
  fis |
  b, |
  e2.~ |
  e2 e8 d |
  c2.~ |
  c2. |
  c2.~ |
  c2. |
  a2.~ |
  a2. |
  g2. |
  c2.~ |
  c2. |
  d2. | 
  g2. | c,2. | g' | c, |
  g' | c, | fis | b, |
} 

DrumsUp = \drummode {
  r4 hh4 r |
  r4 hh4 r8 hh |
  r4 hh4 r |
  r4 hh4 r8 hh |
}

DrumsDown = \drummode {
  bd8 sn r8 bd sn4 |
  bd8 r8 r8 bd sn4 |
  bd8 sn r8 bd sn4 |
  bd8 r8 r8 bd sn4 |
}

DrumsNotes = {
  \global
  \set Staff.instrumentName = #"Drums "
  \set Staff.midiInstrument = "synth drum"

  \compressFullBarRests
  <<
    \new DrumVoice {\voiceOne \DrumsUp }
    \new DrumVoice {\voiceTwo \DrumsDown }
  >>
}   %**********************************


OboeNotes = \transpose \originPitch \targetPitchOboe {
  \new Voice {
    \global
    \relative c''{
      \set Staff.instrumentName = #"Oboe "
      \set Staff.midiInstrument = \midiInstrOboe
      \transposition \originPitchOboe % for MIDI files? to be verified

      \clef \clefOboe
      \compressFullBarRests
      \melody
    }
  }
}

TenorSaxNotes = \transpose \originPitch \targetPitchTenorSax {
  \new Voice {
    \global
    \relative c''{
      \set Staff.instrumentName = #"TenorSax "
      \set Staff.midiInstrument = \midiInstrTenorSax
      \transposition \originPitchTenorSax % for MIDI files? to be verified

      \clef \clefTenorSax
      \compressFullBarRests
      \relative c'{\melody}
    }
  }
}

TromboneNotes = \transpose \originPitch \targetPitchTrombone {
  \new Voice {
    \global
    \relative c''{
      \set Staff.instrumentName = #"Trombone "
      \set Staff.midiInstrument = \midiInstrTrombone
      \transposition \originPitchTrombone % for MIDI files? to be verified

      \clef \clefTrombone
      \compressFullBarRests
      \backOne
    }
  }
}

GuitarNotes = \transpose \originPitch \targetPitchGuitar {
  \new Voice {
    \global
    \relative c''{
      \set Staff.instrumentName = #"Guitar "
      \set Staff.midiInstrument = \midiInstrGuitar
      \transposition \originPitchGuitar % for MIDI files? to be verified

      \clef \clefGuitar
      \compressFullBarRests
      \rhythmicGt
    }
  }
}

PianoNotes = \transpose \originPitch \targetPitchPiano {
  {
    \global
    \relative c''{
      \set Staff.instrumentName = #"Piano "
      \set Staff.midiInstrument = \midiInstrPiano
      \transposition \originPitchPiano % for MIDI files? to be verified

      \clef \clefPiano
      \compressFullBarRests
      \rhythmicGt
    }
  }
}

PianoNotesBass = \transpose \originPitch \targetPitchPiano {
  \new Staff = "down" {
    \global
    \relative c''{
      \set Staff.instrumentName = #"Piano "
      \set Staff.midiInstrument = \midiInstrPiano
      \transposition \originPitchPiano % for MIDI files? to be verified

      \clef bass
      \compressFullBarRests
      \bassNotes
    }
  }
}

musicPieceOne = {
  <<

    \tag #'score \transpose \originPitch \targetPitchOboe {
       \new ChordNames {\chordSeq}}
    \tag #'Drums \transpose \originPitch \targetPitchDrums {
      \new ChordNames {\chordSeq}}

    \tag #'Oboe \transpose \originPitch \targetPitchOboe {
      \new ChordNames {\chordSeq}}

    \tag #'TenorSax \transpose \originPitch \targetPitchTenorSax {
      \new ChordNames {\chordSeq}}

    \tag #'Trombone \transpose \originPitch \targetPitchTrombone {
      \new ChordNames {\chordSeq}}

    \tag #'Guitar \transpose \originPitch \targetPitchGuitar {
      <<
        \context FretBoards { \chordSeq}
        \new ChordNames {\chordSeq}
      >>
    }

    \tag #'Piano \transpose \originPitch \targetPitchPiano {
      \new ChordNames {\chordSeq}}

    \tag #'score \tag #'Drums \new DrumStaff { << \globalStyle \structure \DrumsNotes >> }
    \tag #'score \tag #'Oboe \new Staff { << \globalStyle \structure \OboeNotes >> }
    \tag #'score \tag #'TenorSax \new Staff { << \globalStyle \structure \TenorSaxNotes >> }
    \tag #'score \tag #'Trombone \new Staff { << \globalStyle \structure \TromboneNotes >> }
    \tag #'score \tag #'Guitar \new Staff { << \globalStyle \structure \GuitarNotes >> }
    \tag #'score \tag #'Piano \new PianoStaff {
      << 
        \new Staff = "up" <<\globalStyle \structure \PianoNotes >>
        \PianoNotesBass
      >>
    }
  >>
}
%%% Local Variables
%%% Lilypond-master-file: "myFavoriteThing_score.ly"
%%% End:
% -*- master: myFavoriteThing_score.ly;
% -*- output: myFavoriteThing_score-score.pdf
