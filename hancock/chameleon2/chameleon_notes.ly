\version "2.18.2"

pieceTitle = "Chameleon"
composer = "Herbie Hancock"

\header{  title = \pieceTitle
  composer = \composer
}

globalStyle = { % Use for various rendering styles that apply to all parts
  \accidentalStyle "modern-cautionary"
}

structure = {
  s1 | % upbeat
  s1^\markup{Intro Bass Synthe Line} | % 4 bars on disc
  s1*3 |
  s1^\markup{Intro Drums} | % 8 bars on disc
  s1*3 |
  s1^\markup{Intro Bass} | % 8 bars on disc
  s1*3 |
  s1^\markup{Intro Chords} | % 8 bars on disc
  s1*3 |
  %\bar "||"
  s1^\markup{A} | % 8 bars x 2 on disc 
  s1 * 7 |
  %\bar "||"
  s1^\markup{Pause Chords} | % 4 bars on disc
  s1*3 |
  %\bar "||"
  s1^\markup{A} | % 8 bars x 2 on disc 
  s1 * 7 |
  %\bar "||"
  s1^\markup{B (3 repeats)} | % 14 bars on disc 
  s1 * 5 |
  s1^\markup{Drums break} | % 2 bars on disc with synthe endings
  s1 * 1 |
  %\bar "||"
  s1^\markup{Solos...} | % # bars on disc 
  
  %\bar "|."
}

harmoniesSilent = \chordmode {R1}

global = {
  \time 4/4
  \tempo 4 = 96
  \key bes \minor 
}


chordSeq = \chordmode {
  R1|
  R1*12 |
  % intro
  bes1:m7 |
  ees1:7 |
  bes1:m7 |
  ees1:7 |
  % A 
  \repeat volta 2 {
    bes1:m7 |
    ees1:7 |
    bes1:m7 |
    ees1:7 |
    bes1:m7 |
    ees1:7 |
    bes1:m7 |
    ees1:7 |
  }
  % 4 bars interlude?
  bes1:m7 |
  ees1:7 |
  bes1:m7 |
  ees1:7 |  
  % A again
  \repeat volta 2 {
    bes1:m7 |
    ees1:7 |
    bes1:m7 |
    ees1:7 |
    bes1:m7 |
    ees1:7 |
    bes1:m7 |
    ees1:7 |
  }
  % B
  \repeat volta 3 {
    bes1:m7 |
    ees1:7 |
    bes1:m7 |
    ees1:7 |
  }
  R1*4
}
  
bassLine = \relative c {
  r2 r8 g aes a  |
  \repeat unfold 8 { % intro 4 solo + 4 drums + 4 bass + 4 chords 
      bes8. aes'16~ aes8 bes8~ bes c, des d |
      ees8. bes'16~ bes8 des8~ des g,, aes a
  }
  \repeat volta 2 { % A
    \repeat unfold 4 {
      bes8. aes'16~ aes8 bes8~ bes c, des d |
      ees8. bes'16~ bes8 des8~ des g,, aes a
    }
  }
  \repeat unfold 2 { % interlude 4 bars
    bes8. aes'16~ aes8 bes8~ bes c, des d |
    ees8. bes'16~ bes8 des8~ des g,, aes a
  }
  \repeat volta 2 { % A
    \repeat unfold 4 {
      bes8. aes'16~ aes8 bes8~ bes c, des d |
      ees8. bes'16~ bes8 des8~ des g,, aes a
    }
  }
  \repeat volta 3 { % B
    bes8. aes'16~ aes8 bes8~ bes c, des d |
    ees8. bes'16~ bes8 des8~ des g,, aes a
    bes8. aes'16~ aes8 bes8~ bes c, des d |
    ees8. bes'16~ bes8 des8~ des g,, aes a
  }
  r8 f'' ees4 ees8 des~ des des16 ees |
  des bes ees, des~ des8 bes~ bes2| 
  R1 |
  R1
  
}

