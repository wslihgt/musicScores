\version "2.18.2"

pieceTitle = "ImperialMarch"
composer = "John Williams"

\header{  title = \pieceTitle
  composer = \composer
}

globalStyle = { % Use for various rendering styles that apply to all parts
  \accidentalStyle "modern-cautionary"
}

structure = { % Use to give annotations, mainly, also checking meaure consistency
  s1^\markup{\circle {0} Intro} |
  s1*3 |
  % theme
  s1^\markup{\circle A Theme} |
  s1*7 |
  
}

global = { % Use for tempo and key changes
  \time 4/4
  \tempo 4 = 90
  \key e \minor
}


chordSeq = \chordmode {
  e2.:m6 c4:m7 |%
  e2.:m6 c4:m7/a |%
  e2.:m6 a4:m7.5- |%
  e2.:m6 c4:m7 |%
  % theme
  e2.:m6 a4:m7.5- |%
  e4:m6 a4:m7.5- e2:m6 |%
  e2.:m6 a4:m7.5- |%
  a2:m7.5- e2:m6 |%
  e2.:m6 a4:m7.5- |
  bes1:m7 |
  a1:m7.5- |
  e4:m6 a4:m7.5- e2:m6
  % bridge?
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
      \transposition c' %% for MIDI files? to be verified

      \clef \clefOboe
      \compressFullBarRests
      R1*4 |
      % theme
      \repeat volta 2 {
        e4 e e c8 g'16 e~ |
        e4 c8 g'16 e~ e2 |
        b'4 b b c8 aes16 ees~ |
        ees4 c8 g'16 e~ e2 |
        e'4 e, e' ees8 d |
        des16 c des8~ des f, bes4 a8 aes |
        g16 fis g8~ g8 c, ees4 c8 g'16 e~ |
        e4 c8 g'16 e~ e2 |
      }

      \bar "|."
    }
  }
}

TenorSaxNotes = \transpose \originPitch \targetPitchTenorSax {
  \new Voice {
    \global
    \relative c'{
      \set Staff.instrumentName = #"TenorSax "
      \set Staff.midiInstrument = \midiInstrTenorSax
      \transposition bes % c' %% for MIDI files? to be verified

      \clef \clefTenorSax
      \compressFullBarRests
      R1*4 
      % theme
      \repeat volta 2 {
        cis4 cis cis a8 ees'16 cis~ |
        cis4 a8 ees'16 cis~ cis2 |
        g'4 g g aes8 f16 c~ |
        c4 a8 ees'16 cis~ cis2 |
        cis'4 cis, cis' a |
        bes8 bes4 bes8 aes4 aes4  |
        ees8 ees4 ees8 c4 a8. cis16~ |
        cis4 a8. cis16~ cis2 |
      }

      \bar "|."
    }
  }
}

TromboneNotes = \transpose \originPitch \targetPitchTrombone {
  \new Voice {
    \global
    \relative c{
      \set Staff.instrumentName = #"Trombone "
      \set Staff.midiInstrument = \midiInstrTrombone
      \transposition bes % c' %% for MIDI files? to be verified

      \clef \clefTrombone
      \compressFullBarRests
      R1*4 
      % theme
      \repeat volta 2 {
        b4 b b g8 a16 b~ |
        b4 g8 a16 b~ b2 |
        e4 e e ees8 c16 a~ |
        a4 g8 a16 b~ b2 |
        b'4 b, g' ees |
        f8 f4 f8 des4 des4  |
        c8 c4 c8 g4 a8. b16~ |
        b4 g8. b16~ b2 |
      }
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
      \transposition c' %% for MIDI files? to be verified

      \clef \clefGuitar
      \compressFullBarRests
      \repeat unfold 4 {
      \chordmode{
        e4:m6 e8:m6 \tuplet 3/2 {e16:m6 e16:m6 e16:m6}
        e8:m6 \tuplet 3/2 {e16:m6 e16:m6 e16:m6}
        \tuplet 3/2 {a16:m7.5- a16:m7.5- a16:m7.5-} a8:m7.5-
      }
      }
      % theme
      \chordmode{
      e4:m6 e8:m6 \tuplet 3/2 {e16:m6 e16:m6 e16:m6}
      e8:m6 \tuplet 3/2 {e16:m6 e16:m6 e16:m6}
      \tuplet 3/2 {a16:m7.5- a16:m7.5- a16:m7.5-} a8:m7.5- |
      e8:m6 \tuplet 3/2 {e16:m6 e16:m6 e16:m6}
      \tuplet 3/2 {a16:m7.5- a16:m7.5- a16:m7.5-} a8:m7.5- 
      e8:m6 \tuplet 3/2 {e16:m6 e16:m6 e16:m6}
      e4:m6 |
      e4:m6 e8:m6 \tuplet 3/2 {e16:m6 e16:m6 e16:m6}
      e8:m6 \tuplet 3/2 {e16:m6 e16:m6 e16:m6}
      \tuplet 3/2 {a16:m7.5- a16:m7.5- a16:m7.5-} a8:m7.5- |
      a8:m7.5- \tuplet 3/2 {a16:m7.5- a16:m7.5- a16:m7.5-}
      \tuplet 3/2 {a16:m7.5- a16:m7.5- a16:m7.5-} a8:m7.5- 
      e8:m6 \tuplet 3/2 {e16:m6 e16:m6 e16:m6}
      e4:m6 |
      }
      % \bar "|."
    }
  }
}

PianoNotes = \transpose \originPitch \targetPitchPiano {
  \new Voice {
    \global
    \relative c''{
      \set Staff.instrumentName = #"Piano "
      \set Staff.midiInstrument = \midiInstrPiano
      \transposition c' %% for MIDI files? to be verified

      \clef \clefPiano
      \compressFullBarRests
      R1*4 c

      \bar "|."
    }
  }
}
musicPieceOne = {
  <<

    \tag #'score \transpose \originPitch c {
      \new ChordNames {\chordSeq}} % \new ChordNames {\chordSeq}
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
%%% Lilypond-master-file: "imperialMarch_score.ly"
%%% End:
% -*- master: imperialMarch_score.ly;
% -*- output: imperialMarch_score-score.pdf
