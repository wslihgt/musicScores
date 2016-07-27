\version "2.18.2"

pieceTitle = "Take Five"
composer = "Paul Desmond"

\header{  title = \pieceTitle
  composer = \composer
}

globalStyle = { % Use for various rendering styles that apply to all parts
  \accidentalStyle "modern-cautionary"
}

structure = { % Use to give annotations, mainly, also checking meaure consistency
  s1 ^\markup{Intro} s4 |
  s1*5/4*7 |
  s1 ^\markup{A} s4 |
  s1*7 s4*7|
  s1 ^\markup{B} s4 |
  s1*7 s4*7|
  s1 ^\markup{A} s4 |
  s1*7 s4*7|
  \bar "||"
  s1 ^\markup{A'} s4 |
  s1*7 s4*7|
  s1 ^\markup{B'} s4 |
  s1*7 s4*7|
  s1 ^\markup{A''} s4 |
  s1*7 s4*7|
  \bar "|."
}

global = { % Use for tempo and key changes
  \time 5/4
  \tempo 4 = 160
  \key ees \minor
  \set Timing.baseMoment = #(ly:make-moment 1/8)
  \set Timing.beatStructure = #'(3 3 4)
  \jazzOn
}


chordSeq = \chordmode {
  ees2.:m7 bes2:m7 |
  ees2.:m7 bes2:m7 |
  ees2.:m7 bes2:m7 |
  ees2.:m7 bes2:m7 |
  ees2.:m7 bes2:m7 |
  ees2.:m7 bes2:m7 |
  ees2.:m7 bes2:m7 |
  ees2.:m7 bes2:m7 |
  % A theme
  ees2.:m7 bes2:m7 |
  ees2.:m7 bes2:m7 |
  ees2.:m7 bes2:m7 |
  ees2.:m7 bes2:m7 |  
  ees2.:m7 bes2:m7 |
  ees2.:m7 bes2:m7 |
  ees2.:m7 bes2:m7 |
  ees2.:m7 bes2:m7 |
  % B
  ces2.:maj7 f2:m7.5-|
  bes2.:m7 ees2:m7 |
  aes2.:m7 des2:7 |
  ges2.:maj7 c2:m7.5- |
  ces2.:maj7 f2:m7.5-|
  bes2.:m7 ees2:m7 |
  aes2.:m7 des2:7 |
  f2.:m7 bes2:m7 |
  % A
  ees2.:m7 bes2:m7 |
  ees2.:m7 bes2:m7 |
  ees2.:m7 bes2:m7 |
  ees2.:m7 bes2:m7 |
  ees2.:m7 bes2:m7 |
  ees2.:m7 bes2:m7 |
  ees2.:m7 bes2:m7 |
  ees2.:m7 bes2:m7 |
  % A theme
  ees2.:m7 bes2:m7 |
  ees2.:m7 bes2:m7 |
  ees2.:m7 bes2:m7 |
  ees2.:m7 bes2:m7 |  
  ees2.:m7 bes2:m7 |
  ees2.:m7 bes2:m7 |
  ees2.:m7 bes2:m7 |
  ees2.:m7 bes2:m7 |
  % B
  ces2.:maj7 f2:m7.5-|
  bes2.:m7 ees2:m7 |
  aes2.:m7 des2:7 |
  ges2.:maj7 c2:m7.5- |
  ces2.:maj7 f2:m7.5-|
  bes2.:m7 ees2:m7 |
  aes2.:m7 des2:7 |
  f2.:m7 bes2:m7 |
  % A
  ees2.:m7 bes2:m7 |
  ees2.:m7 bes2:m7 |
  ees2.:m7 bes2:m7 |
  ees2.:m7 bes2:m7 |
  ees2.:m7 bes2:m7 |
  ees2.:m7 bes2:m7 |
  ees2.:m7 bes2:m7 |
  ees2.:m7 bes2:m7 |
}


DrumsUp = \drummode {
  \repeat unfold 56 {
    cymr4 cymr8 cymr8  cymr4 cymr8 cymr8 cymr4 |
  }
}

DrumsDown = \drummode {
  \repeat unfold 56 {
    bd4 hh8 sn8 r8 sn8 sn8 bd sn8 sn |
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
      R1*5/4*7 |
      r2. bes8 ees ges aes |
      % A
      a( bes) a aes( ges4) bes, des |
      ees2. f16( ges f ees des4) |
      ees2. des16( ees des bes aes4) |
      bes2. bes8 ees ges aes |
      a( bes) a aes( ges4) bes, des |
      ees2. des16( ees des bes aes4) |
      bes2. f'16( ges f ees des4) |
      ees2. r2 |
      % B
      ees8 ges4 ees8 ces4 aes8 bes ces c | 
      des8 f4 des8 bes4 ges8 aes a bes |
      ces8 ees4 ces8 aes4 f8 ges aes a |
      bes8 a bes ces des4 des8 c des d |
      ees8 ges4 ees8 ces4 aes8 bes ces c | 
      des8 f4 des8 bes4 ges8 aes a bes |
      ces8 ees4 ces8 aes4 f8 aes des ces |
      bes2. bes8 ees ges aes |
      % A
      a( bes) a aes( ges4) bes, des |
      ees2. f16( ges f ees des4) |
      ees2. des16( ees des bes aes4) |
      bes2. bes8 ees ges aes |
      a( bes) a aes( ges4) bes, des |
      ees2. des16( ees des bes aes4) |
      bes2. f'16( ges f ees des4) |
      ees2. bes8 ees ges aes |
      % A'
      a8( bes) a aes( ges4) bes, des |
      ees2. f16( ges f ees des4) |
      ees2. des16( ees des bes aes4) |
      bes2. bes8 ees ges aes |
      a( bes) a aes( ges4) bes, des |
      ees2. des16( ees des bes aes4) |
      bes2. f'16( ges f ees des4) |
      ees2. r2 |
      % B'
      ees8 ges4~ ges4. f4 ces8 c | 
      des8 f4~ f4. ees4 a,8 bes |
      ces8 ees4~ ees4. des4 r4 |
      r2. des8 c des d |
      ees8 ges4~ ges4. f4 ces8 c | 
      des8 f4~ f4. ees4 a,8 bes |
      ces8 ees4~ ees4. bes4 r4 |
      r2. des8 f bes des |
      % A'
      c( des) ees c( bes4) des, f |
      aes4. ges4. r2 | % f16( ges f ees des4) |
      ees2. des16( ees des bes aes4) |
      bes2. bes8 ees ges aes |
      a( bes) a aes( ges4) bes, des |
      ees2. des16( ees des bes aes4) |
      bes2. f'16( ges f ees des4) |
      ees2. r2 |
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
      R1*5/4*7 |
      r2. bes8 ees ges aes |
      % A
      a( bes) a aes( ges4) bes, des |
      ees2. f16( ges f ees des4) |
      ees2. des16( ees des bes aes4) |
      bes2. bes8 ees ges aes |
      a( bes) a aes( ges4) bes, des |
      ees2. des16( ees des bes aes4) |
      bes2. f'16( ges f ees des4) |
      ees2. r2 |
      % B
      ees8 ges4 ees8 ces4 aes8 bes ces c | 
      des8 f4 des8 bes4 ges8 aes a bes |
      ces8 ees4 ces8 aes4 f8 ges aes a |
      bes8 a bes ces des4 des8 c des d |
      ees8 ges4 ees8 ces4 aes8 bes ces c | 
      des8 f4 des8 bes4 ges8 aes a bes |
      ces8 ees4 ces8 aes4 f8 aes des ces |
      bes2. bes8 ees ges aes |
      % A
      a( bes) a aes( ges4) bes, des |
      ees2. f16( ges f ees des4) |
      ees2. des16( ees des bes aes4) |
      bes2. bes8 ees ges aes |
      a( bes) a aes( ges4) bes, des |
      ees2. des16( ees des bes aes4) |
      bes2. f'16( ges f ees des4) |
      ees2. bes8 ees ges aes |
      % A'
      a8( bes) a aes( ges4) bes, des |
      ees2. f16( ges f ees des4) |
      ees2. des16( ees des bes aes4) |
      bes2. bes8 ees ges aes |
      a( bes) a aes( ges4) bes, des |
      ees2. des16( ees des bes aes4) |
      bes2. f'16( ges f ees des4) |
      ees2. r2 |
      % B'
      ees8 ges4~ ges4. f4 ces8 c | 
      des8 f4~ f4. ees4 a,8 bes |
      ces8 ees4~ ees4. des4 r4 |
      r2. des8 c des d |
      ees8 ges4~ ges4. f4 ces8 c | 
      des8 f4~ f4. ees4 a,8 bes |
      ces8 ees4~ ees4. bes4 r4 |
      r2. bes8 ees ges aes |
      % A'
      a( bes) a aes( ges4) bes, des |
      ees2. f16( ges f ees des4) |
      ees2. des16( ees des bes aes4) |
      bes2. bes8 ees ges aes |
      a( bes) a aes( ges4) bes, des |
      ees2. des16( ees des bes aes4) |
      bes2. f'16( ges f ees des4) |
      ees2. r2 |
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
      R1*5/4*7 |
      r2. bes8 ees ges aes |
      % A
      a( bes) a aes( ges4) bes, des |
      ees2. f16( ges f ees des4) |
      ees2. des16( ees des bes aes4) |
      bes2. bes8 ees ges aes |
      a( bes) a aes( ges4) bes, des |
      ees2. des16( ees des bes aes4) |
      bes2. f'16( ges f ees des4) |
      ees2. r2 |
      % B
      ees8 ges4 ees8 ces4 aes8 bes ces c | 
      des8 f4 des8 bes4 ges8 aes a bes |
      ces8 ees4 ces8 aes4 f8 ges aes a |
      bes8 a bes ces des4 des8 c des d |
      ees8 ges4 ees8 ces4 aes8 bes ces c | 
      des8 f4 des8 bes4 ges8 aes a bes |
      ces8 ees4 ces8 aes4 f8 aes des ces |
      bes2. bes8 ees ges aes |
      % A
      a( bes) a aes( ges4) bes, des |
      ees2. f16( ges f ees des4) |
      ees2. des16( ees des bes aes4) |
      bes2. bes8 ees ges aes |
      a( bes) a aes( ges4) bes, des |
      ees2. des16( ees des bes aes4) |
      bes2. f'16( ges f ees des4) |
      ees2. r2 |
      % A'
      r8 ees8 r4 ees8 r8 r4 des4 |
      r8 ees8 r4 ees8 r8 r4 des4 |
      r8 ees8 r4 ees8 r8 r4 des4 |
      r8 ees8 r4 ees8 r8 r4 des4 |
      r8 ees8 r4 ees8 r8 r4 des4 |
      r8 ees8 r4 ees8 r8 r4 des4 |
      r8 ees8 r4 ees8 r8 r4 des4 |
      r8 ees8 r4 ees8 r8 r4 des4 |
      % B
      r4. ees8 ces4~ ces2 | 
      r4. des8 bes4~ bes2 |
      r4. ces8 aes4~ aes2 |
      bes8 a bes ces des4 r2 |
      r4. ees8 ces4~ ces2 | 
      r4. des8 bes4~ bes2 |
      r4. ces8 aes4~ aes2 |
      aes2. r4 des |
      % A
      ges8( aes) ges f( ees4) aes, bes |
      bes2. c16( des c bes aes4) |
      bes2. aes16( bes aes ges f4) |
      ges2. f8 bes des f |
      ges( aes) ges f( ees4) aes, bes |
      bes2. aes16( bes aes ges f4) |
      ges2. f'16( ges f ees des4) |
      ees2. r2 |
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
      R1*5/4*7 |
      r2. bes,,8 ees ges aes |
      % A
      a( bes) a aes( ges4) bes, des |
      ees2. f16( ges f ees des4) |
      ees2. des16( ees des bes aes4) |
      bes2. bes8 ees ges aes |
      a( bes) a aes( ges4) bes, des |
      ees2. des16( ees des bes aes4) |
      bes2. f'16( ges f ees des4) |
      ees2. r2 |
      % B
      ees8 ges4 ees8 ces4 aes8 bes ces c | 
      des8 f4 des8 bes4 ges8 aes a bes |
      ces8 ees4 ces8 aes4 f8 ges aes a |
      bes8 a bes ces des4 des8 c des d |
      ees8 ges4 ees8 ces4 aes8 bes ces c | 
      des8 f4 des8 bes4 ges8 aes a bes |
      ces8 ees4 ces8 aes4 f8 aes des ces |
      bes2. bes8 ees ges aes |
      % A
      a( bes) a aes( ges4) bes, des |
      ees2. f16( ges f ees des4) |
      ees2. des16( ees des bes aes4) |
      bes2. bes8 ees ges aes |
      a( bes) a aes( ges4) bes, des |
      ees2. des16( ees des bes aes4) |
      bes2. f'16( ges f ees des4) |
      ees2. r2 |
      % A'
      r8 ges8 r4 ges8 r8 r4 f4 |
      r8 ges8 r4 ges8 r8 r4 f4 |
      r8 ges8 r4 ges8 r8 r4 f4 |
      r8 ges8 r4 ges8 r8 r4 f4 |
      r8 ges8 r4 ges8 r8 r4 f4 |
      r8 ges8 r4 ges8 r8 r4 f4 |
      r8 ges8 r4 ges8 r8 r4 f4 |
      r8 ges8 r4 ges8 r8 r4 f4 |
      % B' 
      ces4. ges4. aes8 bes ces4 | 
      bes4. f4. ges8 aes a4 |
      aes4. ees4. f8 ges aes a |
      bes8 r8 r4 r4 r2 |
      ces4. ges4. aes8 bes ces4 | 
      bes4. f4. ges8 aes a4 |
      aes4. ees4. f8 aes des ces |
      bes2. r4 ges4 |
      % A''
      ees'8( ges) ees bes( ges4) f4 aes |
      ges2. aes16( a aes ges f4) |
      ges2. f16( ges f ees des4) |
      ees2. des8 ges bes des |
      ees8 ( ges) ees bes( ges4) f4 aes |
      ges2. f16( ges f ees des4) |
      ees2. f16( ges f ees des4) |
      ees2. r2 
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
      \chordmode {
        r8 ees8:m7 r8 r8 ees8:m7 r8 r4 bes,4:m7 |
        r8 ees8:m7 r8 r8 ees8:m7 r8 r4 bes,4:m7 |
        r8 ees8:m7 r8 r8 ees8:m7 r8 r4 bes,4:m7 |
        r8 ees8:m7 r8 r8 ees8:m7 r8 r4 bes,4:m7 |
        r8 ees8:m7 r8 r8 ees8:m7 r8 r4 bes,4:m7 |
        r8 ees8:m7 r8 r8 ees8:m7 r8 r4 bes,4:m7 |
        r8 ees8:m7 r8 r8 ees8:m7 r8 r4 bes,4:m7 |
        r8 ees8:m7 r8 r8 ees8:m7 r8 r4 bes,4:m7 |
        % A theme
        r8 ees8:m7 r8 r8 ees8:m7 r8 r4 bes,4:m7 |
        r8 ees8:m7 r8 r8 ees8:m7 r8 r4 bes,4:m7 |
        r8 ees8:m7 r8 r8 ees8:m7 r8 r4 bes,4:m7 |
        r8 ees8:m7 r8 r8 ees8:m7 r8 r4 bes,4:m7 |
        r8 ees8:m7 r8 r8 ees8:m7 r8 r4 bes,4:m7 |
        r8 ees8:m7 r8 r8 ees8:m7 r8 r4 bes,4:m7 |
        r8 ees8:m7 r8 r8 ees8:m7 r8 r4 bes,4:m7 |
        r8 ees8:m7 r8 r8 ees8:m7 r8 r4 bes,4:m7 |
        % B
        ces2.:maj7 f2:m7.5-|
        bes2.:m7 ees2:m7 |
        aes2.:m7 des2:7 |
        ges2.:maj7 c2:m7.5- |
        ces2.:maj7 f2:m7.5-|
        bes2.:m7 ees2:m7 |
        aes2.:m7 des2:7 |
        f2.:m7 bes2:m7 |
        % A
        r8 ees8:m7 r8 r8 ees8:m7 r8 r4 bes,4:m7 |
        r8 ees8:m7 r8 r8 ees8:m7 r8 r4 bes,4:m7 |
        r8 ees8:m7 r8 r8 ees8:m7 r8 r4 bes,4:m7 |
        r8 ees8:m7 r8 r8 ees8:m7 r8 r4 bes,4:m7 |
        r8 ees8:m7 r8 r8 ees8:m7 r8 r4 bes,4:m7 |
        r8 ees8:m7 r8 r8 ees8:m7 r8 r4 bes,4:m7 |
        r8 ees8:m7 r8 r8 ees8:m7 r8 r4 bes,4:m7 |
        r8 ees8:m7 r8 r8 ees8:m7 r8 r4 bes,4:m7 |
        % A theme
        r8 ees8:m7 r8 r8 ees8:m7 r8 r4 bes,4:m7 |
        r8 ees8:m7 r8 r8 ees8:m7 r8 r4 bes,4:m7 |
        r8 ees8:m7 r8 r8 ees8:m7 r8 r4 bes,4:m7 |
        r8 ees8:m7 r8 r8 ees8:m7 r8 r4 bes,4:m7 |
        r8 ees8:m7 r8 r8 ees8:m7 r8 r4 bes,4:m7 |
        r8 ees8:m7 r8 r8 ees8:m7 r8 r4 bes,4:m7 |
        r8 ees8:m7 r8 r8 ees8:m7 r8 r4 bes,4:m7 |
        r8 ees8:m7 r8 r8 ees8:m7 r8 r4 bes,4:m7 |
        % B
        ces2.:maj7 f2:m7.5-|
        bes2.:m7 ees2:m7 |
        aes2.:m7 des2:7 |
        ges2.:maj7 c2:m7.5- |
        ces2.:maj7 f2:m7.5-|
        bes2.:m7 ees2:m7 |
        aes2.:m7 des2:7 |
        f2.:m7 bes2:m7 |
        % A
        r8 ees8:m7 r8 r8 ees8:m7 r8 r4 bes,4:m7 |
        r8 ees8:m7 r8 r8 ees8:m7 r8 r4 bes,4:m7 |
        r8 ees8:m7 r8 r8 ees8:m7 r8 r4 bes,4:m7 |
        r8 ees8:m7 r8 r8 ees8:m7 r8 r4 bes,4:m7 |
        r8 ees8:m7 r8 r8 ees8:m7 r8 r4 bes,4:m7 |
        r8 ees8:m7 r8 r8 ees8:m7 r8 r4 bes,4:m7 |
        r8 ees8:m7 r8 r8 ees8:m7 r8 r4 bes,4:m7 |
        r8 ees8:m7 r8 r8 ees8:m7 r8 r4 bes,4:m7 |
      }
    }
  }
}

PianoNotes = \transpose \originPitch \targetPitchPiano {
  \new Voice {
    \global
    \relative c{
      \set Staff.instrumentName = #"Piano "
      \set Staff.midiInstrument = \midiInstrPiano
      \transposition \originPitchPiano % for MIDI files? to be verified

      \clef bass % s\clefPiano
      \compressFullBarRests
      ees4. ees bes4 des |
      ees4. ees bes4 des |
      ees4. ees bes4 des |
      ees4. ees bes4 des |
      ees4. ees bes4 des |
      ees4. ees bes4 des |
      ees4. ees bes4 des |
      ees4. ees bes4 des |
      % A 
      ees4. ees bes4 des |
      ees4. ees bes4 des |
      ees4. ees bes4 des |
      ees4. ees bes4 des |
      ees4. ees bes4 des |
      ees4. ees bes4 des |
      ees4. ees bes4 des |
      ees4. ees aes4 bes |
      % B
      ces4. ces ges4 aes |
      bes4. bes f4 ges |
      aes4. aes ees4 f |
      ges4. ges aes4 bes |
      ces4. ces ges4 aes |
      bes4. bes f4 ges |
      aes4. aes des,4 ees |
      f4. f bes,4 des |
      % A 
      ees4. ees bes4 des |
      ees4. ees bes4 des |
      ees4. ees bes4 des |
      ees4. ees bes4 des |
      ees4. ees bes4 des |
      ees4. ees bes4 des |
      ees4. ees bes4 des |
      ees4. ees bes4 des |
      % A 
      ees4. ees bes4 des |
      ees4. ees bes4 des |
      ees4. ees bes4 des |
      ees4. ees bes4 des |
      ees4. ees bes4 des |
      ees4. ees bes4 des |
      ees4. ees bes4 des |
      ees4. ees aes4 bes |
      % B
      ces4. ces ges4 aes |
      bes4. bes f4 ges |
      aes4. aes ees4 f |
      ges4. ges aes4 bes |
      ces4. ces ges4 aes |
      bes4. bes f4 ges |
      aes4. aes des,4 ees |
      f4. f bes,4 des |
      % A 
      ees4. ees bes4 des |
      ees4. ees bes4 des |
      ees4. ees bes4 des |
      ees4. ees bes4 des |
      ees4. ees bes4 des |
      ees4. ees bes4 des |
      ees4. ees bes4 des |
      ees4. ees aes4 bes |
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
%%% Lilypond-master-file: "takeFive_score.ly"
%%% End:
% -*- master: takeFive_score.ly;
% -*- output: takeFive_score-score.pdf
