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
  s1*7 | \break
  %s1*4 | \break
  s1*8 | \break
  %s1*4 | \break
  s1*4 | \break
  s1^\markup{Intro - all aboard!} |
  s1*3 | \break
  s1^\markup{A}
  s1*3 | \break
  s1*4 | \break
  s1*4 | \break
  s1*4 | \break
  s1*4 | \break
  \bar "||"
  s1^\markup{B} 
  s1*3 | \break
  s1*4 | \break
  s1*4 | \break
  s1*4 | \break
  \bar "||"
  s1^\markup{A'}
  s1*3 | \break
  s1*4 | \break
  s1*4 | \break
  s1*4 | \break
  \bar "|."
}

global = { % Use for tempo and key changes
  \time 4/4
  \tempo 4 = 136
  \key bes \major
}


chordSeq = \chordmode {
  \repeat volta 2 
  {
    r1 * 12 |
  }
  \alternative
  {
    {r1 * 4 | }
    {r1 * 4 | }
  }
  r1 * 4 |
  \repeat volta 2 
  {
    bes1:maj7 | bes2:maj7 f2:aug7 |
    f1:m7 | bes:7 |
    ees:maj7 | ees:maj7 |
    aes:7 | aes:7 |
    bes:5 | d2:m7 g:7 |
    c1:7 | c:7 |
  }
  \alternative
  {
    {
      c:m7 | f2:m75 g:7 |
      c1:m7 | f1:aug7  |
    }
    {
      c:m7 | f:7 |
      bes1:5 | bes:5 |
    }
  }
  
  cis1:m7 | fis:7 | b:maj7 | b:maj7 |
  b:m7 | e:7 | a:maj7 | a:maj7 |
  a:m7 | d:7 | g:maj7 | g:maj7 |
  g:m7 | c:7 | c:m7 | f:aug7 |
  % theme A'
  bes1:maj7 | bes2:maj7 f2:aug7 |
  f1:m7 | bes:7 |
  ees:maj7 | ees:maj7 |
  aes:7 | aes:7 |
  bes:5 | d2:m7 g:7 |
  c1:7 | c:7 | 
  c:m7 | f:7 |
  bes1:5 | bes:5 |
}


DrumsUp = \drummode {
  \repeat volta 2 
  {
    \repeat unfold 12 {toml2 toml4 toml | }
  }
  \alternative
  {
    {\repeat unfold 4 {toml2 toml4 toml | }}
    {\repeat unfold 4 {toml2 toml4 toml | }}
  }
  hh2 hh | hh4 hh hh hh |
  hhc16 hhc hhc hhc hhc hhc hhc hhc
  hhc16 hhc hho8 hhc16 hhc hho8 |
  hhc16 hhc hhc hhc hhc hhc hhc hhc
  hhc16 hhc hho8 hhc16 hhc hho8 |
  \repeat volta 2 
  {
    \repeat unfold 12 {hhc16 hhc hhc hhc hhc hhc hhc hhc 
    hhc16 hhc hho8 hhc16 hhc hho8 | }
  }
  \alternative
  {
    {\repeat unfold 4 {hhc16 hhc hhc hhc hhc hhc hhc hhc 
    hhc16 hhc hho8 hhc16 hhc hho8 | }}
    {\repeat unfold 4 {hhc16 hhc hhc hhc hhc hhc hhc hhc 
    hhc16 hhc hho8 hhc16 hhc hho8 | }}
  }
  \repeat unfold 16
  {
    hhc8 hho hhc8 hho hhc8 hho hhc8 hho |  
  }
  \repeat unfold 16 
  {
    hhc16 hhc hhc hhc hhc hhc hhc hhc 
    hhc16 hhc hho8 hhc16 hhc hho8 | 
  }
}

