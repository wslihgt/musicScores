\version "2.18.2"

pieceTitle = "Rondo a la cr'eol"
composer = "Mozart"

\header{  title = \pieceTitle
  composer = \composer
}

globalStyle = { % Use for various rendering styles that apply to all parts
  \accidentalStyle "modern-cautionary"
}

structure = { % Use to give annotations, mainly, also checking meaure consistency
  s1.^\markup{\circle 0 intro batterie} |
  s1. * 3 |
  s1.^\markup{basse} |
  s1. * 3 |
  s1.^\markup{\circle 1 theme A} | % should be a repeat here
  s1. * 7 | s1. | % repeat measure?
  s1.^\markup{\circle 2 theme B} |
  s1. * 7 |
  s1.^\markup{\circle 3 theme A'} |
  s1. * 7 |
  s1.^\markup{\circle 4 theme C } | % should be a repeat here
  s1. * 7 | s1. | % repeat measure
  s1.^\markup{\circle 5 theme D - fast? paroles rap/ragga/gangsta style?} | 
  s1. * 7 |
  % s1.^\markup{\circle 5 theme D variante} |
  % s1. * 7 |
  s1.^\markup{\circle 6 theme E} | 
  s1. * 7 |
  %s1.^\markup{\circle 7 theme D'} |
  %s1. * 7 |
  s1.^\markup{\circle 7 theme C - finish with this?} | % should be a repeat here
  s1. * 7 | % repeat measure - to finish? repeat ad lib.?
  \bar "|."
}

global = { % Use for tempo and key changes
  \time 12/8
  \tempo 4. = 120
  \key a \minor
}

DrumsUp = \drummode {
  \repeat unfold 7{
  r8 hh8 r8 r8 hh8 r8 r8 hh8 r8 r8 hh8 r8 |}
  r8 hh8 r8 r8 hh8 r8 r2. |
  % theme A
  \repeat volta 2
  {
    \repeat unfold 6{
      r8 hh8 r8 r8 hh8 r8 r8 hh8 r8 r8 hh8 r8 |}
    cymr4. cymra4. cymr cymrb | 
  }
  \alternative
  {
    {cymr8 r4 r4. r2. | }
    {cymr4. r4. cymr4. cymra4.}
  }
  % theme B
  \repeat unfold 3
  {
    r8 hh8 r8 r8 hh8 r8 r8 hh8 r8 r4. |
    r4. hh8 r4 r4. hh8 r4 |
  }
  r8 hh8 r8 r8 hh8 r8 r8 hh8 r8 r4. |
  r1. |
  % theme A'
  \repeat unfold 4
  {
    r8 hh8 r8 r8 hh8 r8 r8 hh8 r8 r8 hh8 r8 |
  }
  cymr4. cymra4. cymr cymrb | 
  cymr4. cymra4. cymr cymrb | 
  r8 hh8 r8 r8 hh8 r8 r8 hh8 r8 r8 hh8 r8 |
  {cymr4. cymrb4. cymr4. cymra4.}
  % theme C
  \repeat volta 2
  {
    \repeat unfold 7
    {
      cymr4 cymr8~ cymr cymr4~ cymr8 cymr8 r8 r8 cymr8 r8 |
    }
  }
  \alternative
  {
    {cymr8 r4 r8 cymr16 cymr cymr8 cymr r4 r4. |}
    {cymr4 cymr8~ cymr cymr4 cymr4. r4. |}
  }
  % theme D
  \repeat unfold 8
  {
    r8 hh8 r8 r8 hh8 r8 r8 hh8 r8 r8 hh8 r8 |
  }
  % theme E
  \repeat unfold 8
  {
    r8 hh8 r8 r8 hh8 r8 r8 hh8 r8 r8 hh8 r8 |
  }
  % theme C final
  \repeat unfold 7
  {
    cymr4 cymr8~ cymr cymr4~ cymr8 cymr8 r8 r8 cymr8 r8 |
  }
  cymr8 cymr16 cymr cymr8 cymr8 cymr16 cymr cymr8 cymr8 r4 r4.
}

DrumsDown = \drummode {
  \repeat unfold 7{
    bd4 bd8 bd sn4 bd4 bd8 bd sn4 |
  }
  bd4 bd8 bd sn4 r2. |
  \repeat volta 2 
  {
      \repeat unfold 6
      {
        bd4 bd8 bd sn4 bd4 bd8 bd sn4 |
      }
      bd8 sn4 bd8 sn4 bd8 sn4 bd8 sn4  |
  }
  \alternative
  {
    {bd8 sn16 sn r8 sn8 sn4 r2. | }
    {bd8 r4 r4. r2.  |}
  }
  % theme B
  \repeat unfold 3
  {
    bd4 bd8 bd sn4 bd4 bd8 bd sn8 sn |
    bd4 tomh8~ tomh toml4 tomh4 toml8 sn4. |
  }
  bd4 bd8 bd sn4 bd4 bd8 bd sn8 sn |
  bd8 tomh4 tomh8 tomh4 toml8 toml4 tomfl8 tomfl tomfl |
  % theme A'
  \repeat unfold 8
  {
    bd4 bd8 bd sn4 bd4 bd8 bd sn4 |
  }
  % theme C
  \repeat volta 2 
  {
      \repeat unfold 6
      {
        bd4 bd8 bd sn4 bd4 bd8 bd sn4 |
      }
      bd8 sn4 bd8 sn4 bd8 sn4 bd8 sn4 |
  }
  \alternative
  {
    {bd8 sn16 sn r8 sn8 sn4 r2. | }
    {bd8 r4 r4. r2.  |}
  }
  % theme D
  \repeat unfold 7
  {
    bd4 bd8 bd sn4 bd4 bd8 bd sn4 |
  }
  bd4 bd8 bd sn4 bd8 tomh16 tomh tomh8 toml toml tomfl |
  % theme E 
  \repeat unfold 7
  {
    bd4 bd8 bd sn4 bd4 bd8 bd sn4 |
  }
  bd4 bd8 bd sn4 bd8 tomh16 tomh tomh8 toml toml tomfl |
  % theme C final
  \repeat unfold 6
  {
    bd4 bd8 bd sn4 bd4 bd8 bd sn4 |
  }
  bd8 sn4 bd8 sn4 bd8 sn4 bd8 sn4 |
  bd8 r4 r4. r2.
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


SingerNotes = \transpose \originPitch \targetPitchSinger {
  \new Voice {
    \global
    \relative c''{
      \set Staff.instrumentName = #"Singer "
      \set Staff.midiInstrument = \midiInstrSinger
      \transposition \originPitchSinger % for MIDI files? to be verified

      \clef \clefSinger
      \compressFullBarRests
      R1.*7 |
      r2. b8 a4 gis8 a4 |
      % theme A
      \repeat volta 2{
        c4 r8 r4. d8 c4 b8 c4 |
        e4 r8 r4. f8 e4 dis8 e4 |
        b'8 a4 gis8 a4 b8 a4 gis8 a4 |
        c4 r8 r4. a4. c |
        b4 b8 a g4 r2. | 
        b4 b8 a g4 r2. | 
        b4. a g fis |
      }
      \alternative{
        {e4. r4. b8 a4 gis8 a4 |}
        {e'4. r4. \breathe e4. f  |}
      }
      % theme B
      g4 g8 g8 g a8~ a8 a g f e4 |
      d4. r4. e4. f |
      g4 g8 g8 g a8~ a8 a g f e4 |
      d4. r4. c4. d |
      e4 e8 e8 f4~ f8 f8 e d c4 |
      b4. r4. c4. d |
      e4 e8 e8 f4~ f8 f8 e d c4 |
      b4. r4. \breathe b8 a4 gis8 a4 |
      % theme A'
      c4 r8 r4. d8 c4 b8 c4 |
      e4 r8 r4. f8 e4 dis8 e4 |
      b'8 a4 gis8 a4 b8 a4 gis8 a4 |
      c4 r8 r4. a4. b |
      c b a gis |
      a e f d |
      c2. b2.\trill |
      a2. \breathe a4. b |
      % theme C
      \repeat volta 2
      {
        cis2. a4. b |
        cis2. a4. b |
        cis8 cis b a gis4 fis8 fis gis a b4 |
        gis4 e8 fis e4 \breathe a4. b |
        cis2. a4. b |
        cis2. a4. b |
        cis4 b8 a gis4 fis8 b4 gis8 e4 | 
      }
      \alternative
      {
        {a4. r4. a b |}
        {a4. r4. r2.  |} 
      }
      % theme D
      R1.^\markup{tacet} | R1. * 6 |
      r2. e'8 e d cis b4 | 
      % theme E
      a4 b8 cis d e8~ e fis4 gis a8 |
      a4 gis8 fis e4 e8 d4 cis8 b4 |
      a4 b8 cis d e8~ e fis4 gis8 a4 |
      ais4 b8~ b8 \breathe e, e e e d cis b4 |
      a4 b8 cis d e8~ e fis4 gis a8 |
      a4 gis8 fis e4 e8 d d cis8 b4 |
      cis8 cis e a, a cis b b d gis, b4 |
      a4. r4. a4. b |
      % theme C final
      cis2. a4. b |
      cis2. a4. b |
      cis8 cis b a gis4 fis8 fis gis a b4 |
      gis4 e8 fis e4 \breathe a4. b |
      cis2. a4. b |
      cis2. a4. b |
      cis4 b8 a gis4 fis8 b4 gis8 e4 | 
      a4 cis8~ cis e4 a4. r4.  
    }
  }
}

SaxAltoNotes = \transpose \originPitch \targetPitchSaxAlto {
  \new Voice {
    \global
    \relative c''{
      \set Staff.instrumentName = #"SaxAlto "
      \set Staff.midiInstrument = \midiInstrSaxAlto
      \transposition \originPitchSaxAlto % for MIDI files? to be verified

      \clef \clefSaxAlto
      \compressFullBarRests
      R1. * 8 |
      % theme A
      \repeat volta 2 
      {
        R1. * 4 |
        g4 g8 fis e4 r2. |
        g4 g8 fis e4 r2. |
        g4. fis e dis |
      }
      \alternative
      {
        {g,4 a8~ a ais4 b4. r4. |}
        {g4. r4. \breathe c4. d |}
      }
      % theme B
      e4 e8 e8 e f8~ f8 f e d c4 |
      b4. g4. c4. d |
      e4 e8 e8 e f8~ f8 f e d c4 |
      b4. r4. a4. b |
      c4 c8 c8 d4~ d8 d8 c b a4 |
      gis4. e4. a4. b |
      c4 c8 c8 d4~ d8 d8 c b a4 |
      gis4. r4. \breathe r2. |
      % theme A'
      R1. * 3 |
      r2. c'4. d |
      e d c b | 
      c a d gis, |
      a2. e | 
      c2. \breathe cis4. e |
      % theme C
      \repeat volta 2
      {
        a2. cis,4. e |
        a2. cis,4. e |
        a8 a gis fis d4 d8 cis d dis fis4 |
        e4 b8~ b4. \breathe cis4. e |
        a2. cis,4. e |
        a2. cis,4. e |
        a8 a gis fis d4 a8 b4 b8 d4 |
      }
      \alternative
      {
        {cis4. r4. cis4. e |}
        {cis4. r4. r4. \tuplet 4/6 {cis'16^\markup{"double tempo" feeling} d cis b }|} 
      }
      % theme D
      \tuplet 4/6 {a b a gis} \tuplet 4/6 {fis a gis fis} 
      \tuplet 4/6 {eis fis gis eis} \tuplet 4/6 {cis dis eis cis } |
      \tuplet 4/6 {fis eis fis gis} \tuplet 4/6 {a gis a b} 
      \tuplet 4/6 {cis bis cis bis} \tuplet 4/6 {cis16 d cis b }|
      \tuplet 4/6 {a b a gis} \tuplet 4/6 {fis a gis fis} 
      \tuplet 4/6 {e fis gis e} \tuplet 4/6 {cis dis e cis } |
      \tuplet 4/6 {dis e fis dis} \tuplet 4/6 {bis cis dis bis} 
      cis4. \tuplet 4/6 {cis'16 d cis b} |
      % or repeat volta?
      \tuplet 4/6 {a b a gis} \tuplet 4/6 {fis a gis fis} 
      \tuplet 4/6 {eis fis gis eis} \tuplet 4/6 {cis dis eis cis } |
      \tuplet 4/6 {fis eis fis gis} \tuplet 4/6 {a gis a b} 
      \tuplet 4/6 {cis bis cis bis} \tuplet 4/6 {cis16 d cis b }|
      \tuplet 4/6 {a b a gis} \tuplet 4/6 {fis a gis fis} 
      \tuplet 4/6 {e fis gis e} \tuplet 4/6 {cis dis e cis } |
      \tuplet 4/6 {dis e fis dis} \tuplet 4/6 {bis cis dis bis} 
      e8^\markup{normal tempo feeling again} e d cis b4 |
      % theme E
      a4 b8 cis d e8~ e fis4 gis a8 |
      cis4 b8 a gis4 gis8 fis4 e8 d4 |
      a4 b8 cis d e8~ e fis4 gis8 a4 |
      ais4 b8~ b8 \breathe e, e e e d cis b4 |
      a4 b8 cis d e8~ e fis4 gis a8 |
      cis4 b8 a gis4 gis8 fis^\markup{"ah ti fille n'a rien que..."} fis e8 d4 |
      e8 e a cis, cis e d d e b d4 |
      cis4. r4. cis e | 
      % theme C final
      a2. cis,4. e |
      a2. cis,4. e |
      a8 a gis fis d4 d8 cis d dis fis4 |
      e4 b8~ b4. \breathe cis4. e |
      a2. cis,4. e |
      a2. cis,4. e |
      a8 a gis fis d4 a8 b4 b8 d4 |
      a'4 e8~ e d4 cis4. r4. 
    }
  }
}

GuitarNotes = \transpose \originPitch \targetPitchGuitar {
  \new Voice {
    \global
    \relative c''{
      \set Staff.instrumentName = #"Guitar "
      \set Staff.midiInstrument = \midiInstrGuitar
      \set Staff.midiMaximumVolume = #0.5
      \transposition \originPitchGuitar % for MIDI files? to be verified

      \clef \clefGuitar
      \compressFullBarRests
      \chordmode{
        R1. * 8
        % theme A
        \repeat volta 2 
        {
          \repeat unfold 4
          {
            r8 a:m r8 r8 a:m r8 r8 a:m r8 r8 a:m r8 |
          }
          \repeat unfold 2
          {
            r8 e:m r8 r8 e:m r8 r8 e:m r8 r8 e:m r8 |
          }
          r8 e:m r8 r8 e:m r8 r8 b:7 r8 r8 b:7 r8 |
        }
        \alternative
        {
          {e8:m6 r4 r4. r2. |}
          {e8:m6 r4 r4. r2. |}
        }
        % theme B
        r8 c:5 r8 r8 c:5 r8 r8 c:5 r8 r8 c:5 r8 |
        r8 g:5 r8 r8 g:5 r8 r8 g:5 r8 r8 g:7 r8 |
        r8 c:5 r8 r8 c:5 r8 r8 c:5 r8 r8 c:5 r8 |
        r8 g:5 r8 r8 g:5 r8 r8 g:5 r8 r8 g:7 r8 |
        r8 a:m r8 r8 a:m r8 r8 a:m r8 r8 a:m r8 |
        r8 e:7 r8 r8 e:7 r8 r8 e:7 r8 r8 e:7 r8 |
        r8 a:m r8 r8 a:m r8 r8 a:m r8 r8 a:m r8 |
        r8 e:7 r8 r8 e:7 r8 e8:7 r4 r4. |
        % theme A'
        \repeat unfold 3
        {
          r8 a:m r8 r8 a:m r8 r8 a:m r8 r8 a:m r8 |
        }
        r8 f:7 r8 r8 f:7 r8 r8 f:7 r8 r8 f:7 r8 |
        r8 a:m r8 r8 a:m r8 r8 d:dim7 r8 r8 d:dim7 r8 |
        r8 a:m r8 r8 a:m r8 r8 d:dim7 r8 r8 d:dim7 r8 |
        r8 a:m r8 r8 a:m r8 r8 e:7 r8 r8 e:7 r8 |
        a4.:m  r4. r2. |
        % theme C
        \repeat volta 2
        {
          a2. a |
          a a |
          a d4. b:7 |
          e2. r2. |
          a a | 
          a a |
          a d4. e |
        }
        \alternative
        {
          {a2. r |}
          {a2. gis2.:7 | } % gis2.:7 sounds good too! should be cis2.:7?
        }
        % theme D
        r8 fis:m r r fis:m r r cis:7 r r cis:7 r |
        r8 fis:m r r fis:m r r cis:7 r r cis:7 r |
        r8 fis:m r r fis:m r r cis:m r r cis:m r |
        r8 gis:7 r r gis:7 r cis4.:m r4. |
        r8 fis:m r r fis:m r r cis:7 r r cis:7 r |
        r8 fis:m r r fis:m r r cis:7 r r cis:7 r |
        r8 fis:m r r fis:m r r cis:m r r cis:m r |
        r8 gis:7 r r gis:7 r cis4.:m r4. |
        % theme E
        r8 a r r a r r a r r a r |
        r8 e:7 r r e:7 r r e:7 r r e:7 r |
        r8 a r r a r r a r r a r |
        r8 e:7 r r e:7 r r e:7 r r e:7 r |
        r8 a r r a r r a r r a r |
        r8 e:7 r r e:7 r r e:7 r r e:7 r |
        r8 a r r a r r e:7 r r e:7 r |
        r8 a r r a r r2. |
        % theme C final
        a2. a |
        a a |
        a d4. b:7 |
        e2. r2. |
        a a | 
        a a |
        a d4. e |
        a4. r8 a a a4. r4. |
      }
    }
  }
}

BassNotes = \transpose \originPitch \targetPitchBass {
  \new Voice {
    \global
    \relative c''{
      \set Staff.instrumentName = #"Bass "
      \set Staff.midiInstrument = \midiInstrBass
      \transposition \originPitchBass % for MIDI files? to be verified

      \clef \clefBass
      \compressFullBarRests
      R1.*4 |
      % intro basse
      a,4 e8~ e b'4~ b4 e,8~ e a4~ | 
      a4 e8~ e gis4~ gis8 e4~ e8 a a |
      a4 e8~ e b'4~ b4 e,8~ e a4~ | 
      a4 e8~ e gis4 r2. | 
      % theme A
      \repeat volta 2 {
        a,4 e8~ e b'4~ b4 e,8~ e a4~ | 
        a4 e8~ e b'4~ b8 e,4~ e8 a a |
        a4 e8~ e b'4~ b4 e,8~ e a4~ | 
        a4 e8~ e b'4~ b8 e,4~ e8 a a |
        e4 b'8~ b e4~ e4 b8~ b8 e,4~  | 
        e4 b'8~ b e4~ e4 b8~ b8 e,8 fis  | 
        g4. a b4 b,8~ b8 e4~ | 
      }
      \alternative
      {
        {e4 f8~ f fis4 g4. r|}
        {e4. r4. r2.| }
      }
      c'4. g c g |
      b g b g |
      c g c g |
      b g b g |
      a e' a, e'|
      gis, d' gis, d' |
      a e' a, e'|
      gis, d' e4. r4. |
      % theme A' 
      a,4 e8~ e b'4~ b4 e,8~ e a4~ | 
      a4 e8~ e b'4~ b8 e,4~ e8 a a |
      a4 e8~ e b'4~ b4 e,8~ e f4 | 
      f4. c' f, c' |
      e, e d d | 
      c c d d |
      e a e gis |
      a r r2. |
      % theme C mariage!
      \repeat volta 2 
      {
        a4 cis8~ cis e4 a, cis8~ cis e4 |
        a,4 cis8~ cis e4 a, cis8~ cis e4 |
        a,4 cis8~ cis e4 a,4 d8~ d fis4 |
        e4 d8~ d b4 gis4. r4. |
        a4 cis8~ cis e4 a, cis8~ cis e4 |
        a,4 cis8~ cis e4 a, cis8~ cis e4 |
        a,4 cis8~ cis e4 d4. e, |
      }
      \alternative
      {
        {a4 cis8~ cis e4 a4. r4. |}
        {a4. e4. cis2. |}
      }
      fis4. cis' gis cis |
      fis,4. cis' eis, cis' |
      fis,4. cis' gis cis |
      gis4. dis' cis4. r |
      fis,4. cis' gis cis |
      fis,4. cis' eis, cis' |
      fis,4. cis' gis cis |
      gis4. dis' cis4. r |
      % theme E 
      a4. r8 a4 e4. a |
      b4. r8 gis4 e4 fis8 gis e4 |
      a4. r8 a4 e4. a |
      b4. r8 gis4 e4 fis8 gis e4 |
      a4. r8 a4 e4. a |
      b4. r8 gis4 e4 fis8 gis e4 |
      a4. a e e |
      a4. r r2. | 
      % theme C final
      a,4 cis8~ cis e4 a, cis8~ cis e4 |
      a,4 cis8~ cis e4 a, cis8~ cis e4 |
      a,4 cis8~ cis e4 a,4 d8~ d fis4 |
      e4 d8~ d b4 gis4. r4. |
      a4 cis8~ cis e4 a, cis8~ cis e4 |
      a,4 cis8~ cis e4 a, cis8~ cis e4 |
      a,4 cis8~ cis e4 d4. e, |
      a4. r8 a a a4. r
    }
  }
}
musicPieceOne = {
  <<
    \tag #'score \tag #'Drums \new DrumStaff { << \globalStyle \structure \DrumsNotes >> }
    \tag #'score \tag #'Singer \new Staff { << \globalStyle \structure \SingerNotes >> }
    \tag #'score \tag #'SaxAlto \new Staff { << \globalStyle \structure \SaxAltoNotes >> }
    \tag #'score \tag #'Guitar \new Staff { << \globalStyle \structure \GuitarNotes >> }
    \tag #'score \tag #'Bass \new Staff { << \globalStyle \structure \BassNotes >> }
  >>
}
%%% Local Variables
%%% Lilypond-master-file: "rondoCreol_score.ly"
%%% End:
% -*- master: rondoCreol_score.ly;
% -*- output: rondoCreol_score-score.pdf
