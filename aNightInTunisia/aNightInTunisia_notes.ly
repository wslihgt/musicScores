\version "2.18.2"

pieceTitle = "A Night In Tunisia"
composer = "Dizzy Gillespie"

\header{  title = \pieceTitle
  composer = \composer
}

globalStyle = { % Use for various rendering styles that apply to all parts
  \accidentalStyle "modern-cautionary"
}

structure = { % Use to give annotations, mainly, also checking meaure consistency
  s1^\markup{intro, latin} |
  s1 * 7 |
  %\bar "||"
  s1^\markup{\circle {A1} theme, latin} |
  s1 * 5 |
  s1^\markup{swing} |
  s1 | % repeat here
  %\bar "||"
  s1^\markup{\circle B bridge I, swing} |
  s1 * 7 |
  \bar "||"
  s1^\markup{\circle {A2} theme, latin} |
  s1 * 5 |
  s1^\markup{swing} |
  s1 |
  \bar "||"
  s1^\markup{\circle C bridge II, swing} |
  s1 * 11 |
  \bar "||"
  s1^\markup{charlie parker break} |
  s1 * 3
  \bar "|."
}

global = { % Use for tempo and key changes
  \time 2/2
  \tempo 2 = 72
  \key d \minor
}


chordSeq = \chordmode {
  ees1:7 | d:m6 | ees:7 | d:m6 |
  ees1:7 | d:m6 | ees:7 | d:m6 |
  % theme 
  \repeat volta 2 {
    ees1:7 | d:m6 | ees:7 | d:m6 |
    ees1:7 | d:m6 | e2:m7.5- a:7.5- | d1:m6 | % repeat here
  }
  % bridge I
  a:m7.5- | d:7 | e2:m7.5- d:7 | e1:m7.5- | 
  g:m7 | c:7 | f:maj7 | e2:m7.5- a:7.5- |
  % theme
  ees1:7 | d:m6 | ees:7 | d:m6 | 
  ees1:7 | d:m6 | e2:m7.5- a:7.5- | d1:m6 | % repeat here
  % bridge II
  e1:m7.5- | e1:m7.5- |
  a:7.5- | a:7.5- |
  d:m6 | d:m6 |
  g:m7.5- | g:m7.5- |
  g:m3maj7 | g:7 |
  ges:7 | ges:7 |
  f:maj7 | R1 * 3 |
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
      R1 * 7 |
      r2 r4 r8 a |
      % theme
      \repeat volta 2 {
        bes des f c'~ c4 bes8 f |
        aes a~ a4 r4 r8 a, |
        bes des f c'~ c4 bes8 f |
        a4~ a4 r4 r8 a, |
        bes des f c'~ c4 bes8 f |
        aes a~ a4 r8 a8 r8 a~ |
        a8 bes \appoggiatura{a16 bes} a8 g ees4 des8 d~ |
      	d2 r4 r8 << \new Voice {\stemDown a} 
      	            \new Voice {\stemUp a'} >>  |
      }
      % bridge I
      c2 a4 g8 fis~ |
      fis4 ees'8 d~ d4 c8 a |
      bes g~ g fis~ fis g a g~ |
      g2 r8 g a bes~ |
      bes2 g4 f8 e~ |
      e4 des'8 c~ c4 bes |
      a2 g4 f8 e8~ |
      e2 r4 r8 a, |
      % theme again
      bes des f c'~ c4 bes8 f |
      aes a~ a4 r4 r8 a, |
      bes des f c'~ c4 bes8 f |
      a4~ a4 r4 r8 a, |
      bes des f c'~ c4 bes8 f |
      aes a~ a4 r8 a8 r8 a~ |
      a8 bes \appoggiatura{a16 bes} a8 g ees4 des8 d~ |
      d4. a'8~ a a~ a a~ |
      % bridge II
      a4 g8 e a4 g8 e |
      a8 g e a r a4 a8~ |
      a4 g8 ees a4 g8 ees |
      a g ees a r a4 a8~ |
      a4 f8 d a'4 f8 d |
      a' f d a' r8 a4 a8~|
      a4 f8 des a'4 f8 des |
      a' f des a' r8 a4 a8~|
      a4 fis8 d a'4 fis8 d |
      a' f d a' r8 a4 a8~|
      a4 fes8 des a'4 fes8 des |
      a' fes des a' r4 a8 c^.|
      R1 * 4
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
      r8 bes~ bes aes bes aes bes aes |
      r8 b~ b a b a b a |
      r8 bes~ bes aes bes aes bes aes |
      r8 b~ b a b a b a |
      r8 bes~ bes aes bes aes bes aes |
      r8 b~ b a b a b a |
      r8 bes~ bes aes bes aes bes aes |
      r8 b~ b a b a b a |
      % theme 
      \repeat volta 2 {
        r8 bes~ bes aes bes aes bes aes |
        r8 b~ b a b a b a |
        r8 bes~ bes aes bes aes bes aes |
        r8 b~ b a b a b a |
      	r8 bes~ bes aes bes aes bes aes |
        r8 b~ b a b a b a |
        bes4 d des c8 b~ |
        b2 r2 |
      }
      % bridge I
      a'2 g4 ees8 d~ |
      d4 c'8 c~ c4 a8 fis |
      g e~ e d~ d e8 fis e~ |
      e2 r8 d e g~ |
      g2 f4 d8 bes~ |
      bes4 g'8 g~ g4 e4 |
      e2 c4 a8 bes~ |
      bes2 r2 |
      % theme 
      r8 bes~ bes aes bes aes bes aes |
      r8 b~ b a b a b a |
      r8 bes~ bes aes bes aes bes aes |
      r8 b~ b a b a b a |
      r8 bes~ bes aes bes aes bes aes |
      r8 b~ b a b a b a |
      bes4 d des c8 b~ |
      b4. a8~ a a~ a a~ |
      % bridge II
      a4 g8 e a4 g8 e |
      a8 g e a r a4 a8~ |
      a4 g8 ees a4 g8 ees |
      a g ees a r a4 b8~ |
      b4 a8 f b4 a8 f |
      b a f b r8 b4 cis8~|
      cis4 a8 f cis'4 a8 f |
      cis' a f cis' r8 cis4 d8~|
      d4 bes8 g d'4 bes8 g |
      d' b g d' r8 d4 des8~|
      des4 bes8 ges des'4 bes8 ges |
      des' bes ges des' r4 des8 e^.|
      R1 * 4 |
    }
  }
}