DrumsDown = \drummode {
  \repeat volta 2
  {
    \repeat unfold 12 {bd2 bd4 bd | }
  }
  \alternative
  {
    {\repeat unfold 4 {bd2 bd4 bd | }}
    {\repeat unfold 4 {bd2 bd4 bd | }}
  }
  R1 * 4
  \repeat volta 2
  {
    \repeat unfold 6 {bd4 sn4 bd sn | bd8. bd16 sn8 bd r2 |}
  }
  \alternative
  {
    {\repeat unfold 2 {bd4 sn4 bd sn | bd8. bd16 sn8 bd r2 | }}
    {\repeat unfold 2 {bd4 sn4 bd sn | bd8. bd16 sn8 bd r2 | }}
  }
  \repeat unfold 7
  {
    bd4 sn8 bd r8 sn tomfl tomfl |
  }
  bd4 tommh16 tommh8 tomml16 r16 tomml8 tomfl16 r16 tomfl16 tomfl8 |
  \repeat unfold 6
  {
    bd4 sn8 bd r8 sn tomfl tomfl |
  }
  bd4 sn8 bd sn16 sn sn sn sn sn sn sn  |
  sn sn sn sn tommh tommh tommh tommh 
  tomml tomml tomml tomml tomfl tomfl tomfl tomfl |
  \repeat unfold 8 
  {
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
    \relative c'''{
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
      % break B
      dis'1~ | dis2 cis | cis4 ais fis2~ | fis2 cis' |
      cis4 a fis2~ | fis b2 | e,1~ | e1 |
      b'1~ | b2 a | a4 fis d2~ | d2 a' | 
      a4 f d2~ | d g | c,1 | cis |
      % theme A'
      d1 | f2 g | bes1 | g1 | f1 | d2 f | d1 | c1 |
      bes1 | d2 f | d'1 | bes1 | g1 | d1 | bes~ | bes |
    }
  }
}

OboeNotes = \transpose \originPitch \targetPitchOboe {
  \new Voice {
    \global
    \relative c'''{
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
      % break B
      dis1~ | dis2 cis | cis4 ais fis2~ | fis2 cis' |
      cis4 a fis2~ | fis b2 | e,1~ | e1 |
      b'1~ | b2 a | a4 fis d2~ | d2 a' | 
      a4 f d2~ | d g | c,1 | cis |
      % theme A'
      d1 | f2 g | bes1 | g1 | f1 | d2 f | d1 | c1 |
      bes1 | d2 f | d'1 | bes1 | g1 | a1 | bes~ | bes |
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
      \repeat volta 2 
      {
        a1 | d2 ees | f1 | f1 | 
        d1 | bes2 bes | bes1 | ges1 |
        f1 | a2 d | e1 | e1 |
      }
      \alternative
      {
        {ees1 | d2 b | bes1 | a1 |}
        {ees'1 | a,1 | f~ | f |}
      }
      R1*4 |
      \repeat volta 2 
      {
        a1 | d2 ees | f1 | f1 | 
        d1 | bes2 bes | bes1 | ges1 |
        f1 | a2 d | e1 | e1 |
      }
      \alternative
      {
        {ees1 | d2 b | bes1 | a1 |}
        {ees'1 | a,1 | f~ | f |}
      }
      % break B
      b2 gis2~ | gis2 gis | gis4 fis e2 | dis2 d |
      a'4 fis e2 | d d2 | cis1~ | cis1 |
      b'1~ | b2 a | a4 fis d2~ | d2 a' |
      a4 f d2~ | d g | c,1 | cis |
      % theme A'
      a1 | d2 ees | f1 | f1 |
      d1 | bes2 bes | bes1 | ges1 |
      f1 | a2 d | e1 | e1 |
      ees'1 | a,1 | f~ | f |
    }
  }
}

TenorSaxNotes = \transpose \originPitch \targetPitchTenorSax {
  \new Voice {
    \global
    \relative c'{
      \set Staff.instrumentName = #"TenorSax "
      \set Staff.midiInstrument = \midiInstrTenorSax
      \transposition \originPitchTenorSax % for MIDI files? to be verified

      \clef \clefTenorSax
      \compressFullBarRests
      \repeat volta 2
      {
        f1 | bes2 a | aes1 | aes1 |
        g1 | g2 d | ees1 | ees1 |
        d1 | f2 g | bes1 | g1 |
      }
      \alternative
      {
        {bes1 | aes2 g | g1 | ees1 |}
        {bes1 | ees,1 | d~ | d |}
      }
      R1*4 |
      \repeat volta 2
      {
        f'1 | bes2 a | aes1 | g1 |
        g1 | g2 d | ees1 | ees1 |
        d1 | f2 g | bes1 | g1 |
      }
      \alternative
      {
        {bes1 | aes2 g | g1 | ees1 |}
        {bes1 | ees,1 | d~ | d |}
      }
      % break B
      gis'2 e~ | e2 dis | e4 dis cis2 | b2 b |
      cis4 d e2~ | e fis2 | gis1~ | gis1 |
      b'1~ | b2 a | a4 fis d2~ | d2 a' | 
      a4 f d2~ | d g | c,1 | cis |
      % theme A'
      f'1 | bes2 a | aes1 | g1 |
      g1 | g2 d | ees1 | ees1 |
      d1 | f2 g | bes1 | g1 |
      bes1 | ees,1 | d~ | d |
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
        bes1 | d2 cis | c2 f, | bes1 |
        ees,1 | ees2 bes' | aes1 | aes1 |
        bes1 | c2 b | c1 | c1 |
      }
      \alternative
      {
        {c1 | f,2 g | c1 | f,1 |}
        {c'1 | f,1 | bes~ | bes |}
      }
      R1*4 |
      \repeat volta 2
      {
        bes1 | d2 cis | c2 f, | bes1 |
        ees,1 | ees2 bes' | aes1 | aes1 |
        bes1 | c2 b | c1 | c1 |
      }
      \alternative
      {
        {c1 | f,2 g | c1 | f,1 |}
        {c'1 | f,1 | bes~ | bes |}
      }
      % break B
      cis1 | ais2 fis | gis4 ais b2~ | b2 a |
      gis4 a b2 | gis e | a1~ | a1 |
      a1 | fis2 d | e4 fis g2~ | g2 f | 
      e4 f g2 | e c | c2 ees | f1 |
      % theme A'
      bes1 | d2 cis | c2 f, | bes1 |
      ees,1 | ees2 bes' | aes1 | aes1 |
      bes1 | c2 b | c1 | c1 | 
      c1 | f,1 | bes~ | bes |
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
          b16:m7 c8.:m7 c8.:m7 c16:m7~
          c16:m7 c8:m7 c16:m7 c8:m7 c8:m7 |
          e16:m7 f8.:m13 f8.:m13 g16:7~
          g16:7 g8:7 g16:7 g8:7 g8:7 |
          b16:m7 c8.:m7 c8.:m7 c16:m7~
          c16:m7 c8:m7 c16:m7 c8:m7 c8:m7 |
          e16:aug7 f8.:aug7 f8.:aug7 f16:aug7~
          f16:aug7 f8:aug7 f16:aug7 f8:aug7 f8:aug7 |
        }
        {
          b16:m7 c8.:m7 c8.:m7 c16:m7~
          c16:m7 c8:m7 c16:m7 c8:m7 c8:m7 |
          e16:m7 f8.:7 f8.:7 f16:7~
          f16:7 f8:7 f16:7 f8:7 f8:7 |
          a16:maj7 bes8.:maj7 bes8.:maj7 bes16:maj7~
          bes16:maj7 bes8:maj7 bes16:maj7 bes8:maj7 bes8:maj7 | 
          a16:maj7 bes8.:maj7 bes8.:maj7 bes16:maj7~
          bes16:maj7 bes8:maj7 bes16:maj7 bes8:maj7 bes8:maj7 | 
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
