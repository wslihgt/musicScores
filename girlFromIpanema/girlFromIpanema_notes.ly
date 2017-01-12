\version "2.18.2"

pieceTitle = "Girl From Ipanema"
composer = "Jobim?"

\header{  title = \pieceTitle
  composer = \composer
}

globalStyle = { % Use for various rendering styles that apply to all parts
  \accidentalStyle "modern-cautionary"
}

structure = { % Use to give annotations, mainly, also checking meaure consistency
  \repeat volta 2 {
    s1^\markup{\circle A} |
    s1 * 3 | \break
    s1 * 2
  }
  \alternative {
      { s1 * 2 |}
      {s1 * 2 |}
  } \break
  \bar "||"
  s1^\markup{\circle B} | s1 * 3 | \break 
  s1 * 4 | \break
  s1 * 4 | \break
  s1 * 4 | \break
  \bar "||"
  s1^\markup{\circle A'} | s1 * 3 | \break 
  s1*3 | s1^\markup {\eyeglasses}
  \bar "||" \break
  s1^\markup{\eyeglasses Coda} | s1 * 3 | \break
  s1 * 4 |
  \bar "|."\break
}

global = { % Use for tempo and key changes
  \time 4/4
  \tempo 4 = 120
  \key f \major
}


chordSeq = \chordmode {
  % theme A
  f1:maj7 | f1:maj7 |
  g:7 | g:7 |
  g:m7 | ges:7.5- | 
  % 1 repeat
  f:maj7 | ges:7.5- |
  % 2 repeat
  f1:maj7 | f1:maj7 |
  % theme B
  ges:maj7 | ges:maj7 |
  b:7 | b:7 |
  fis:m7 | fis:m7 |
  d:7 | d:7 |
  g:m7 | g:m7 |
  ees:7 | ees:7 |
  a:m7 | d:7 |
  g:m7 | c:7 |
  % A'
  f1:maj7 | f1:maj7 |
  g:7 | g:7 |
  g:m7 | ges:7.5- | 
  f1:maj7 | f1:maj7 |
  % coda?
  ges:7.5- | f1:maj7 |
  ges:7.5- | f1:maj7 |
  ges:7.5- | f1:maj7 |
  f1:maj7 | f1:maj7 |
}


DrumsUp = \drummode {
}

DrumsDown = \drummode {
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


ViolinNotes = \transpose \originPitch \targetPitchViolin {
  \new Voice {
    \global
    \relative c''{
      \set Staff.instrumentName = #"Violin "
      \set Staff.midiInstrument = \midiInstrViolin
      \transposition \originPitchViolin % for MIDI files? to be verified

      \clef \clefViolin
      \compressFullBarRests
      % A
      e1~ | e8 d c d e d g f | 
      e1~ | e8 d g, d' e d g f |
      e4 f8 d8~ d2~ | d8 f e d e f g a |
      b1 | bes4^. bes2. |
      b1 | c |
      % B
      des1~ | des~ | 
      des | b4~ \tuplet 3/2 4 {b8 bes a} \tuplet 3/2 2 {gis4 dis b} |
      r1 | r1 | r1 | 
      c'4~ \tuplet 3/2 4 {c8 b bes} \tuplet 3/2 2 {a4 e c} | 
      r1 | r1 | r1 | 
      ees'4~ \tuplet 3/2 4 {ees8 d des} c4 r4 | 
      r1 | fis,8^\markup{pizz.} a d e, g c d, g | bes4 r4^\markup{arco} r2 | r1 |
      % A'
      e,1~ | e8 d c d e d g f | 
      e1~ | e8 d g, d' e d g f |
      e4 f8 d8~ d2~ | d8 f e d e f g a |
      b1~ | b1 |
      % Coda
      bes,4 bes2. | 
      a4. a8 a a~ a bes~ | bes bes~ bes2. | 
      a4. a8 a a~ a bes~ | bes bes~ bes2. | 
      a1~ | a1~ | a1 |  
    }
  }
}

OboeNotes = \transpose \originPitch \targetPitchOboe {
  \new Voice {
    \global
    \relative c''{
      \set Staff.instrumentName = #"Oboe "
      \set Staff.midiInstrument = \midiInstrOboe
      \transposition \originPitchOboe % for MIDI files? to be verified

      \clef \clefOboe
      \compressFullBarRests
      % A 
      g'4. e8 e d~ d g~ | g g~ g e e4 d |
      g4 e4 e4 d8 g~ | g g~ g e e4 d |
      f4. d8 d c~ c e~ | e e~ e c \tuplet 3/2 2 {c4 c bes} |
      c1~ | c |
      c1~ | c |
      % B
      f1~ | \tuplet 6/4 2 {f4 ges f ees f ees} | 
      des4. dis8~ dis2~ | dis1 |
      gis1~ | \tuplet 6/4 2 {gis4 a gis fis gis fis} | 
      e4. fis8~ fis2~ | fis1 |
      a1~ | \tuplet 6/4 2 {a4 bes a g a g} | 
      f4. g8~ g2~ | g2. a8 bes |
      c4 c,8 d e f g gis~ | gis2. a4 |
      bes4 bes,8 c  d e f fis~ | fis2. r4 |
      % A' 
      g4. e8 e d~ d g~ | g g~ g e e4 d |
      g4 e4 e4 d8 g~ | g g~ g e e4 d |
      a4. f8 f d~ d c'~ | \tuplet 6/4 2 {c4 e, e e d e~} |
      e1~ | e |
      % Coda
      \tuplet 6/4 2 {c'4 e, e e d e~} | e1 | 
      \tuplet 6/4 2 {c'4 e, e e d e~} | e1 | 
      \tuplet 6/4 2 {c'4 e, e e d e~} | e1~ | e1~ | e1 | 
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
      % A 
      g4. e8 e d~ d g~ | g g~ g e e4 d |
      g4 e4 e4 d8 g~ | g g~ g e e4 d |
      f4. d8 d c~ c e~ | e e~ e c \tuplet 3/2 2 {c4 c bes} |
      c1~ | c |
      c1~ | c |
      % B
      f1~ | \tuplet 6/4 2 {f4 ges f ees f ees} | 
      des4. dis8~ dis2~ | dis1 |
      gis1~ | \tuplet 6/4 2 {gis4 a gis fis gis fis} | 
      e4. fis8~ fis2~ | fis1 |
      a1~ | \tuplet 6/4 2 {a4 bes a g a g} | 
      f4. g8~ g2~ | g2. a8 bes |
      c4 c,8 d e f g gis~ | gis2. a4 |
      bes4 bes,8 c  d e f fis~ | fis2. r4 |
      % A' 
      g4. e8 e d~ d g~ | g g~ g e e4 d |
      g4 e4 e4 d8 g~ | g g~ g e e4 d |
      a4. f8 f d~ d c'~ | \tuplet 6/4 2 {c4 e, e e d e~} |
      e1~ | e |
      % Coda
      \tuplet 6/4 2 {c'4 e, e e d e~} | e1 | 
      \tuplet 6/4 2 {c'4 e, e e d e~} | e1 | 
      \tuplet 6/4 2 {c'4 e, e e d e~} | e1~ | e1~ | e1 | 
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
      % A
      r2 \tuplet 3/2 2 {r4 c, bes} | c1 |
      r2 \tuplet 3/2 2 {r4 b a} | b1 |
      r2 \tuplet 3/2 2 {r4 bes a} | aes2.~ aes8 g~ |
      g1 | ges4^. ges2. |
      g1 | g1 |
      % B
      \tuplet 6/4 2 {r4 ges f ees des c~} | c1 |
      cis4. b8~ b2~ | b1 |
      \tuplet 6/4 2 {r4 a'4 gis fis e dis~} | dis1 |
      e4. d8~ d2~ | d1 |
      \tuplet 6/4 2 {r4 bes'4 a g f e~} | e1 |
      f4. ees8~ ees2~ | ees1 |
      r4 c'4~ c8 c8~ c8 c8~ | \tuplet 6/4 2 {c4 ees d c bes a } |
      bes4 bes~ bes8 bes8~ bes bes~ | bes8 des c2 r4 |  
      % A'
      r2 \tuplet 3/2 2 {r4 c bes} | c1 |
      r2 \tuplet 3/2 2 {r4 b a} | b1 |
      r2 \tuplet 3/2 2 {r4 bes a} | aes2.~ aes8 g~ |
      g1~ | g1 |
      % Coda
      ges4 ges2. | 
      f4. f8 f f~ f ges~ | ges ges~ ges2. | 
      f4. f8 f f~ f ges~ | ges ges~ ges2. | 
      f1~ | f1~ | f1 |  
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
    }
  }
}
musicPieceOne = {
  <<

    \tag #'score \new ChordNames {\chordSeq}
    \tag #'Drums \transpose \originPitch \targetPitchDrums {
      \new ChordNames {\chordSeq}}

    \tag #'Violin \transpose \originPitch \targetPitchViolin {
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
    \tag #'score \tag #'Violin \new Staff { << \globalStyle \structure \ViolinNotes >> }
    \tag #'score \tag #'Oboe \new Staff { << \globalStyle \structure \OboeNotes >> }
    \tag #'score \tag #'TenorSax \new Staff { << \globalStyle \structure \TenorSaxNotes >> }
    \tag #'score \tag #'Trombone \new Staff { << \globalStyle \structure \TromboneNotes >> }
    \tag #'score \tag #'Guitar \new Staff { << \globalStyle \structure \GuitarNotes >> }
    \tag #'score \tag #'Piano \new Staff { << \globalStyle \structure \PianoNotes >> }
  >>
}
%%% Local Variables
%%% Lilypond-master-file: "girlFromIpanema_score.ly"
%%% End:
% -*- master: girlFromIpanema_score.ly;
% -*- output: girlFromIpanema_score-score.pdf
