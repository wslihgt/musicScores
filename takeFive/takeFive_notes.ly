\version "2.18.2"

pieceTitle = "Take Five"
composer = "Dave Brubeck"

\header{  title = \pieceTitle
  composer = \composer
}

globalStyle = { % Use for various rendering styles that apply to all parts
  \accidentalStyle "modern-cautionary"
}

structure = { % Use to give annotations, mainly, also checking meaure consistency
  s1 ^\markup{Intro} s4 |
  s1*7 s4*7|
  s1 ^\markup{A} s4 |
  s1*7 s4*7|
  s1 ^\markup{B} s4 |
  s1*7 s4*7|
  s1 ^\markup{A} s4 |
  s1*7 s4*7|
  \bar "||"
}

global = { % Use for tempo and key changes
  \time 5/4
  \tempo 4 = 120
  \key ees \minor
  \set Timing.baseMoment = #(ly:make-moment 1/8)
  \set Timing.beatStructure = #'(3 3 4)
}


chordSeq = \chordmode {
  ees2.:m7 bes2:m7 |
  ees2.:m7 bes2:m7 |
  ees2.:m7 bes2:m7 |
  ees2.:m7 bes2:m7 |
  ees2.:m7 bes2:m7 |
  ees2.:m7 bes2:m7 |
  ees2.:m7 bes2:m7 |
  ees2.:m7 bes2:m7 |
  % A theme
  ees2.:m7 bes2:m7 |
  ees2.:m7 bes2:m7 |
  ees2.:m7 bes2:m7 |
  ees2.:m7 bes2:m7 |  
  ees2.:m7 bes2:m7 |
  ees2.:m7 bes2:m7 |
  ees2.:m7 bes2:m7 |
  ees2.:m7 bes2:m7 |
  % B
  ces2.:maj7 f2:m7.5-|
  bes2.:m7 ees2:m7 |
  aes2.:m7 des2:7 |
  ges2.:maj7 c2:m7.5- |
  ces2.:maj7 f2:m7.5-|
  bes2.:m7 ees2:m7 |
  aes2.:m7 des2:7 |
  f2.:m7 bes2:m7 |
  % A
  ees2.:m7 bes2:m7 |
  ees2.:m7 bes2:m7 |
  ees2.:m7 bes2:m7 |
  ees2.:m7 bes2:m7 |
  ees2.:m7 bes2:m7 |
  ees2.:m7 bes2:m7 |
  ees2.:m7 bes2:m7 |
  ees2.:m7 bes2:m7 |
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


OboeNotes = \transpose \originPitch \targetPitchOboe {
  \new Voice {
    \global
    \relative c''{
      \set Staff.instrumentName = #"Oboe "
      \set Staff.midiInstrument = \midiInstrOboe
      \transposition \originPitchOboe % for MIDI files? to be verified

      \clef \clefOboe
      \compressFullBarRests
      R1*5/4*7 |
      r2. bes8 ees ges aes |
      % A
      a( bes) a aes( ges4) bes, des |
      ees2. f16( ges f ees des4) |
      ees2. des16( ees des bes aes4) |
      bes2. bes8 ees ges aes |
      a( bes) a aes( ges4) bes, des |
      ees2. des16( ees des bes aes4) |
      bes2. f'16( ges f ees des4) |
      ees2. r2 |
      % B
      ees8 ges4 ees8 ces4 aes8 bes ces c | 
      des8 f4 des8 bes4 ges8 aes a bes |
      ces8 ees4 ces8 aes4 f8 ges aes a |
      bes8 a bes ces des4 des8 c des d |
      ees8 ges4 ees8 ces4 aes8 bes ces c | 
      des8 f4 des8 bes4 ges8 aes a bes |
      ces8 ees4 ces8 aes4 f8 aes des ces |
      bes2. bes8 ees ges aes |
      % A
      a( bes) a aes( ges4) bes, des |
      ees2. f16( ges f ees des4) |
      ees2. des16( ees des bes aes4) |
      bes2. bes8 ees ges aes |
      a( bes) a aes( ges4) bes, des |
      ees2. des16( ees des bes aes4) |
      bes2. f'16( ges f ees des4) |
      ees2. r2 |
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
      R1*5/4*7 |
      r2. bes8 ees ges aes |
      % A
      a( bes) a aes( ges4) bes, des |
      ees2. f16( ges f ees des4) |
      ees2. des16( ees des bes aes4) |
      bes2. bes8 ees ges aes |
      a( bes) a aes( ges4) bes, des |
      ees2. des16( ees des bes aes4) |
      bes2. f'16( ges f ees des4) |
      ees2. r2 |
      % B
      ees8 ges4 ees8 ces4 aes8 bes ces c | 
      des8 f4 des8 bes4 ges8 aes a bes |
      ces8 ees4 ces8 aes4 f8 ges aes a |
      bes8 a bes ces des4 des8 c des d |
      ees8 ges4 ees8 ces4 aes8 bes ces c | 
      des8 f4 des8 bes4 ges8 aes a bes |
      ces8 ees4 ces8 aes4 f8 aes des ces |
      bes2. bes8 ees ges aes |
      % A
      a( bes) a aes( ges4) bes, des |
      ees2. f16( ges f ees des4) |
      ees2. des16( ees des bes aes4) |
      bes2. bes8 ees ges aes |
      a( bes) a aes( ges4) bes, des |
      ees2. des16( ees des bes aes4) |
      bes2. f'16( ges f ees des4) |
      ees2. r2 |
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
%%% Lilypond-master-file: "takeFive_score.ly"
%%% End:
% -*- master: takeFive_score.ly;
% -*- output: takeFive_score-score.pdf
