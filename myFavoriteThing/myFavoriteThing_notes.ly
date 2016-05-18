\version "2.18.2"

pieceTitle = "My Favorite Thing"
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
  s2. * 15 |
  s2.^\markup{Coda} |
  s2. * 15 |
  
}

global = { % Use for tempo and key changes
  \time 3/4
  \tempo 4 = 112
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
  fis:m7 |
  e:maj7 |
  fis:m7 |
  e:maj7 |
  fis:m7 |
  e:maj7 |
  fis:m7 |
  a:m7 |
  d:7 |
  g:maj7 |
  c:maj7 |
  g:maj7 |
  c:maj7 |
  fis:7m5-|
  b:7 |
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
  R1 * 4 
}


DrumsUp = \drummode {
  R1*4 wbh4. wbh4. wbh4 |
}

DrumsDown = \drummode {
  R1*4 mar4 mar8 mar mar4 mar8 mar |
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
      \melody
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
      R1*4 c

      \bar "|."
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
      R1*4 c

      \bar "|."
    }
  }
}

PianoNotes = \transpose \originPitch \targetPitchPiano {
  \new Voice {
    \global
    \relative c''{
      \set Staff.instrumentName = #"Piano "
      \set Staff.midiInstrument = \midiInstrPiano
      \transposition \originPitchPiano % for MIDI files? to be verified

      \clef \clefPiano
      \compressFullBarRests
      R1*4 c

      \bar "|."
    }
  }
}
musicPieceOne = {
  <<

    \tag #'score \new ChordNames {\chordSeq}
    \tag #'Drums \transpose \originPitch \targetPitchDrums {
      \new ChordNames {\chordSeq}}

    \tag #'Oboe \transpose \originPitch \targetPitchOboe {
      \new ChordNames {\chordSeq}}

    \tag #'TenorSax \transpose \originPitch \targetPitchTenorSax {
      \new ChordNames {\chordSeq}}

    \tag #'Trombone \transpose \originPitch \targetPitchTrombone {
      \new ChordNames {\chordSeq}}

    \tag #'Guitar \transpose \originPitch \targetPitchGuitar {
      \new ChordNames {\chordSeq}}

    \tag #'Piano \transpose \originPitch \targetPitchPiano {
      \new ChordNames {\chordSeq}}

    \tag #'score \tag #'Drums \new DrumStaff { << \globalStyle \structure \DrumsNotes >> }
    \tag #'score \tag #'Oboe \new Staff { << \globalStyle \structure \OboeNotes >> }
    \tag #'score \tag #'TenorSax \new Staff { << \globalStyle \structure \TenorSaxNotes >> }
    \tag #'score \tag #'Trombone \new Staff { << \globalStyle \structure \TromboneNotes >> }
    \tag #'score \tag #'Guitar \new Staff { << \globalStyle \structure \GuitarNotes >> }
    \tag #'score \tag #'Piano \new Staff { << \globalStyle \structure \PianoNotes >> }
  >>
}
%%% Local Variables
%%% Lilypond-master-file: "myFavoriteThing_score.ly"
%%% End:
% -*- master: myFavoriteThing_score.ly;
% -*- output: myFavoriteThing_score-score.pdf
