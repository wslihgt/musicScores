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
  s1.^\markup{\circle 5 theme D} | 
  s1. * 7 |
  s1.^\markup{\circle 5 theme D variante} |
  s1. * 7 |
  s1.^\markup{\circle 6 theme E} | 
  s1. * 7 |
  s1.^\markup{\circle 5 theme D'} |
  s1. * 7 |
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
    { |}
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
      cis2. a4. b |
      cis2. a4. b |
      cis8 cis b a gis4 fis8 fis gis a b4 |
      gis4 e8 fis e4 \breathe a4. b |
      cis2. a4. b |
      cis2. a4. b |
      cis4 b8 a gis4 fis8 b4 gis8 e4 | 
      b'4. r4. r2.  | 
      % theme D
      
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
      a2. cis,4. e |
      a2. cis,4. e |
      a8 a gis fis gis4 fis8 fis gis a b4 |
      gis4 e8 fis e4 \breathe a4. b |
      cis2. a4. b |
      cis2. a4. b |
      cis4 b8 a gis4 fis8 b4 gis8 e4 | 
      b'4. r4. r2.  | 
      % theme D
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
        {|}
      }
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
