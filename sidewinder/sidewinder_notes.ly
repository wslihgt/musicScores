\version "2.18.2"

pieceTitle = "The Sidewinder"
composer = "Lee Morgan"

\header{  title = \pieceTitle
  composer = \composer
  arranger = "Adapted from http://freejazzinstitute.com/showposts.php?dept=transcriptions&topic=20081111044611_HalfNelson"
}

globalStyle = { % Use for various rendering styles that apply to all parts
  \accidentalStyle "modern-cautionary"
}

structure = { % Use to give annotations, mainly, also checking meaure consistency
  s1 |
  \repeat volta 2 {
  s1^\markup{\circle A} |
  s1*21 |
  \override TextSpanner.bound-details.left.text = "Break"
  s4 s2.\startTextSpan |
  s2.
  s4\stopTextSpan
  }
}

global = { % Use for tempo and key changes
  \time 4/4
  \tempo 4 = 160
  \key ees \major
  \jazzOn
}


chordSeq = \chordmode {
  R1 |
  % A
  ees1:7 | s1*3 |
  ees1:7 | s1*2 | r2 ees2:11+7 | 
  aes1:7 | s1*3 | 
  ees1:7 | s1*2 | g2:m5-7 c:9-7
  f1:m7 | s1*2 | s2 bes2:5-7 |
  ees1:7 | s1 | ees1:7 | s1 | 
}


DrumsUp = \drummode {
  R1*25
}

DrumsDown = \drummode {
  R1*25
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
      R1 |
      \parenthesize {ees,4} c'4^. r8 des8^^ r4 | r4 c4^. r8 des8^^ r4 | 
      r8 c des4 ees f | c8 des c bes~ bes2 |
      r4 c4^. r8 des8^^ r4 | r4 c4^. r8 des8^^ r4 | 
      r8 c des4 ees f | fis8 g ees des r8 a4. |
      aes4 f'4^. r8 ges^^ r4 | 
      r4 f4^. r8 ges^^ r4 | 
      r8 f ges aes bes aes ges f | 
      aes ees f ges~ ges des32 (c ces bes) aes8 bes | 
      ees,4 c' r8 des8 r4 |
      r4 c4 r8 des r4 |
      r8 bes c des ees f4 r8 |
      r8 g, aes a bes c4 r8 |
      r4 f,4^.^^ r8 g8^^ r4 |
      r4 f4^.^^ r8 g8^^ r4 | 
      r8 f8 g4 aes a |
      a8 bes aes e r8 e bes e | 
      ees4 c'^.^^  r8 des8^^ r4 |
      r4 c^.^^  r8 des8^^ r4 |
      r4 r8 bes16 des ees8 ees ees16 bes des8 |
      ees4^.^^ r8 des~ des bes aes bes | 
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
      R1 |
      \parenthesize ees,4 fis4^. r8 g8^^ r4 | 
      r4 fis4^. r8 g8 r4 | 
      r8 c, des4 ees f | c8 des c bes~ bes2 |
      r4 fis'4^. r8 g8^^ r4 | r4 fis4^. r8 g8^^ r4 | 
      r8 c, des4 ees f | fis8 g ees des r8 a4. |
      aes4 b4^. r8 c^^ r4 | 
      r4 b4^. r8 c^^ r4 | 
      r8 f, ges aes bes aes ges f | 
      aes ees f ges~ ges des32 (c ces bes) aes8 bes | 
      ees4 fis' r8 g8 r4 |
      r4 fis4 r8 g r4 |
      r8 bes, c des ees f4 r8 |
      r8 g, aes a bes c4 r8 |
      r4 aes4^.^^ r8 bes8^^ r4 |
      r4 aes4^.^^ r8 bes8^^ r4 | 
      r8 f'8 g4 aes a |
      a8 bes aes e r8 e bes e | 
      ees4 fis^.^^  r8 g8^^ r4 |
      r4 fis^.^^  r8 g8^^ r4 |
      r4 r8 bes,16 des ees8 ees ees16 bes des8 |
      ees4^.^^ r8 des~ des bes aes bes | 
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
      R1 |
      \parenthesize {ees,,4} c'4^. r8 des8^^ r4 | r4 c4^. r8 des8^^ r4 | 
      r8 c des4 ees f | c8 des c bes~ bes2 |
      r4 c4^. r8 des8^^ r4 | r4 c4^. r8 des8^^ r4 | 
      r8 c des4 ees f | fis8 g ees des r8 a4. |
      aes4 f'4^. r8 ges^^ r4 | 
      r4 f4^. r8 ges^^ r4 | 
      r8 f ges aes bes aes ges f | 
      aes ees f ges~ ges des32 (c ces bes) aes8 bes | 
      ees,4 c' r8 des8 r4 |
      r4 c4 r8 des r4 |
      r8 bes c des ees f4 r8 |
      r8 g, aes a bes c4 r8 |
      r4 f,4^.^^ r8 g8^^ r4 |
      r4 f4^.^^ r8 g8^^ r4 | 
      r8 f8 g4 aes a |
      a8 bes aes e r8 e bes e | 
      ees4 c'^.^^  r8 des8^^ r4 |
      r4 c^.^^  r8 des8^^ r4 |
      r4 r8 bes16 des ees8 ees ees16 bes des8 |
      ees4^.^^ r8 des~ des bes aes bes | 
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
      R1 |
      \chordmode {
        \repeat unfold 8 {
          r4 d4:7 r8 ees8:7 r4 |
        }
        \repeat unfold 4 {
          r4 g4:7 r8 aes8:7 r4 |
        }
        \repeat unfold 3 {
          r4 d4:7 r8 ees8:7 r4 |
        }
        r4 g4:m5-7 r8 c8:79- r4 |
        \repeat unfold 3 {
          r4 f4:m r8 g8:m r4 |
        }
        r4 f4:m r8 bes8:5-7 r4 |
        r4 d4:7 r8 ees8:7 r4 |
        r4 d4:7 r8 ees8:7 r4 |
        ees8:7 r8 r2. |
        R1
      }
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

      \clef bass %\clefPiano
      \compressFullBarRests
      %R1*25
      r4 r8 bes, r8 bes e,4 |
      \repeat unfold 7 {
        ees4 r8 ees8 bes4 d |
      }
      ees4 r8 ees bes'4 a |
      \repeat unfold 3 {
        aes4 r8 aes ees4 g |
      }
      aes4 r8 aes bes,4 d |
      \repeat unfold 3 {
        ees4 r8 ees8 bes4 d |
      }
      ees4 r8 des c4 e |
      \repeat unfold 3 {
        f4 r8 f8 c4 e |
      }
      f4 r8 d bes4 d |
      \repeat unfold 2 {
        ees4 r8 ees8 bes4 d |
      }
      ees4 r4 r2 |
      r2 r4 bes |
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
%%% Lilypond-master-file: "sidewinder_score.ly"
%%% End:
% -*- master: sidewinder_score.ly;
% -*- output: sidewinder_score-score.pdf
