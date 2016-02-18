\version "2.18.2"

pieceTitle = "Corner of the World"
composer = "Jamiroquai"

\header{  title = \pieceTitle
  composer = \composer
}

globalStyle = { % Use for various rendering styles that apply to all parts
  \accidentalStyle "modern-cautionary"
}

structure = { % Use to give annotations, mainly, also checking meaure consistency
  s1^\markup{\circle I Intro} |
  s1*15 \breathe|
  s1^\markup{\circle A} |
  s1*15 |
  s1^\markup{\circle A'} |
  s1*15 |
  s1^\markup{\circle B Corner of the World...} |
  s1*15 |
  \bar "||"
}

global = { % Use for tempo and key changes
  \time 4/4
  \tempo 4 = 144
  \key f \minor
  s1*16
  \key d \minor
  s1*48
}


chordSeq = \chordmode {
  c1:5 | c2:5 ~c8:5 des4.:5 | c1:5 | c2:5 ~c8:5 des4.:5 | % intro
  c1:5 | c2:5 ~c8:5 des4.:5 | c1:5 | c2:5 ~c8:5 des4.:5 | 
  c1:5 | c2:5 ~c8:5 des4.:5 | c1:5 | c2:5 ~c8:5 des4.:5 | 
  c1:5 | c2:5 ~c8:5 des4.:5 | c1:5 | c2:5 ~c8:5 des4.:5 | 
  d4.:m d8:m7~ d2:m7 | d1:m7 |
  ees4.:m ees8:m4~ ees2:m4 | ees1:sus7 |
  g4.:m g8:m4~ g2:m4 | g1:sus7 |
  a4.:5 a8:7~ a2:7 | a1:7 |
  
}


DrumsUp = \drummode {
  R1*4 wbh4. wbh4. wbh4 |
}

DrumsDown = \drummode {
  R1*4 mar4 mar8 mar mar4 mar8 mar |
}

DrumsNotes = {
  \set Staff.instrumentName = #"Drums "
  \set Staff.midiInstrument = "synth drum"

  \compressFullBarRests
  <<
    \global
    \new DrumVoice {\voiceOne \DrumsUp }
    \new DrumVoice {\voiceTwo \DrumsDown }
  >>
}   %**********************************


OboeNotes = \transpose \originPitch \targetPitchOboe {
  \new Voice {
    <<
    \global
    \relative c''{
      \set Staff.instrumentName = #"Oboe "
      \set Staff.midiInstrument = \midiInstrOboe
      \transposition \originPitchOboe % for MIDI files? to be verified

      \clef \clefOboe
      \compressFullBarRests
      R1*4 c

      \bar "|."
    }
    >>
  }
}

TenorSaxNotes = \transpose \originPitch \targetPitchTenorSax {
  \new Voice {
    <<
    \global
    \relative c''{
      \set Staff.instrumentName = #"TenorSax "
      \set Staff.midiInstrument = \midiInstrTenorSax
      \transposition \originPitchTenorSax % for MIDI files? to be verified

      \clef \clefTenorSax
      \compressFullBarRests
      R1*4 c

      \bar "|."
    }
    >>
  }
}

TromboneNotes = \transpose \originPitch \targetPitchTrombone {
  \new Voice {
    <<
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
    >>
  }
}

GuitarNotes = \transpose \originPitch \targetPitchGuitar {
  \new Voice {
    <<
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
    >>
  }
}

PianoNotes = \transpose \originPitch \targetPitchPiano {
  \new Voice {
    <<
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
    >>
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
%%% Lilypond-master-file: "cornerOfTheWorld_score.ly"
%%% End:
% -*- master: cornerOfTheWorld_score.ly;
% -*- output: cornerOfTheWorld_score-score.pdf
