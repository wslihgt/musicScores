\version "2.18.2"

pieceTitle = "Caravan"
composer = "Duke Ellington, Irving Mills and Juan Tizol"

\header{  title = \pieceTitle
  composer = \composer
}

globalStyle = { % Use for various rendering styles that apply to all parts
  \accidentalStyle "modern-cautionary"
}

structure = { % Use to give annotations, mainly, also checking meaure consistency
  s1^\markup{Drums intro} \breathe |
  s1*7 |
  s1^\markup{intro} \breathe |
  s1*7
  \repeat volta 2 {
    s1^\markup{A1 Theme} \breathe |
    s1*15
  }
  s1^\markup{B Bridge}
  s1*15
  \bar "||"
  s1^\markup{A2 Theme} \breathe |
  s1*15
  \bar "||"
}

global = { % Use for tempo and key changes
  \time 4/4
  \tempo 4 = 220
  \key f \minor
}


chordSeq = \chordmode {
  % intro
  s1*8 |
  % accompaniment
  c1:7 |
  des:7 |
  c:7 |
  des:7 |
  c:7 |
  des:7 |
  c:7 |
  des:7 |
  % theme
  c:7 |
  des:7 |
  c:7 |
  des:7 |
  c:7 |
  des:7 |
  c:7 |
  des:7 |
  c:7 |
  des:7 |
  c:7 |
  des:7 |
  f:m6 | %f2:m bes:13 %f:m6 |
  f:m6 | %ees:9 aes:13 %f:m6 |
  f:m6 | %des:9 c:aug7maj9 %f:m6 |
  f:m6 | %f1:m69%f:m6 |
  % bridge
  f1:7 | 
  f1:7 | 
  f1:7 | 
  f1:7 | 
  bes1:7 |
  bes1:7 |
  bes1:7 |
  bes1:7 |
  ees1:7 |
  ees1:7 |
  ees1:7 |
  ees1:7 |
  aes1:6 |
  aes1:6 |
  g:7 |
  des:7 |
  % theme again
  c:7 |
  des:7 |
  c:7 |
  des:7 |
  c:7 |
  des:7 |
  c:7 |
  des:7 |
  c:7 |
  des:7 |
  c:7 |
  des:7 |
  f:m6 | %f2:m bes:13 %f:m6 | %
  f:m6 | %ees:9 aes:13 %f:m6 |
  f:m6 | %des:9 c:aug7maj9 %f:m6 |
  f:m6 | %f1:m69%f:m6 |
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
      R1*8 |
      R1*8 |
      % theme
      \repeat volta 2 {
        c1~ |
        c1~ |
        c4 des c g |
        bes c e g, |
        bes1~ |
        bes~ |
        bes4 c des c |
        des c b g |
        bes1~ |
        bes~ |
        bes4 c b bes |
        a aes g e |
        f1~ |
        f~ |
        f~ |
        f |
      }
      % bridge
      f'1 |
      d2 c4. g8~ |
      g1~ |
      g1 |
      c |
      g2 f4. c8~ |
      c1~ |
      c1 |
      ees' |
      c2 bes4. f8~ |
      f1 |
      f2 ees4 f |
      aes1~ |
      aes2 bes4 aes |
      c2 bes4 aes |
      g1 |
      % theme again
      c1~ |
      c1~ |
      c4 des c g |
      bes c e g, |
      bes1~ |
      bes~ |
      bes4 c des c |
      des c b g |
      bes1~ |
      bes~ |
      bes4 c b bes |
      a aes g e |
      f1~ |
      f~ |
      f~ |
      f |

      \bar "|."
    }
  }
}

TenorSaxNotes = \transpose \originPitch \targetPitchTenorSax {
  \new Voice {
    \global
    \relative c''{
      \set Staff.instrumentName = #"TenorSax "
      \set Staff.midiInstrument = \midiInstrTenorSax
      \transposition c' %% for MIDI files? to be verified

      \clef \clefTenorSax
      \compressFullBarRests
      R1*4 c

      \bar "|."
    }
  }
}

TromboneNotes = \transpose \originPitch \targetPitchTrombone {
  \new Voice {
    \global
    \relative c''{
      \set Staff.instrumentName = #"Trombone "
      \set Staff.midiInstrument = \midiInstrTrombone
      \transposition c' %% for MIDI files? to be verified

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
      \transposition c' %% for MIDI files? to be verified

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
%%% Lilypond-master-file: "caravan_score.ly"
%%% End:
% -*- master: caravan_score.ly;
% -*- output: caravan_score-score.pdf