TromboneNotes = \transpose \originPitch \targetPitchTrombone {
  \new Voice {
    \global
    \relative c'{
      \set Staff.instrumentName = #"Trombone "
      \set Staff.midiInstrument = \midiInstrTrombone
      \transposition bes %% for MIDI files? to be verified

      \clef \clefTrombone
      \compressFullBarRests
      r8 ees,~ ees des ees des ees des |
      r8 e~ e d e d e d |
      r8 ees~ ees des ees des ees des |
      r8 e~ e d e d e d |
      r8 ees~ ees des ees des ees des |
      r8 e~ e d e d e d |
      r8 ees~ ees des ees des ees des |
      r8 e~ e d e d e d |
      % theme 
      \repeat volta 2 {
        r8 ees~ ees des ees des ees des |
        r8 e~ e d e d e d |
        r8 ees~ ees des ees des ees des |
        r8 e~ e d e d e d |
        r8 ees~ ees des ees des ees des |
        r8 e~ e d e d e d |
        e4 e g g8 a~ |
        a2 r2 |
      }
      % bridge I 
      g'2 ees4 des8 c~ |
      c4 a'8 a~ a4 fis8 d |
      d bes~ bes c~ c bes8 a bes~ |
      bes2 r8 bes d d~ |
      d2 bes4 g8 e~ |
      e4 bes'8 bes~ bes4 c4 |
      c2 a4 a8 g~ |
      g2 r2 | 
      % theme
      r8 ees~ ees des ees des ees des |
      r8 e~ e d e d e d |
      r8 ees~ ees des ees des ees des |
      r8 e~ e d e d e d |
      r8 ees~ ees des ees des ees des |
      r8 e~ e d e d e d |
      e4 e g g8 a~ |
      a4. a4 a4 a8~ |
      % bridge II
      a4 g8 e a4 g8 e |
      a8 g e a r a4 g8~ |
      g4 ees8 des g4 ees8 des |
      g ees des g r g4 f8~ |
      f4 e8 d f4 e8 d |
      f e d f r8 f4 g8~|
      g4 b8 a g4 b8 a |
      g b a g r8 g4 g8~|
      g4 a8 bes g4 a8 bes |
      g ees e f r8 f4 ges8~|
      ges4 ges8 fes ges4 ges8 fes |
      ges ges fes ges r4 ges8 f^.|
      R1 * 4 |
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
      
      % intro
      ees,,8 bes' des ees~ ees des~ des ees, |
      d f a b~ b a~ a f |
      ees8 bes' des ees~ ees des~ des ees, |
      d f a b~ b a~ a f |
      ees8 bes' des ees~ ees des~ des ees, |
      d f a b~ b a~ a f |
      ees8 bes' des ees~ ees des~ des ees, |
      d f a b~ b a~ a f |
      % theme
      \repeat volta 2 {
        ees8 bes' des ees~ ees des~ des ees, |
        d f a b~ b a~ a f |
        ees8 bes' des ees~ ees des~ des ees, |
        d f a b~ b a~ a f |
        ees8 bes' des ees~ ees des~ des ees, |
        d f a b~ b a~ a f |
        e fis g bes a g ees d~ |
        d4 e f d |
      }
      % bridge I
      a''4 g f ees |
      d e fis d |
      e g d fis |
      e d bes a |
      g a bes d |
      c e g e |
      f f f f |
      e4 r8 a4. d,,4 | 
      % theme
      \repeat volta 2 {
        ees8 bes' des ees~ ees des~ des ees, |
        d f a b~ b a~ a f |
        ees8 bes' des ees~ ees des~ des ees, |
        d f a b~ b a~ a f |
        ees8 bes' des ees~ ees des~ des ees, |
        d f a b~ b a~ a f |
        e fis g bes a g ees d~ |
        d4 e f d |
      }
      % bridge II
      e'4 e e e  |
      e e r8 e4 a,8~ |
      a4 a a a |
      a a r8 a4 d8~ |
      d4 d d d |
      d d r8 d4 g,8~ |
      g4 g g g |
      g g r8 g4 g8~ |
      g4 g g g |
      g g r8 g4 ges8~ |
      ges4 ges ges ges |
      ges ges r4 ges8 f^. 
      R1 * 4
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
    }
  }
}