bassLineTwo = \relative c {
  R1 |
  R1 * 7 | % intro bass 4 + drums 4
  r2 r4 ees' |
  \repeat unfold 4 { % intro 4 + chords 4
    des8 bes aes16 aes r8    aes16 aes r bes r4 |
    aes8 aes aes16 aes r bes r4 ees 
  }
  \repeat volta 2 { % A
    \repeat unfold 4 {
      des8 bes aes16 aes r8    aes16 aes r bes r4 |
      aes8 aes aes16 aes r bes r4 ees 
    }
  }
  \repeat unfold 2 {
    des8 bes aes16 aes r8    aes16 aes r bes r4 |
    aes8 aes aes16 aes r bes r4 ees 
  }
  \repeat volta 2 { % A
    \repeat unfold 4 {
      des8 bes aes16 aes r8    aes16 aes r bes r4 |
      aes8 aes aes16 aes r bes r4 ees 
    }
  }
  \repeat volta 3 { % B
    \repeat unfold 2 {
      des8 bes aes16 aes r8    aes16 aes r bes r4 |
      aes8 aes aes16 aes r bes r4 ees 
    }
  }
  r8 f' ees4 ees8 des~ des des16 ees |
  des bes aes ees~ ees8 des~ des2| 
  R1 |
  R1
}

melody = \relative c'' {
  R1 |
  R1 * 16 |
  \repeat volta 2 {
    \repeat unfold 2 {
      bes16 bes r8 aes16 aes r8 bes16 bes r8 des4 |
      bes4 r4 r4 bes16 aes f aes~ |
      aes8 bes8 r4 r4 r8 des~ |
      des8 ees r4 r4 r4 |
    }
  }
  R1 * 4 |
  \repeat volta 2 {
    \repeat unfold 2 {
      bes16 bes r8 aes16 aes r8 bes16 bes r8 des4 |
      bes4 r4 r4 bes16 aes f aes~ |
      aes8 bes8 r4 r4 r8 des~ |
      des8 ees r4 r4 r4 |
    }
  }
  \repeat volta 3 {
    r8 f ees4 ees8 des~ des des16 ees |
    des bes aes ees~ ees8 des r4 bes'16 aes f aes~ |
    aes8 bes r4 r4 r8 des~ |
    des8 ees r4 r4 r4  |
  }
  r8 f ees4 ees8 des~ des des16 ees |
  des bes aes ees~ ees8 des~ des2| 
  R1 |
  R1
} % harmoZero


harmoOne = {
  R1 |
  R1 * 16 |
  \repeat volta 2 {
    \repeat unfold 2 {
      bes16 bes r8 aes16 aes r8 bes16 bes r8 aes4 | 
      g4 r4 r4 bes16 aes f ees16~ |
      ees8 f8 r4 r4 r8 aes~ |
      aes8 g r4 r4 r4 |
    }
  }
  R1 * 4 |
  \repeat volta 2 {
    \repeat unfold 2 {
      bes16 bes r8 aes16 aes r8 bes16 bes r8 aes4 | 
      g4 r4 r4 bes16 aes f ees16~ |
      ees8 f8 r4 r4 r8 aes~ |
      aes8 g r4 r4 r4 |
    }
  }
  \repeat volta 3 {
    r8 f' ees4 ees8 des~ des des16 ees |
    des bes ees, des~ des8 bes r4 bes'16 aes f aes16~ | 
    aes8 aes8 r4 r4 r8 aes~ |
    aes8 g r4 r4 r4  |
  }
  r8 f' ees4 ees8 des~ des des16 ees |
  des bes ees, des~ des8 aes'8~ aes2 | 
  R1 |
  R1
}

harmoTwo = {
  R1 |
  R1 * 16 |
  \repeat volta 2 {
    \repeat unfold 2 {
      bes,,16 bes r8 aes16 aes r8 bes16 bes r8 des,4 | 
      ees4 r4 r4 des16 ees des ees16~ |
      ees8 f8 r4 r4 r8 f~ |
      f8 des r4 r4 r4 |
    }
  }
  R1 * 4 |
  \repeat volta 2 {
    \repeat unfold 2 {
      bes'16 bes r8 aes16 aes r8 bes16 bes r8 des,4 | 
      ees4 r4 r4 des16 ees des ees16~ |
      ees8 f8 r4 r4 r8 f~ |
      f8 des r4 r4 r4 |
    }
  }
  \repeat volta 3 {
    r8 f' ees4 ees8 des~ des des16 ees |
    des bes ees, des~ des8 bes r4 des16 ees des ees16~ | 
    ees8 f8 r4 r4 r8 f~ |
    f8 des r4 r4 r4  |
  }
  r8 f' ees4 ees8 des~ des des16 ees |
  des bes ees, des~ des8 bes8~ bes2 | 
  R1 |
  R1
}

