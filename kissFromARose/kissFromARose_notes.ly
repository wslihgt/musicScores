\version "2.18.2"

pieceTitle = "Kiss From a Rose"
composer = "Seal (from everyonepiano.com)"

\header{  title = \pieceTitle
  composer = \composer
}

globalStyle = { % Use for various rendering styles that apply to all parts
  \accidentalStyle "modern-cautionary"
}

structure = { % Use to give annotations, mainly, also checking meaure consistency
  \partial 4 {s4} |
  s2.^\markup{intro} |
  s2. * 7 |
  s2.^\markup{verse 1} |
  s2.*22 |
  s2.^\markup{chorus} |
  s2.*15 |
  s2.^\markup{interlude} |
  s2.*4 |
  s2.^\markup{verse 2} |
  s2.*24 |
  s2.^\markup{chorus}\segno |
  s2.*15 |
  s2.^\markup{intermezzo} |
  s2.*7 |
  s2.^\markup{Bridge - Choir} |
  s2.*15 |
  s2.^\markup{verse 3} |
  s2.*22 |
  s2.^\markup{D.S. al chorus and fade}\segno 
}

global = { % Use for tempo and key changes
  \time 3/4
  \tempo 2. = 44
  \key g \major
}


chordSeq = \chordmode {
  \partial 4 {r4} |
  % intro
  g2.:m | f | g~ | g |
  g2.:m | f | g~ | g |
  % verse 1
  g2. | g | ees | f | g |
  g2. | g | ees | f | g |
  g | g |
  f | c | g | g | g:m |
  ees | f | ees | f | g | g |
  % chorus
  g | g | ees | f | 
  g | g | f:sus | f |
  g | g | ees | f |
  ees | f | g | g |
  % interlude 
  g:m | f | g | g |
  % verse 2
  g | g | ees | f |
  g | g | g | ees | f |
  g | g | ees | f |
  g | g | ees | f | g | g:m |
  ees | f | ees | f | g | g | 
  % chorus
  g | g | ees | f | 
  g | g | f:sus | f |
  g | g | ees | f |
  ees | f | g | g |
  % musical intermezzo
  g:m | f | g | g | 
  ees | f | ees | f | 
  % bridge - choir
  f | c/f | c | bes | 
  f | c/f | c | bes | 
  f | c/f | c | bes | 
  f | c/f | c | bes | 
  % verse 3
  g | g | ees | f | 
  g | g | ees | f | 
  g | g | ees | f | 
  g | g | ees | f | 
  g | g:m | ees | f |
  ees | f | g | g |
}

oboe = { 
  \partial 4 {g8 a}
  % intro
  bes4. c8 bes4 | a4 g f |
  g2.~ | g4 r4 g8 a |
  bes4. c8 bes4 | a4 g f |
  g2.~ | g2. |
  % verse 1
  r4 c8 b4.~ | b8 c b c b c |
  d4 f, d' | d c b |
  d8 b~ b4 r4 | g'8 fis~ fis4~ fis8 d8 |
  b2 c4 | d4 f, d' | 
  d c b | d8 b~ b4 r8 d | 
  c'8 b8~ b4~ b8 g8 | d2 e4 |
  f4 d f | e8 c c4 e | 
  d8 b r8 b g' fis | b,4. b8 g' fis |
  bes,2 g4 | bes4. c8 bes4 | 
  a4 g r8 f | bes4. c8 bes4 | 
  a4 g f | b2. | r2 bes'4 |
  % chorus
  g8 f d2 | f8 d f d f d |
  g4 f d8 c~ | c4 bes a8 g~ |
  g2 r8 d'8 | f d f d f d |
  g4 f d8 c~ | c2 c8 b~ | 
  b2 r8 b | g'4 f d | 
  g4 f d8 c~ | c2 r8 bes |
  g'4 f d8 c~ | c bes f4 f8 g |
  g2.~ | g2 g8 a |
  % intermezzo
  bes4. c8 bes4 | a4 g f |
  g2.~ | g2. |
  % verse 2 
  r8 c b2 | b8 c b c b c | 
  d4 f, d' | d c bes |
  d8 b r4 r | g'8 fis~ fis4. d8 |
  b2 c4 | d c d | f d f | 
  g2 g8 f | d bes c4. bes8 |
  c bes c bes c cis | d f, f f f f |
  g2. | g8 a g a g a | bes a a2 |
  r4. bes8 g' fis | b,4. b8 g' fis | 
  bes,2 g4 | bes4. c8 bes4 | 
  a4 g f | bes4. c8 bes4 | 
  a4 g f | g2. | r2 bes'4 |
  % chorus 2
  g8 f d2 | f8 d f d f d |
  g4 f d8 c~ | c4 bes a8 g~ |
  g2 r8 d'8 | f d f d f d |
  g4 f d8 c~ | c2 c8 b~ | 
  b2 r8 b | g'4 f d | 
  g4 f d8 c~ | c2 r8 bes |
  g'4 f d8 c~ | c bes f4 f8 g |
  g2.~ | g2 g8 a |
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


OboeNotes = \transpose \originPitch \targetPitchOboe {
  \new Voice {
    \global
    \relative c''{
      \set Staff.instrumentName = #"Oboe "
      \set Staff.midiInstrument = \midiInstrOboe
      \transposition \originPitchOboe % for MIDI files? to be verified

      \clef \clefOboe
      \compressFullBarRests
      \oboe
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
%%% Lilypond-master-file: "kissFromARose_score.ly"
%%% End:
% -*- master: kissFromARose_score.ly;
% -*- output: kissFromARose_score-score.pdf
