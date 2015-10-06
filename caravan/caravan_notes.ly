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
  s1^\markup{Drums intro} |
  s1*7 |
  \bar "||"
  s1^\markup{intro} |
  s1*7
  
  \repeat volta 2 {
    s1^\markup{A1 Theme} |
    s1*15
  }
  s1^\markup{B Bridge}
  s1*15
  \bar "||"
  s1^\markup{A2 Theme} |
  s1*15
  %\bar "||"
  
  \repeat volta 2 {
    s1^\markup{\musicglyph #"scripts.segno" Solos, A1 Theme } |
    s1*15
  }
  s1^\markup{B Bridge}
  s1*15
  \bar "||"
  s1^\markup{A2 Theme} |
  s1*14 | s2. s4_\markup{"D.S."}
  %\bar "||"
  
  \repeat volta 2 {
    s1^\markup{Tutti, A1 Theme} |
    s1*15
  }
  s1^\markup{B Bridge}
  s1*15
  \bar "||"
  s1^\markup{A2 Theme} |
  s1*15
  \bar "||"
  
  s1^\markup{Coda} 
  s1*7
  \bar "|."
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
  \repeat unfold 3 {
    \repeat volta 2 {
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
    }
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
  % coda 
  r1 | %c:7 | 
  r1 | %c:7 |
  f:m6 | %f2:m bes:13 %f:m6 | %
  f:m6 | %ees:9 aes:13 %f:m6 |
  f:m6 | %des:9 c:aug7maj9 %f:m6 |
  f:m6 | %f1:m69%f:m6 |
  r1 | %c:7 | 
  r1 | %c:7 |
  r4
}


DrumsUp = \drummode {
  % drums + intro
  \repeat unfold 8 {
    r4 sn4 hh8 sn4. | 
    sn4 hh8 sn4. hh8 r8
  }
  \repeat unfold 3 {
    % theme
    \repeat volta 2 {
      \repeat unfold 8 {
        r4 sn4 hh8 sn4. | 
        sn4 hh8 sn4. hh8 r8
      }
    }
    % bridge
    \repeat unfold 8 {
      <<
        \new DrumVoice {cymra4 cymra8. cymra16 cymra4 cymra8. cymra16 |
        cymra4 cymra8. cymra16 cymra4 cymra8. cymra16 |}
        \new DrumVoice {r4 sn4. sn4. | sn4. sn4. r4 |}
      >>
    }
    % theme again
    \repeat unfold 8 {
      r4 sn4 hh8 sn4. | 
      sn4 hh8 sn4. hh8 r8
    }
  }
  % coda
  R1*2 |
  r8 sn4. r4. cymc8 | 
  r8 sn4 sn8 r2 |
  r8 sn4. r4. cymc8 | 
  r8 sn4 sn8 r2 |
  R1 |
  r2 r8 sn r4 |
}

DrumsDown = \drummode {
  \repeat unfold 8 {
    bd4. bd4. bd4 |
    r8 bd4. bd4. bd8 |
  }
  \repeat unfold 3 {
    % theme
    \repeat volta 2 {
      \repeat unfold 8 {
        bd4. bd4. bd4 |
        r8 bd4. bd4. bd8 |
      }
    }
    % bridge
    \repeat unfold 8 {
      
      bd4. bd4. bd4 |
      r8 bd4. bd4. bd8 |
    }
    % theme again
    \repeat unfold 8 {
      bd4. bd4. bd4 |
      r8 bd4. bd4. bd8 |
    }
  }
  % coda
  R1*2 |
  bd4 r8 bd8 bd4 r8 bd |
  bd4 r8 bd8 bd4 r8 bd |
  bd4 r8 bd8 bd4 r8 bd |
  bd4 r8 bd8 bd4 r8 bd |
  R1*2
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

oboeNotesGeneric = \relative c''{
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
  c2 bes8 aes r g~ |
  g1 |
  % theme again
  c1~ |
  c1~ |
  c4. des4 c4 g8 |
  bes4 c e g, |
  bes1~ |
  bes~ |
  bes4. c4 des4 c8 |
  des8 des c4 b g |
  bes1~ |
  bes~ |
  bes8 c8~ c b8~ b bes8~ bes a8~ |
  a8 aes8~ aes g~ g e~ e f~ |
  f1~ |
  f~ |
  f~ |
  f |
}

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
      \oboeNotesGeneric
      R1*48
      \oboeNotesGeneric
      % coda
      r8 c8~ c b8~ b bes8~ bes a8~ |
      a8 aes8~ aes g~ g e~ e f~ |
      f1~ |
      f~ |
      f~ |
      f |
      r8 c'8~ c b8~ b bes8~ bes a8~ |
      a8 aes8~ aes g~ g ges8 r4 |
      \bar "|."
    }
  }
}

