\version "2.18.2"

pieceTitle = "Wave"
composer = "Antonio Carlos Jobim"

\header{  title = \pieceTitle
  composer = \composer
}

globalStyle = { % Use for various rendering styles that apply to all parts
  \accidentalStyle "modern-cautionary"
}

structure = { % Use to give annotations, mainly, also checking meaure consistency
  s1^\markup{intro} \breathe |
  s1*3 |
  s1^\markup{A} |
  s1*11 |
  s1^\markup{B} |
  s1*7 |
  s1^\markup{A'} |
  s1*11 |
  \bar "|."
}

global = { % Use for tempo and key changes
  \time 4/4
  \tempo 4 = 100
  \key d \major 
}


chordSeq = \chordmode {
  % intro
  d2:m7 g:13 |
  d2:m7 g:13 |
  d2:m7 g:13 |
  d2:m7 g:13 | \break
  % theme
  d1:maj7 | bes:dim7 | a:m7 | d:7.9- | \break 
  g:maj7 | g:m6 | fis2:13 fis:aug7 | b:9 b:7.9- | \break
  b:m7/e e:7 | bes:7 a:aug7 | d:m7 g:13 | d:m7 g:13 | \break
  % bridge
  g1:m7/bes | c:9/bes | f:maj7/a | f:maj7/a | \break
  f:m7/aes | bes:7/aes | ees:maj7/g | a:7.9- | \break
  % theme 
  d1:maj7 | bes:dim7 | a:m7 | d:7.9- | \break 
  g:maj7 | g:m6 | fis2:13 fis:aug7 | b:9 b:7.9- | \break
  b:m7/e e:7 | bes:7 a:aug7 | d:m7 g:13 | d:m7 g:13 |
}


DrumsUp = \drummode {
  R1*4 wbh4. wbh4. wbh4 |
}

DrumsDown = \drummode {
  \repeat unfold 4 {
    bd4 sn8 bd bd sn r bd  | sn4 bd8 sn r bd sn bd | 
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
      R1*4 |
      % theme A
      d2. cis8 b | bes des e g bes4 a8 c8~ | 
      c1 | c1 | d2 b | bes c | 
      ais1 | b2 c4 b  | 
      a4. gis8 ~ gis2 | aes8 bes c d ees f4. | e1~ | e |
      % bridge
      
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
      R1*3 | r4 r8 b d4 cis8 a8~ |
      \repeat volta 2 {
        a2.~ a8 fis | g bes des e g4 fis8 a~ | 
        a1 | r8 a4. a4 b | 
        a g g fis8 g~ | g4. fis8 g a4. | 
        fis1 | r8 fis eis fis a aes g fis |
        fis4. d8~ d b d e | f d c aes g f~ f f~ |
        f d8~ d2. | r4 r8 b^\markup{Only first time} d4 cis8 a |
      }
      % bridge
      d'4. c8 bes a~ a g~ | g4. a8 bes d~ d c~ | c1~ | c |
      c4. bes8 aes g~ g f~ | f4. g8 aes c~ c bes~ | bes1 | r4 r8 b d4 cis8 a8~ 
      % theme 
      a2.~ a8 fis | g bes des e g4 fis8 a~ | 
      a1 | r8 a4. a4 b | 
      a g g fis8 g~ | g4. fis8 g a4. | 
      fis1 | r8 fis eis fis a aes g fis |
      fis4. d8~ d b d e | f d c aes g f~ f f~ |
      f d8~ d2. | R1
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
      c,4 c b4. c8~  | c c8~ c c8 b b b r | 
      c4 c b4. c8~  | c c8~ c c8 b b b r |  
      % A
      fis4^. r8 fis fis fis r g8~ | g8 g8~ g8 g8~ g8 g8~ g8 g8~ |
      g4 r8 g g g r8 fis~ | fis1 | g4 r8 g g g r8 e~ | 
      e4. e8~ e e8~ e e | cis2 d | dis1 | 
      d4. d8 d d r4 | d4 d cis cis |
      c4 c b4. c8~  | c c8~ c c8 b b b r | 
      % B
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
      d,,4 d g4. d8~ | d d8~ d g8~ g2 |
      d4 d g4. d8~ | d d8~ d g8~ g2 |
      % A
      d4^. r8 d d d r e8~ | e8 e8~ e8 e8~ e8 e8~ e8 e8~ |
      e4 r8 e e e r8 d~ | d2 fis | g4 r8 b b b r8 bes~ | 
      bes4. bes8~ bes bes8~ bes bes | fis1 | b, | 
      e4 r8 e e e r4 | bes4 bes a a | d4 d g4. d8~ | d d8~ d g8~ g2 |
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
      R1*3 | r4 r8 b d4 cis8 a8~ |
      \repeat volta 2 {
        a2.~ a8 fis | g bes des e g4 fis8 a~ | 
        a1 | r8 a4. a4 b | 
        a g g fis8 g~ | g4. fis8 g a4. | 
        fis1 | r8 fis eis fis a aes g fis |
        fis4. d8~ d b d e | f d c aes g f~ f f~ |
        f d8~ d2. | r4 r8 b^\markup{Only first time} d4 cis8 a |
      }
      % bridge
      d'4. c8 bes a~ a g~ | g4. a8 bes d~ d c~ | c1~ | c |
      c4. bes8 aes g~ g f~ | f4. g8 aes c~ c bes~ | bes1 | r4 r8 b d4 cis8 a8~ 
      % theme 
      a2.~ a8 fis | g bes des e g4 fis8 a~ | 
      a1 | r8 a4. a4 b | 
      a g g fis8 g~ | g4. fis8 g a4. | 
      fis1 | r8 fis eis fis a aes g fis |
      fis4. d8~ d b d e | f d c aes g f~ f f~ |
      f d8~ d2. | R1
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
    \tag #'score \tag #'TenorSax \new Staff { << \globalStyle \structure \TenorSaxNotes >> }
    \tag #'score \tag #'Trombone \new Staff { << \globalStyle \structure \TromboneNotes >> }
    \tag #'score \tag #'Guitar \new Staff { << \globalStyle \structure \GuitarNotes >> }
    \tag #'score \tag #'Piano \new Staff { << \globalStyle \structure \PianoNotes >> }
  >>
}
%%% Local Variables
%%% Lilypond-master-file: "wave_score.ly"
%%% End:
% -*- master: wave_score.ly;
% -*- output: wave_score-score.pdf
