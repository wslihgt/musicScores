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
  s1*15 \breathe | %\bar "||"
  \repeat volta 3 {
    s1^\markup{\circle A} |
    s1*15 \bar "||"
    s1^\markup{\circle A'} |
    s1*15 \bar "||"
    s1^\markup{\circle B Corner of the World...} |
    s1*15 |
  }
  s1^\markup{\circle II Outro} |
  s1*15 |
  \bar "|."
}

global = { % Use for tempo and key changes
  \time 4/4
  \tempo 4 = 192
  \key g \minor
  s1*16
  \key d \minor
  s1*48
}


chordSeq = \chordmode {
  d1:5 | d2:5 ~d8:5 ees4.:5 | d1:5 | d2:5 ~d8:5 ees4.:5 | % intro
  d1:5 | d2:5 ~d8:5 ees4.:5 | d1:5 | d2:5 ~d8:5 ees4.:5 | % intro
  d1:5 | d2:5 ~d8:5 ees4.:5 | d1:5 | d2:5 ~d8:5 ees4.:5 | % intro
  d1:5 | d2:5 ~d8:5 ees4.:5 | d1:5 | d2:5 r2 | 
  d4.:m d8:m7~ d2:m7 | d1:m7 | % A
  ees4.:m ees8:m4~ ees2:m4 | ees1:sus7 |
  g4.:m g8:m4~ g2:m4 | g1:sus7 |
  a4.:5 a8:7~ a2:7 | a1:7 |
  d4.:m d8:m7~ d2:m7 | d1:m7 | % A
  ees4.:m ees8:m4~ ees2:m4 | ees1:sus7 |
  g4.:m g8:m4~ g2:m4 | g1:sus7 |
  a4.:5 a8:7~ a2:7 | a1:7 |
  d4.:m d8:m7~ d2:m7 | d1:m7 | % A'
  ees4.:m ees8:m4~ ees2:m4 | ees1:sus7 |
  g4.:m g8:m4~ g2:m4 | g1:sus7 |
  a4.:5 a8:7~ a2:7 | a1:7 |
  d4.:m d8:m7~ d2:m7 | d1:m7 | % A'
  ees4.:m ees8:m4~ ees2:m4 | ees1:sus7 |
  g4.:m g8:m4~ g2:m4 | g1:sus7 |
  a4.:5 a8:7~ a2:7 | a1:7 |
  bes1:maj7 | g:m6 | f:maj7 | a:7 |% B
  bes1:maj7 | g:m6 | f:maj7 | a:7 |% B
  bes1:maj7 | g:m6 | f:maj7 | a:7 |% B
  bes1:maj7 | g:m6 | f:maj7 | a:7 |% B
  
  d1:5 | d2:5 ~d8:5 ees4.:5 | d1:5 | d2:5 ~d8:5 ees4.:5 | % intro
  d1:5 | d2:5 ~d8:5 ees4.:5 | d1:5 | d2:5 ~d8:5 ees4.:5 | % intro
  d1:5 | d2:5 ~d8:5 ees4.:5 | d1:5 | d2:5 ~d8:5 ees4.:5 | % intro
  d1:5 | d2:5 ~d8:5 ees4.:5 | d1:5 | d2:5 r2 | 
  
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
      R1*4 |
      R1 |
      r4 fis,4. g8 a4~|
      a8 bes8 c4. d8 c4~ |
      c8 bes8 a4. g8 fis4~ |
      fis2 r2 | 
      R1*3 |
      r2. fis4~ |
      fis8 g8 a4. bes8 c4~|
      c8 d8 c4. bes8 a4~ |
      a8 g8 fis2 r4 |
      % theme A 
      r4 d8 d d f4 a8 | r8 a a a g g a4 |
      g1 | r4 r8 g4 a4. |
      g1 | r4 r8 g4 g8 f a~|
      a1 | R1 | 
      r4 d,8 d d d f d | a'8 a4 g f a8~ |
      a8 g4. r2 | r4 r8 g4 a4. | 
      f1 | r4 r8 g4 a4 c8~ |
      c8 a8~ a2. | R1 | 
      % theme A'
      r8 d8 d c d d4 d8 | r8 d4 d d d8 | 
      r4 d8 d d4 d4 | d4 d8 f4 f d8 |
      r2 r4 r8 f, | g g g f g f aes g~|
      g1 | R1 |
      r4 d8 d d f4 a8~ | a4 a8 a c4 a8 g8~ |
      g1 | r4. f8 g4 a | 
      bes4 a8 g4 f g8 | f8 a4. r4. f8 |
      g8 g4 g4 f a8~ | a2 r2 
      % refrain
      r4 f' e f8 e~ |  e8 d4 d c8 d4 |
      g4 f e8 f4 e8 | d2 r2 | 
      r4 f8 f e4 f8 e~ | e d4 d c8 d d | 
      g4 f e8 f4 e8 | d2 r2 |
      r4 f8 f e4 f8 e~ | e d4 d r8 d d | 
      g4 f e4 f8 e8 | d2 r2 |
      r4 a g a | c bes8 a4 bes a8~|
      a8~ a4 a8 f4 g8 a8~ | a2 r2 |
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
      a,1~ |
      a2 a8 bes4 g8 |
      a1~ |
      a2 a8 bes4 g8 |
      a1~ |
      a2 a8 bes4 g8 |
      a1~ |
      a2 a8 bes4 g8 |
      a1~ |
      a2 a8 bes4 g8 |
      a1~ |
      a2 a8 bes4 g8 |
      a2. a4~ |
      a8 bes8 c4. d8 ees4~ |
      ees8 f8 ees4. d8 c4~ |
      c8 bes a2 r4 |
      % A 
      R1 * 16 |
      % A'
      d1~ | d2 g4 f | e c8 d8~ d2~ | d2 g4 f | 
      e c8 d8~ d2~ | d2 d4 f | e1 | R1 | 
      d1~ | d2 g4 f | e c8 d8~ d2~ | d2 g4 f | 
      e c8 d8~ d2~ | d2 d4 f | e1 | R1 | 
      % B
      
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
      d,,1~ |
      d2 d8 ees4 c8 |
      d1~ |
      d2 d8 ees4 c8 |
      d1~ |
      d2 d8 ees4 c8 |
      d1~ |
      d2 d8 ees4 c8 |
      d1~ |
      d2 d8 ees4 c8 |
      d1~ |
      d2 d8 ees4 c8 |
      d2. d4~ |
      d8 ees8 f4. g8 a4~ |
      a8 bes8 a4. g8 f4~ |
      f8 ees d2 r4
      % A 
      R1 * 16 |
      % A'
      f1~ | f2 c'4 a | g e8 f8~ f2~ | f2 bes4 a | 
      g f8 f8~ f2~ | f2 f4 d | cis1 | R1 | 
      f1~ | f2 g4 f | e c8 d8~ d2~ | d2 g4 f | 
      e c8 d8~ d2~ | d2 d4 f | e1 | R1 | 
      % B
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
      R1*4 
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
