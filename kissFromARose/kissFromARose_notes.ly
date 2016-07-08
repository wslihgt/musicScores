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
  s2.*3 |
  s2.^\markup{verse 2} |
  s2.*8 |
  s4 s2^\markup{(break melody)} | 
  s4 s2^\markup{(tutti back)} |
  s2.*14 |
  \bar "||"
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
  \bar "||"
  % verse 1
  g2. | g | ees | f | g |
  g2. | g | ees | f | g |
  g | g |
  f | c | g | g | g:m |
  ees | f | ees | f | g | g |
  \bar "||"
  % chorus
  g | g | ees | f | 
  g | g | f:sus | f |
  g | g | ees | f |
  ees | f | g | g |
  \bar "||"
  % interlude 
  g:m | f | g | g |
  \bar "||"
  % verse 2
  g | g | ees | f |
  g | g | g | ees | f |
  g | g | ees | f |
  g | g | ees | f | g | g:m |
  ees | f | ees | f | g | g | 
  \bar "||"
  % chorus
  g | g | ees | f | 
  g | g | f:sus | f |
  g | g | ees | f |
  ees | f | g | g |
  \bar "||"
  % musical intermezzo
  g:m | f | g | g | 
  ees | f | ees | f | 
  \bar "||"
  % bridge - choir
  f | c/f | c | bes | 
  f | c/f | c | bes | 
  f | c/f | c | bes | 
  f | c/f | c | bes | 
  \bar "||"
  % verse 3
  g | g | ees | f | 
  g | g | ees | f | 
  g | c:7sus4/f | ees | f | 
  g | g | ees | f | 
  g | g:m | ees | f |
  ees | f | g | g |
  \bar "|."
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
          
      \partial 4 {g8 a}
      % intro
      bes4. c8 bes4 | a4 g f |
      g2 g8 f | g4 r4 g8 a |
      bes4. c8 bes4 | a4 g f |
      g2 g8 f | g2. |
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
      % interlude
      bes4. c8 bes4 | a4 g f |
      g2.~ | g2. |
      % verse 2 
      r4 c8 b4.~ | b8 c b c b c | 
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
      g2.~ | g2 r4 |
      % intermezzo
      r4 g' f~ | f c a |
      b2. | r2 g'8 a | 
      bes2. | a4 f2 | bes2. | a2. |
      % bridge
      r2. | r4 e2 | g4 f e8 d~ | d4 e e8 f~ | 
      f2 r4 | r4 e2 | g4 f e8 d~ | d4 e e8 
      <<
        \new Voice = "first" {\voiceOne
          f8~ | f2 r4 | r4 e2 | g4 f e8 d~ | d4 e e8 f~ | 
          f2 r4 | r4 e2 | g4 f e8 d~ | d4 e e8 f~ |
        }
        \new Voice = "second" {\voiceTwo
          f8~ | f2 r8 e | e8 e4. e4 | c2 bes8 a | g4 f e8 f~ |
          f2 c'8 e | e8 e4. e4 | c2 bes8 a | g4 f e8 f~ |
        }
      >>
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
      \partial 4 {r4} |
      r4 d, d | r4 c c | r b b8 c | b2 b8 c |
      d4 c bes | a d, a' | b2 b8 c | b2. |
      % verse 1
      r4 c8 b4.~ | b8 c b c b c |
      d4 f, d' | d c b |
      d8 b~ b4 r4 | g8 fis~ fis4~ fis8 g8 |
      b2 c4 | d4 f, d' | 
      d c b | d8 b~ b4 r8 d, | 
      c'8 b8~ b4~ b8 c8 | d2 e4 |
      f4 d f | e8 c c4 e | 
      d8 b r8 b g' fis | b,4. b8 g' fis |
      bes,2 g4 | bes4. c8 bes4 | 
      a4 g r8 f | bes4. c8 bes4 | 
      a4 g f | b2. | r2 bes4 |
      % chorus
      g8 f d2 | f8 d f d f g |
      d'4 c bes8 a~ | a4 f e8 d~ |
      d2 r8 d8 | f d f g b c |
      d4 c bes8 a~ | a2 f8 g~ | 
      g2 r8 b | d4 c b | 
      d4 c bes8 a~ | a2 r8 g |
      d'4 c bes8 a~ | a bes f4 f8 g~ |
      g2.~ | g2 r4 |
      % interlude
      r4 d' d | r4 c c | r b b8 c | b2 r4 |
      % verse 2
      r4 r4 e8 d8~ | d2. | d8 c bes4 d8 c8~ |
      c4. f,8 f g~ | g2 r4 |
      g'8 fis8~ fis2~ | fis2 r4 |
      d4 c bes | c bes a | g2 g'8 f | d bes c2~ |
      c2 r4 | c8 bes c bes c b~ | b2 r4 | 
      b8 c b c b c | d c c2 | r2 r8 bes8 |
      g' fis b,4. b8 | g' fis bes,2 |
      d4. ees8 d4 | c bes a  | d4. ees8 d4 | c bes a  | 
      b2. | r2 bes4 |
      % chorus 2 
      g8 f d2 | f8 d f d f g |
      d'4 c bes8 a~ | a4 f e8 d~ |
      d2 r8 d8 | f d f g b c |
      d4 c bes8 a~ | a2 f8 g~ | 
      g2 r8 b | d4 c b | 
      d4 c bes8 a~ | a2 r8 g |
      d'4 c bes8 a~ | a bes f4 f8 g~ |
      g2.~ | g2 r4 |
      % intermezzo |
      R2.*8 |
      % bridge
      f2. | e'2. | g4 f e8 d~ | d4. r4. |
      f,2. | e'2. | g4 f e8 d~ | d4. r4. |
      f,2. | e'2. | g4 f e8 d~ | d4. r4. |
      f,2. | e'2. | g4 f e8 d~ | d4. r4. |
      
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
      \partial 4 {r4} | 
      % intro
      r4 g,2 | f4 c f | d2.~ | d2. |
      r4 g2 | f4 c f | d2.~ | d2. |
      % verse 1
      g2.~ | g2~ g8 g | ees2. | f | g2~ g8 g  |
      g2.~ | g2~ g8 g | ees2. | f | 
      g2.~ | g2.~ | g2~ g8 g  | 
      f'4 e d | c b a | g2.~ | g2. | g2. |
      ees2. | f4 r2 | ees2. | f2. | 
      g2~ g8 d | g2. 
      % chorus 
      g2. | d'2. | 
      bes4 a g8 f~ | f4 d c8 b~ |
      b2.  | d'2. |
      bes4 a g8 f~ | f2 f8 d~ | 
      d2 r8 g | b4 a g | 
      f4 ees ees8 f~ | f2 r8 g |
      bes4 a g8 f~ | f ees f4 f8 g~ |
      g2.~ | g2 r4 |
      % interlude
      r4 g2 | f4 c f | d2.~ | d2. |
      % verse 2
      g2. | a8 g8~ g2 | ees4 f g | f g a | g2 r4 |
      g2. | b2. | d4 c bes | a f ees | 
      d4 r4 g'8 f | d bes g4. d8 |
      ees2. | f | g8 a bes a g f | 
      g2. | ees2. | f2. | g8 b d b g4 | 
      r4 g4 f | ees2. | f2. | ees | f |
      g2.~ | g2. | 
      % chorus 2
      g2. | d'2. | 
      bes4 a g8 f~ | f4 d c8 b~ |
      b2.  | d'2. |
      bes4 a g8 f~ | f2 f8 d~ | 
      d2 r8 g | b4 a g | 
      f4 ees ees8 f~ | f2 r8 g |
      bes4 a g8 f~ | f ees f4 f8 g~ |
      g2.~ | g2 r4 |
      % intermezzo
      R2.*8 |
      % bridge
      r4 f2 | c'2. | e4 d c8 bes~ | bes4 a bes8 c~ |
      c4 f,2 | c'2. | e4 d c8 bes~ | bes4 a bes8 c~ |
      c4 f,2 | c'2. | e4 d c8 bes~ | bes4 a bes8 c~ |
      c4 g8 f4. | c'2. | e4 d c8 bes~ | bes4 a bes8 c~ |
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
      \partial 4 {g8 a}
      % intro
      bes4. c8 bes4 | a4 g f |
      g2.~ | g4 r4 g8 a |
      bes4. c8 bes4 | a4 g f |
      g2 g'8 d | g,2. |
      % verse
      b4 d8 g d4 |
      b4 d8 g d4 |
      bes4 d8 g d4 |
      c4 d8 g d4 |
      b4 d8 g d4 |
      b4 d8 g d4 |
      b4 d8 g d4 |
      bes4 d8 g d4 |
      c4 d8 g d4 |
      b4 d8 g d4 |
      b4 d8 g d4 |
      b4 d8 g d4 |
      a4 c8 f c4 |
      g4 c8 e c4 |
      b4 d8 g d4 |
      b4 r2 |
      <bes d g>2. |
      <bes ees g>2. |
      r4 <a c f>4^. r4 |
      bes4 ees8 g ees4 |
      a,4 c8 f c4 |
      \chordmode {
        g4 g8 g8 g4 |
        g4 g8 g8 g4 |
      }
      % chorus
      \chordmode {
        g4 g8 g8 g4 |
        g4 g8 g8 g4 |
        ees4 ees8 ees8 ees4 |
        f4 f8 f8 f4 |
        g4 g8 g8 g4 |
        g4 g8 g8 g4 |
        f4 f8 f8 f4 |
        f4 f8 f8 f4 |
        g4 g8 g8 g4 |
        g4 g8 g8 g4 |
        ees4. ees8 ees4 |
        f4. f8 f4 |
        ees4. ees8 ees4 |
        f4. f8 f4 |
        g2.~ |
        g2 
      }
      g8 a |
      bes4. c8 bes4 | a4 g f | g2.~ | g2 g'8 d |
      % verse 2
      g,4 b8 d b4 |
      g4 b8 d b4 |
      g4 bes8 d bes4 |
      f4 a8 d a4 |
      g4 b8 d b4 |
      g4 b8 d b4 |
      g4 b8 d b4 |
      \chordmode{
        ees2. | f |
      }
      <g b d>4^. r2 | r4  <g c d>4 g |
      g4 bes8 d bes4 |
      f4 a8 d a4 |
      g4 b8 d b4 |
      g4 b8 d b4 |
      g4 bes8 d bes4 |
      f4 a8 d a4 |
      \chordmode{g2. | g:m }
      g4 bes8 d bes4 |
      f4 <a c f>4^. r4 |
      g4 bes8 d bes4 |
      f4 a8 d a4 |
      \chordmode {
        g4 g8 g8 g4 |
        g4 g8 g8 g4 |
      }
      % chorus
      \chordmode {
        g4 g8 g8 g4 |
        g4 g8 g8 g4 |
        ees4 ees8 ees8 ees4 |
        f4 f8 f8 f4 |
        g4 g8 g8 g4 |
        g4 g8 g8 g4 |
        f4 f8 f8 f4 |
        f4 f8 f8 f4 |
        g4 g8 g8 g4 |
        g4 g8 g8 g4 |
        ees4. ees8 ees4 |
        f4. f8 f4 |
        ees4. ees8 ees4 |
        f4. f8 f4 |
        g2.~ |
        g2 
      }
      % intermezzo
      g8 a |
      bes4. c8 bes4 | 
      a4 g f | g2 g8 f | g2 g8 a |
      bes4. c8 bes4 | a4 f4 a4 |
      bes4. c8 bes4 | a g f |
      % bridge
      f8 a c f c4 |
      f,8 g c e c4 |
      c,8 e g c g4 |
      bes,8 f' bes d bes4 |
      f8 a c f c4 |
      f,8 g c e c4 |
      c,8 e g c g4 |
      bes,8 f' bes d bes4 | 
      f8 a c f c4 |
      f,8 g c e c4 |
      c,8 e g c g4 |
      bes,8 f' bes d bes4 |
      f8 a c f c4 |
      f,8 g c e c4 |
      c,8 e g c g4 |
      bes,8 f' bes d bes4 | 
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