DrumsUp = \drummode {
  R1 |
  R1 * 4 |
  \repeat unfold 3 {
    hh4 hh4 hh hh |
  }
  hh8 hh hh hh hh8 hh hh hh |
  \repeat unfold 4 {
    hh4 hh4 hh hh |
  }
  \repeat unfold 4 {
    hh4 hh4 hh hh |
  }
  \repeat volta 2 {
    \repeat unfold 8 {
      hh4 hh4 hh hh |
    }
  }
  \repeat unfold 4 {
    hh4 hh4 hh hh |
  }
  \repeat volta 2 {
    \repeat unfold 8 {
      hh4 hh4 hh hh |
    }
  }
  \repeat volta 3 {
    \repeat unfold 4 {
      hh4 hh4 hh hh |
    }
  }
  s8 cymcb8 cymcb s8 cymcb cymcb s4 |
  s8. cymcb16~ cymcb8 cymcb8~ cymcb2 |
  s8. hh16 s4 s8. hh16 s4 |
  s16 hh16 s8 s16 hh16 s8 tomh8 tommh16 tommh tomml tomml tomfl8 |
}

DrumsDown = \drummode {
  R1 |
  R1 * 4 |
  \repeat unfold 3 {
    bd8. sn16 r8 bd~ bd16 bd16 bd8 sn8 bd8 |
  }
  bd4 sn4 sn8. sn16 sn8 bd |
  \repeat unfold 4 {
    bd8. sn16 r8 bd~ bd16 bd16 bd8 sn8 bd8 |
  }
  \repeat unfold 4 {
    bd8. sn16 r8 bd~ bd16 bd16 bd8 sn8 bd8 |
  }
  \repeat volta 2 { %A
    \repeat unfold 7 {
      bd8. sn16 r8 bd~ bd16 bd16 bd8 sn8 bd8 |
    }
    bd8. sn16 r8 bd sn bd8 bd8 bd8 |
  }
  \repeat unfold 4 { %interlude
    bd8. sn16 r8 bd~ bd16 bd16 bd8 sn8 bd8 |
  }
  \repeat volta 2 { %A 
    \repeat unfold 7 {
      bd8. sn16 r8 bd~ bd16 bd16 bd8 sn8 bd8 |
    }
    bd8. sn16 r8 bd sn bd8 bd8 bd8 |
  }
  \repeat volta 3 { %B
    \repeat unfold 4 {
      bd8. sn16 r8 bd~ bd16 bd16 bd8 sn8 bd8 |
    }
  }
  bd4 r8 sn8 r4 sn8 sn16 sn |
  bd8 sn16 bd~ bd sn bd8~ bd4.. sn16:32 |
  <sn bd>16 sn16 sn r16 sn8. sn16:32 <sn bd>16 sn sn r16 sn8.  sn16:32 |
  bd8 sn bd sn r2 |
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


OboeNotes = \transpose \originPitch \targetPitchOboe {
  \new Voice {
    \global
    \relative c''{
      \set Staff.instrumentName = #"Oboe "
      \set Staff.midiInstrument = \midiInstrOboe
      \transposition \originPitchOboe % for MIDI files? to be verified

      \clef \clefOboe
      \compressFullBarRests
      \new Voice = "first" {
        \voiceOne \melody
      }
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
      \new Voice = "first" {
        \voiceOne \relative c'{\harmoOne}
      }
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
      \harmoTwo
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
      \bassLineTwo
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
      \new Voice = pianoBassOne {\stemDown \relative c'''{\bassLine}}
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
%%% Lilypond-master-file: "chameleon_score.ly"
%%% End:
% -*- master: chameleon_score.ly;
% -*- output: chameleon_score-score.pdf