DrumsUp = \drummode {
  \repeat unfold 4 {
  <<
  \new DrumVoice \stemUp {cyms4 cb cb cb8 cb8~ | cb8 cb4 cb cb8 cb4 |}
  \new DrumVoice {s4 tomh8 tomh s4 toml8 toml |s4 tomh8 tomh s4 toml8 toml }
  >>}
  \repeat unfold 3 {
  <<
  \new DrumVoice \stemUp {cyms4 cb cb cb8 cb8~ | cb8 cb4 cb cb8 cb4 |}
  \new DrumVoice {s4 tomh8 tomh s4 toml8 toml |s4 tomh8 tomh s4 toml8 toml }
  >>}
  <<
    {cyms4 cyms8 cyms cyms4 cyms8 cyms | cyms4 cyms8 cyms cyms4 cyms8 cyms }
    {s4. sn8 s4 sn4 | s4. sn8 s4 sn4 |}
  >>
  \repeat unfold 4 {
    <<
      {cyms4 cyms8 cyms cyms4 cyms8 cyms | cyms4 cyms8 cyms cyms4 cyms8 cyms }
      {s4. sn8 s4 sn4 | s4. sn8 s4 sn4 |}
    >>
  }
  \repeat unfold 3 {
    bd8 cyms sn bd hh sn tomfl tomfl | bd cyms sn bd hh bd toml tomh |
  }
  {cyms4 cyms8 cyms cyms4 cyms8 cyms | cyms4 cyms8 cyms cyms4 cyms8 cyms }
  % bridge II
  {cyms4 cyms8 cyms cyms4 cyms8 cyms | cyms4 cyms8 cyms8^. r8 r4 cymc8~ |}
  {cyms4 cyms8 cyms cyms4 cyms8 cyms | cyms4 cyms8 cyms8^. r8 r4 cymc8~ |}
  {cyms4 cyms8 cyms cyms4 cyms8 cyms | cyms4 cyms8 cyms8^. r8 r4 cymc8~ |}
  {cyms4 cyms8 cyms cyms4 cyms8 cyms | cyms4 cyms8 cyms8^. r8 r4 cymc8~ |}
  {cyms4 cyms8 cyms cyms4 cyms8 cyms | cyms4 cyms8 cyms8^. r8 r4 cymc8~ |}
  {cyms4 cyms8 cyms cyms4 cyms8 cyms | cyms4 cyms8 cyms8^. r8 r4 cymc8~ |}
  R1 * 4
}