tenorSaxNotesGeneric = \relative c''{
      % theme
      \repeat volta 2 {
        f,1~ |
        f1~ |
        f4 ges f c |
        ees f a c, |
        ees1~ |
        ees~ |
        ees4 f ges f |
        ges f e c |
        ees1~ |
        ees~ |
        ees4 f e ees |
        d des c bes |
        aes1~ |
        aes~ |
        aes~ |
        aes |
      }
      % bridge
      d1 |
      c2 ees4. d8~ |
      d1~ |
      d1 |
      c |
      bes2 des4. c8~ |
      c1~ |
      c1 |
      g1 |
      bes2 ees,4. g8~ |
      g1 |
      g2 aes4 g |
      f1~ |
      f2 ees4 e |
      f2 g8 a r ces~ |
      ces1 |
      % theme again
      f1~ |
      f1~ |
      f4. ges4 f4 c8 |
      ees4 f a c, |
      ees1~ |
      ees~ |
      ees4. f4 ges f8 |
      ges8 ges f4 e c |
      ees1~ |
      ees~ |
      ees8 f~ f e~ e ees~ees d~ |
      d des~ des c~ c bes~ bes aes~ |
      aes1~ |
      aes~ |
      aes~ |
      aes |
}

TenorSaxNotes = \transpose \originPitch \targetPitchTenorSax {
  \new Voice {
    \global
    \relative c''{
      \set Staff.instrumentName = #"TenorSax "
      \set Staff.midiInstrument = \midiInstrTenorSax
      \transposition bes, %% for MIDI files? to be verified

      \clef \clefTenorSax
      \compressFullBarRests
      R1*8 |
      R1*8 |
      \tenorSaxNotesGeneric
      R1*48
      \tenorSaxNotesGeneric
      % coda
      r8 f,~ f e~ e ees~ees d~ |
      d des~ des c~ c bes~ bes aes~ |
      aes1~ |
      aes~ |
      aes~ |
      aes |
      r8 f'~ f e~ e ees~ees d~ |
      d des~ des c~ c bes8 r4 |
      \bar "|."
    }
  }
}

tromboneNotesGeneric = \relative c'' {
  % theme
  \repeat volta 2 {
    des,,1~ |
    des1~ |
    des4 d des aes |
    ces des f aes, |
    ces1~ |
    ces~ |
    ces4 des d des |
    d des c aes |
    ces1~ |
    ces~ |
    ces4 des c ces |
    bes a aes ges |
    g1~ |
    g~ |
    g~ |
    g |
  }
  % bridge
  d'1 |
  ees2 ees4. f8~ |
  f1~ |
  f1 |
  g, |
  gis2 a4. bes8~ |
  bes1~ |
  bes1 |
  c1 |
  des2 d4. ees8~ |
  ees1 |
  ees2 bes4 ees |
  c1~ |
  c2 g4 aes |
  g2 f8 ees r des~ |
  des1 |
  % theme again
  des'1~ |
  des1~ |
  des4. d4 des4 aes8 |
  ces4 des f aes, |
  ces1~ |
  ces~ |
  ces4. des4 d des8 |
  d d des4 c aes |
  ces1~ |
  ces~ |
  ces8 des~ des c~ c ces~ ces bes~ |
  bes a~ a  aes~ aes ges~ ges g~ |
  g1~ |
  g~ |
  g~ |
  g |
}

TromboneNotes = \transpose \originPitch \targetPitchTrombone {
  \new Voice {
    \global
    \relative c''{
      \set Staff.instrumentName = #"Trombone "
      \set Staff.midiInstrument = \midiInstrTrombone
      \transposition bes %% for MIDI files? to be verified

      \clef \clefTrombone
      \compressFullBarRests
      R1*8 |
      R1*8 |
      \tromboneNotesGeneric
      R1*48
      \tromboneNotesGeneric
      r8 des,,~ des c~ c ces~ ces bes~ |
      bes a~ a  aes~ aes ges~ ges g~ |
      g1~ |
      g~ |
      g~ |
      g |
      r8 des'~ des c~ c ces~ ces bes~ |
      bes a~ a  aes~ aes ges8 r4 |
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
      R1*8 |
      \repeat unfold 4 {
        c,4. < e g bes >4. c4 |
        des4. <f aes ces> des4 |
      }
      \repeat unfold 3 {
        % theme 
        \repeat volta 2 {
          \repeat unfold 6 {
            c4. < e g bes >4. c4 |
            des4. <f aes ces> des4 |
          }
          \chordmode {
            r4 f8:m6 r8 r f8:m6 r4 |
            f4.:m6 f4.:m6 r4 |
            r4 f8:m6 r8 r f8:m6 r4 |
            f4.:m6 f4.:m6 r4 |
          }
        }
        % bridge
        \chordmode{
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
        }
        % theme again
        \repeat unfold 6 {
          c4. < e g bes >4. c4 |
          des4. <f aes ces> des4 |
        }
        \chordmode {
          r4 f8:m6 r8 r f8:m6 r4 |
          f4.:m6 f4.:m6 r4 |
          r4 f8:m6 r8 r f8:m6 r4 |
          f4.:m6 f4.:m6 r4 |
        }
      }
      % coda
      r8 c'8~ c b8~ b bes8~ bes a8~ |
      a8 aes8~ aes g~ g e~ e f~ |
      f1~ |
      f~ |
      f~ |
      f |
      r8 c'8~ c b8~ b bes8~ bes a8~ |
      a8 aes8~ aes g~ g ges8 r4 |
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
      \chordSeq

      %\bar "|."
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
