\version "2.18.2"

pieceTitle = "Cherokee"
composer = "Ray Noble"

\header{  title = \pieceTitle
  composer = \composer
}

globalStyle = { % Use for various rendering styles that apply to all parts
  \accidentalStyle "modern-cautionary"
}

structure = { % Use to give annotations, mainly, also checking meaure consistency
  s1^\markup{Intro - Lullaby} |
  s1*19 |
  s1^\markup{Intro - all aboard!} |
  s1*3 |
  s1^\markup{A}
}

global = { % Use for tempo and key changes
  \time 4/4
  \tempo 4 = 136
  \key bes \major
}


chordSeq = \chordmode {
  r1 * 20 | 
  r1 * 4 |
  bes1:maj7 | bes2:maj7 f2:aug7 |
  f1:m7 | bes:7 |
  ees:maj7 | ees:maj7 | 
  aes:7 | aes:7 |
  bes:5 | d2:m7 g:7 |
  c1:7 | c:7 |
  c:m7 | f2:m75 g:7 |
  c1:m7 | f1:aug7 
  c:m7 | f:7 |
  bes1:5 | bes:5
}


DrumsUp = \drummode {
  \repeat unfold 20 {toml2 toml4 toml | }
  hh2 hh | hh4 hh hh hh |
  hhc16 hhc hhc hhc hhc hhc hhc hhc 
    hhc16 hhc hho8 hhc16 hhc hho8 |
    hhc16 hhc hhc hhc hhc hhc hhc hhc 
    hhc16 hhc hho8 hhc16 hhc hho8 |
  \repeat unfold 20 {
    hhc16 hhc hhc hhc hhc hhc hhc hhc 
    hhc16 hhc hho8 hhc16 hhc hho8 }
}