DrumsDown = \drummode {
  \repeat unfold 4 {
  <<
  \new DrumVoice \stemDown {bd4. bd4 bd4.| bd4. bd4 bd4.}
  \new DrumVoice \stemDown {s4 hhp s hhp | s hhp s hhp |}
  >>
  }
  \repeat unfold 3 {
  <<
  \new DrumVoice \stemDown {bd4. bd4 bd4.| bd4. bd4 bd4.}
  \new DrumVoice \stemDown {s4 hhp s hhp | s hhp s hhp |}
  >>
  }
  {bd4 r2 r8 bd8 | r4 bd r2 }
  \repeat unfold 4 {
    {bd4 r2 r8 bd8 | r4 bd r2 }
  }
  \repeat unfold 3 {
  %<<
  %\new DrumVoice \stemDown {bd4. bd4 bd4.| bd4. bd4 bd4.}
  %\new DrumVoice \stemDown {s4 hhp s hhp | s hhp s hhp |}
  %>>
  s1 | s1
  }
  {bd4 r2 r8 bd8 | r4 bd r2 }
  % bridge II
  \repeat unfold 6 {
    <<
      {s4 s8 sn8 s2 | sn4 s s8 sn8 sn s8}
      {bd4 hhp s hhp8 bd | s4 hhp s8 bd4 bd8}
    >>
  }
  R1 * 4
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

musicPieceOne = {
  <<

    \tag #'score \tag #'Drums \new DrumStaff { << \globalStyle \structure \DrumsNotes >> }
    \tag #'score \new ChordNames {\chordSeq}
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

    \tag #'Drums \transpose \originPitch \targetPitchDrums {
      \new ChordNames {\chordSeq}}

    \tag #'score \tag #'Oboe \new Staff { << \globalStyle \structure \OboeNotes >> }
    \tag #'score \tag #'TenorSax \new Staff { << \globalStyle \structure \TenorSaxNotes >> }
    \tag #'score \tag #'Trombone \new Staff { << \globalStyle \structure \TromboneNotes >> }
    \tag #'score \tag #'Guitar \new Staff { << \globalStyle \structure \GuitarNotes >> }
    \tag #'score \tag #'Piano \new Staff { << \globalStyle \structure \PianoNotes >> }
  >>
}
%%% Local Variables
%%% Lilypond-master-file: "aNightInTunisia_score.ly"
%%% End:
% -*- master: aNightInTunisia_score.ly;
% -*- output: aNightInTunisia_score-score.pdf
