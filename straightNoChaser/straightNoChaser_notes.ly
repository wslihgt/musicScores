\version "2.18.2"

pieceTitle = "Straight, No Chaser"
composer = "Thelonious Monk"

\header{  title = \pieceTitle
  composer = \composer
}

globalStyle = { % Use for various rendering styles that apply to all parts
  \accidentalStyle "modern-cautionary"
}

structure = { % Use to give annotations, mainly, also checking meaure consistency
  \partial 8 s8 |
  s1^\markup{\circle A} \breathe |
  s1*3 | \break
  s1*4 | \break
  s1*4 | \break
  s1^\markup{\circle A'} \breathe |
  s1*3 | \break
  s1*4 | \break
  s1*4 | \break
  \bar "||"
}

global = { % Use for tempo and key changes
  \time 4/4
  \tempo 4 = 160
  \key bes \major
}


chordSeq = \chordmode {
  \partial 8 r8 |
  bes1:7 | ees:7 | bes:7 | bes:7 | 
  ees:7 | ees:7 | bes:7 | bes:7 |
  f:7 | ees:7 | bes:7 | bes:7 |
  bes1:7 | ees:7 | bes:7 | bes:7 | 
  ees:7 | ees:7 | bes:7 | bes:7 |
  f:7 | ees:7 | bes:7 | bes:7 |
}


DrumsUp = \drummode {
 
}

DrumsDown = \drummode {
  
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
      \partial 8 f,8 |
      % A
      bes c des d-^ r f, bes c | des d ees des--~ des4 r8 f, |
      bes c des d-^ r f, bes c | des d-^ r f, bes c des-- r8 | 
      r8 f, bes c des d ees des--~ | des1 |
      r8 f, bes c des d-^ r8 f, | bes c des d-^ r8 f, bes c |
      des d ees f, ges g aes a--~ | a bes b c des d ees f, |
      bes c des d--~ d2 | r2. r8 f, |
      % A'
      bes c des d-^ r f, bes c | des d ees des--~ des4 r8 f, |
      bes c des d-^ r f, bes c | des d-^ r f, bes c des-- r8 | 
      r8 f, bes c des d ees des--~ | des1 |
      r8 f, bes c des d-^ r8 f, | bes c des d-^ r8 f, bes c |
      des d ees f, ges g aes a--~ | a bes b c des d ees f, |
      bes c des d--~ d2 | r2. r4 |
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
      \partial 8 f,8 |
      % A
      bes c des d-^ r f, bes c | des d ees des--~ des4 r8 f, |
      bes c des d-^ r f, bes c | des d-^ r f, bes c des-- r8 | 
      r8 f, bes c des d ees des--~ | des1 |
      r8 f, bes c des d-^ r8 f, | bes c des d-^ r8 f, bes c |
      des d ees f, ges g aes a--~ | a bes b c des d ees f, |
      bes c des d--~ d2 | r2. r8 f, |
      % A'
      bes c des aes-^ r f bes c | des bes aes g--~ g4 r8 f |
      bes c des aes-^ r f bes c | des aes-^ r f bes c g-- r8 | 
      r8 f bes c des bes aes g--~ | g1 |
      r8 f bes c des aes-^ r8 f | bes c des aes-^ r8 f bes c |
      des d ees f, ges g aes c,~-- | c des d ees e f ges f |
      bes c des aes--~ aes2 | r2. r4 |
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
      \partial 8 f,,8 |
      % A
      bes c des d-^ r f, bes c | des d ees des--~ des4 r8 f, |
      bes c des d-^ r f, bes c | des d-^ r f, bes c des-- r8 | 
      r8 f, bes c des d ees des--~ | des1 |
      r8 f, bes c des d-^ r8 f, | bes c des d-^ r8 f, bes c |
      des d ees f, ges g aes a--~ | a bes b c des d ees f, |
      bes c des d--~ d2 | r2. r8 f, |
      % A'
      bes c des f-^ r f, bes c | des f g ees--~ ees4 r8 f, |
      bes c des f-^ r f, bes c | des f-^ r f, bes c ees-- r8 | 
      r8 f, bes c des f g ees--~ | ees1 |
      r8 f, bes c des f-^ r8 f, | bes c des f-^ r8 f, bes c |
      des d ees f, ges g aes a--~ | a bes b c des d ees f, |
      bes c des f--~ f2 | r2. r4 |
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
      \partial 8 f,,8 |
      % A
      bes c des d-^ r f, bes c | des d ees des--~ des4 r8 f, |
      bes c des d-^ r f, bes c | des d-^ r f, bes c des-- r8 | 
      r8 f, bes c des d ees des--~ | des1 |
      r8 f, bes c des d-^ r8 f, | bes c des d-^ r8 f, bes c |
      des d ees f, ges g aes a--~ | a bes b c des d ees f, |
      bes c des d--~ d2 | r2. r8 f, |
      % A'
      bes c des bes-^ r f bes c | des d des ees--~ ees4 r8 f, |
      bes c des bes-^ r f bes c | des bes-^ r f bes c ees-- r8 | 
      r8 f, bes c des d des ees--~ | ees1 |
      r8 f, bes c des bes-^ r8 f | bes c des bes-^ r8 f bes c |
      des d ees f, ges g aes a--~ | a bes b c des d ees f, |
      bes c des bes--~ bes2 | r2. r4 |
    }
  }
}

GuitarNotes = \transpose \originPitch \targetPitchGuitar {
  \new Voice {
    \global
    \relative c''{
      \set Staff.instrumentName = #"Guitar "
      \set Staff.midiInstrument = \midiInstrGuitar
      \set Staff.midiMinimumVolume = #0.3
      \set Staff.midiMaximumVolume = #0.5
      \transposition \originPitchGuitar % for MIDI files? to be verified

      \clef \clefGuitar
      \compressFullBarRests
      \partial 8 r8 |
      \chordmode {
        bes4:7 bes4:7 bes4:7 bes4:7 | ees4:7 ees4:7 ees4:7 ees4:7 | 
        bes4:7 bes4:7 bes4:7 bes4:7 | bes4:7 bes4:7 bes4:7 bes4:7 | 
        ees4:7 ees4:7 ees4:7 ees4:7 | ees4:7 ees4:7 ees4:7 ees4:7 | 
        bes4:7 bes4:7 bes4:7 bes4:7 | bes4:7 bes4:7 bes4:7 bes4:7 |
        f4:7 f4:7 f4:7 f4:7 | ees4:7 ees4:7 ees4:7 ees4:7 |
        bes4:7 bes4:7 bes4:7 bes4:7 | bes4:7 bes4:7 bes4:7 bes4:7 |
        bes4:7 bes4:7 bes4:7 bes4:7 | ees4:7 ees4:7 ees4:7 ees4:7 | 
        bes4:7 bes4:7 bes4:7 bes4:7 | bes4:7 bes4:7 bes4:7 bes4:7 | 
        ees4:7 ees4:7 ees4:7 ees4:7 | ees4:7 ees4:7 ees4:7 ees4:7 | 
        bes4:7 bes4:7 bes4:7 bes4:7 | bes4:7 bes4:7 bes4:7 bes4:7 |
        f4:7 f4:7 f4:7 f4:7 | ees4:7 ees4:7 ees4:7 ees4:7 |
        bes4:7 bes4:7 bes4:7 bes4:7 | bes4:7 bes4:7 bes4:7 bes4:7 |
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
%%% Lilypond-master-file: "straightNoChaser_score.ly"
%%% End:
% -*- master: straightNoChaser_score.ly;
% -*- output: straightNoChaser_score-score.pdf