DrumsDown = \drummode {
  \repeat unfold 20 {bd2 bd4 bd | }
  R1 * 4
  \repeat unfold 10 {
    bd4 sn4 bd sn | bd8. bd16 sn8 bd r2 | 
  }
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
      \repeat volta 2 
      {
        d,1 | f2 g | bes1 | g1 | f1 | d2 f | d1 | c1 |
        bes1 | d2 f | d'1 | bes1 |
      }
      \alternative
      {
        {g1 | f2 d | c1 | cis1 |}
        {g'1 | d1 | bes~ | bes |}
      }
      R1*4 |
      \repeat volta 2 
      {
        d1 | f2 g | bes1 | g1 | f1 | d2 f | d1 | c1 |
        bes1 | d2 f | d'1 | bes1 |
      }
      \alternative
      {
        {g1 | f2 d | c1 | cis1 |}
        {g'1 | d1 | bes~ | bes |}
      }
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
      \repeat volta 2 
      {
        d,1 | f2 g | bes1 | g1 | f1 | d2 f | d1 | c1 |
        bes1 | d2 f | d'1 | bes1 |
      }
      \alternative
      {
        {g1 | f2 d | c1 | cis1 |}
        {g'1 | d1 | bes~ | bes |}
      }
      R1*4 |
      \repeat volta 2 
      {
        d1 | f2 g | bes1 | g1 | f1 | d2 f | d1 | c1 |
        bes1 | d2 f | d'1 | bes1 |
      }
      \alternative
      {
        {g1 | f2 d | c1 | cis1 |}
        {g'1 | d1 | bes~ | bes |}
      }
    }
  }
}

SopranoSaxNotes = \transpose \originPitch \targetPitchSopranoSax {
  \new Voice {
    \global
    \relative c''{
      \set Staff.instrumentName = #"SopranoSax "
      \set Staff.midiInstrument = \midiInstrSopranoSax
      \transposition \originPitchSopranoSax % for MIDI files? to be verified

      \clef \clefSopranoSax
      \compressFullBarRests
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
    }
  }
}

TromboneNotes = \transpose \originPitch \targetPitchTrombone {
  \new Voice {
    \global
    \relative c'{
      \set Staff.instrumentName = #"Trombone "
      \set Staff.midiInstrument = \midiInstrTrombone
      \transposition \originPitchTrombone % for MIDI files? to be verified

      \clef \clefTrombone
      \compressFullBarRests
      \repeat volta 2 
      {
        bes1 | a2 f | f1 | bes1 | 
        bes1 | aes2 g | ges1 | aes1 |
        bes1 | d2 des | c1 | g1 |
      }
      \alternative
      {
        {bes1 | aes2 g | ees1 | f1 |}
        {c'1 | f,1 | bes~ | bes |}
      }
      R1*4 |
      \repeat volta 2 
      {
        d1 | f2 g | bes1 | g1 | f1 | d2 f | d1 | c1 |
        bes1 | d2 f | d'1 | bes1 |
      }
      \alternative
      {
        {g1 | f2 d | c1 | cis1 |}
        {g'1 | d1 | bes~ | bes |}
      }
      
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
      \repeat volta 2
      {
        R1*12
      }
      \alternative
      {{R1*4}{R1*4}}
      R1*2
      \chordmode{
        a16:maj7 bes8.:maj7 bes8.:maj7 bes16:maj7~
        bes16:maj7 bes8:maj7 bes16:maj7 bes8:maj7 bes8:maj7 | 
        a16:maj7 bes8.:maj7 bes8.:maj7 bes16:maj7~
        bes16:maj7 bes8:maj7 bes16:maj7 bes8:maj7 bes8:maj7 |  
      \repeat volta 2
      {
        a16:maj7 bes8.:maj7 bes8.:maj7 bes16:maj7~
        bes16:maj7 bes8:maj7 bes16:maj7 bes8:maj7 bes8:maj7 | 
        a16:maj7 bes8.:maj7 bes8.:maj7 f16:aug7~
        f16:aug7 f8:aug7 f16:aug7 f8:aug7 f8:aug7 |
        e16:m7 f8.:m7 f8.:m7 f16:m7~
        f16:m7 f8:m7 f16:m7 f8:m7 f8:m7 |
        a16:7 bes8.:7 bes8.:7 bes16:7~
        bes16:7 bes8:7 bes16:7 bes8:7 bes8:7 | 
        d16:maj7 ees8.:maj7 ees8.:maj7 ees16:maj7~
        ees16:maj7 ees8:maj7 ees16:maj7 ees8:maj7 ees8:maj7 |
        d16:maj7 ees8.:maj7 ees8.:maj7 ees16:maj7~
        ees16:maj7 ees8:maj7 ees16:maj7 ees8:maj7 ees8:maj7 | 
        g16:7 aes8.:7 aes8.:7 aes16:7~
        aes16:7 aes8:7 aes16:7 aes8:7 aes8:7 |
        g16:7 aes8.:7 aes8.:7 aes16:7~
        aes16:7 aes8:7 aes16:7 aes8:7 aes8:7 |
        a16:maj7 bes8.:maj7 bes8.:maj7 bes16:maj7~
        bes16:maj7 bes8:maj7 bes16:maj7 bes8:maj7 bes8:maj7 | 
        cis16:m7 d8.:m7 d8.:m7 g16:7~
        g16:7 g8:7 g16:7 g8:7 g8:7 |
        b16:m7 c8.:7 c8.:7 c16:7~
        c16:7 c8:7 c16:7 c8:7 c8:7 |
        b16:m7 c8.:7 c8.:7 c16:7~
        c16:7 c8:7 c16:7 c8:7 c8:7 |
      }
      \alternative
      {
        {
          
        }
        {
          R1*4
        }
      }
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

    \tag #'Violin \transpose \originPitch \targetPitchViolin {
      \new ChordNames {\chordSeq}}

    \tag #'Oboe \transpose \originPitch \targetPitchOboe {
      \new ChordNames {\chordSeq}}

    \tag #'SopranoSax \transpose \originPitch \targetPitchSopranoSax {
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
    \tag #'score \tag #'SopranoSax \new Staff { << \globalStyle \structure \SopranoSaxNotes >> }
    \tag #'score \tag #'TenorSax \new Staff { << \globalStyle \structure \TenorSaxNotes >> }
    \tag #'score \tag #'Trombone \new Staff { << \globalStyle \structure \TromboneNotes >> }
    \tag #'score \tag #'Guitar \new Staff { << \globalStyle \structure \GuitarNotes >> }
    \tag #'score \tag #'Piano \new Staff { << \globalStyle \structure \PianoNotes >> }
  >>
}
%%% Local Variables
%%% Lilypond-master-file: "cherokee_score.ly"
%%% End:
% -*- master: cherokee_score.ly;
% -*- output: cherokee_score-score.pdf
