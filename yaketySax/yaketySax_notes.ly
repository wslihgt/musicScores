\version "2.18.2"

pieceTitle = "Yakety Sax"
composer = "Booth Randolph"

\header{  title = \pieceTitle
  composer = \composer
}

globalStyle = { % Use for various rendering styles that apply to all parts
  \accidentalStyle "modern-cautionary"
}

structure = { % Use to give annotations, mainly, also checking meaure consistency
  s1^\markup{Intro} |
  s1*2 | s4 s2.^\markup{break} | \break
  % \repeat volta 2 {
  s1^\markup{A} |
  s1*7 | \break 
  s1*8 | \break
  % the entrance of the gladiators!
  s1^\markup{Entrance of the Gladiators!} |
  s1^7 | \break
  s1^8 |
  % theme again, for fun
  s1^\markup{A} |
  s1*7 | \break 
  s1*8 | \break
}

global = { % Use for tempo and key changes
  \time 2/2
  \tempo 2 = 120
  \key g \major
}


chordSeq = \chordmode {
  g1 | g | g | g | 
  % A
  g1 | g | g | g |
  g1 | g | d:7 | d:7 |
  g1 | g | c:7 | c:7 |
  g1 | g | d:7 | 
  g | % measure alternative 1
  g | % ... 2
  % gladiators
  c | c | c | c |
  c | c | g | g | 
  c | c:7 | f | f:m |
  c | c | g | c | 
  % A
  g1 | g | g | g |
  g1 | g | d:7 | d:7 |
  g1 | g | c:7 | c:7 |
  g1 | g | d:7 | g |
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


ViolinNotes = \transpose \originPitch \targetPitchViolin {
  \new Voice {
    \global
    \relative c''{
      \set Staff.instrumentName = #"Violin "
      \set Staff.midiInstrument = \midiInstrViolin
      \transposition \originPitchViolin % for MIDI files? to be verified

      \clef \clefViolin
      \compressFullBarRests
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
      R1*3 |
      r4 d2. | \break 
      % A
      \repeat volta 2 {
        g4 g e8 d b b | d d e e d b a b | 
        g4. bes8 b d e d | g2 r8 d8 e fis |
        g4 g e8 d b b | d d e e d d b b | 
        d4. f8 fis a f fis | d2 r8 d e fis | \break
        g4 g g g | g g e8 d b g | 
        c4 c c c | e8 g a bes~ bes4. bes8 |
        b bes b bes b d4 bes8 | b d b g8 ~ g2  |
        b8 g e d a' fis e d |
      }
      \alternative {
        {g4 f2. | }
        {g2 r4 }
      }
      \break
      % gladiators
      
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
    \relative c''{
      \set Staff.instrumentName = #"Trombone "
      \set Staff.midiInstrument = \midiInstrTrombone
      \transposition \originPitchTrombone % for MIDI files? to be verified

      \clef \clefTrombone
      \compressFullBarRests
      g,,4 r d r | g r d r | g r d r | g r2. |
      \repeat volta 2 {
        g4 r d r | g r d r | g r d r | g d e fis |
        g4 r d r | g r d r | a' r e r | d d e fis |
        g r g r | f r f r | e r e r | ees r ees r |
        d r d r | d r d r | g r d r | g d e fis | 
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
%%% Lilypond-master-file: "yaketySax_score.ly"
%%% End:
% -*- master: yaketySax_score.ly;
% -*- output: yaketySax_score-score.pdf
