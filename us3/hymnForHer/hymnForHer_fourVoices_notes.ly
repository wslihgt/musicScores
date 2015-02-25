%%%%% piece.ly
%%%%% (This is the global definitions file)

\version "2.18.2"

\header{
  title = "Hymn For Her"
	composer = "US3"
}

% some things to define in the ..._score.ly file:
%originpitch = c' %c' %bes'% f % c'
%targetpitchone = c'
%targetpitchtwo = c'
%targetpitchthr = c'
%targetpitchfou = c'

%clefVThree = G % alto % bass... 

% midiInstrOne
% midiInstrTwo
% midiInstrThr
% midiInstrFou

globalStyle = {
  \accidentalStyle "modern-cautionary"
}

structure = {
  s1^\markup{Intro, Percus} | %\breathe |
  s1 * 6 |
  s1 \breathe |
  s1^\markup{Intro, Piano} | %\breathe |
  s1 * 6 |
  s1 \breathe |
  s1^\markup{Riff I} | %\breathe |
  s1 * 6 |
  s1 \breathe |
  s1^\markup{Riff I + Theme start} | %\breathe |
  s1 * 6 |
  s1 \breathe |
  s1^\markup{Riff II} | %\breathe |
  s1 * 6 |
  s1 \breathe |
  s1^\markup{Riff III + Theme} | %\breathe |
  s1 * 6 |
  s1 \breathe |
  s1^\markup{Riff III} | %\breathe |
  s1 * 6 |
  s1 \breathe |
  s1^\markup{Riff II} | %\breathe |
  s1 * 6 |
  s1 \breathe |
  s1^\markup{Riff IV, percu break} | %\breathe |
  s1 * 6 |
  s1 \breathe |
  s1^\markup{Riff I, Reggae} | %\breathe |
  s1 * 6 |
  s1 \breathe |
  s1^\markup{Riff I} | %\breathe |
  s1 * 6 |
  s1 \breathe |
  s1^\markup{Riff II} | %\breathe |
  s1 * 6 |
  s1 \breathe |
  s1^\markup{Riff III} | %\breathe |
  s1 * 6 |
  s1 \breathe |
  s1^\markup{Riff III} | %\breathe |
  s1 * 6 |
  s1 \breathe |
  s1^\markup{Riff IV, break} | %\breathe |
  s1 * 6 |
  s1 \breathe |
  s1^\markup{Riff II} | %\breathe |
  s1 * 6 |
  s1 \breathe |
  s1^\markup{Riff I, Reggae} | %\breathe |
  s1 * 6 |
  s1 \breathe |
  s1^\markup{Riff I, Reggae} | %\breathe |
  s1 * 6 |
  s1 \breathe |
  s1^\markup{Riff II} | %\breathe |
  s1 * 6 |
  s1 \breathe |
  s1^\markup{Riff III} | %\breathe |
  s1 * 6 |
  s1 \breathe |
  s1^\markup{Riff III} | %\breathe |
  s1 * 6 |
  s1 \breathe |
  s1^\markup{Riff III} | %\breathe |
  s1 * 6 |
  s1 \breathe |
  s1
  % \bar "||"
  \bar "|."
}

global = {
  \time 4/4
  \tempo 4 = 180
  \key g \minor 
}

bassRiffI = \relative c {
  \repeat unfold 2 {
    g4 g8 g bes4 bes8 c8~ |
    c8 bes8 \appoggiatura cis8 d4 f8 cis c bes |
    g4 g8 g bes4 bes8 c8~ |
    c8 bes8 \appoggiatura cis8 d4 f4 r4 |
  }
}

bassRiffII = \relative c {
  \repeat unfold 2 {
    bes4. g4. r4 |
    d'4 d8 f8~ f8 g8 g,4 | 
    bes4. g4. r4 |
    R1
  }
}

bassRiffIII = \relative c {
  \repeat unfold 2 {
    d8 f8~ f8 g8~ g8 f8 cis16 c bes8 |
    c8 bes c c bes4 g |
    d'8 f8~ f8 g8~ g8 f8 cis16 c bes8 |
    c8 bes c c bes4 r4 |
  }
}

bassRiffIV = \relative c {
  \repeat unfold 4 {
    d4 d8 f8~ f g8 g,4 |
    R1 |
  }
}

bassRiffs = {
  R1*8 |
  R1*8 |
  \bassRiffI
  \bassRiffI
  \bassRiffII
  \bassRiffIII
  \bassRiffIII
  \bassRiffII
  \bassRiffIV
  \bassRiffI
  \bassRiffI
  \bassRiffII
  \bassRiffIII
  \bassRiffIII
  \bassRiffIV
  \bassRiffII
  \bassRiffI
  \bassRiffI
  \bassRiffII
  \bassRiffIII
  \bassRiffIII
  \bassRiffIII
}

melody = \relative c'' {
  fis8 ees ees d d4 r4 | 
  R1 * 7 |
  
  R1 * 8 |
  
  d8 ees fis g fis4 ees |
  d8 ees16 d c8 bes d4 g, |
  d'8 ees fis g a4 fis8 g |
  ees d c4 bes g |
  d'8 ees fis g fis4 ees |
  bes'4 a g8 g d4 |
  d8 ees fis g fis4 ees |
  \appoggiatura {fis16 ees} d8 c bes c8~ c4 r |
  
  R1 * 4 |
  d8 ees fis g fis4 ees |
  ees8 fis16 ees d8 c d c~ c fis,~ |
  fis4 r r2 |
  R1 |

  r8 d ees f fis g g g |
  g g g g g g g g |
  g fis fis ees ees d d4 | 
  r2 r8 d ees f | 
  fis g g g g g g g | 
  g g g g g g g g |
  g fis fis ees ees d d4 | 
  R1 
  
  r4 g8 aes b c d ees |
  fis4 fis8 fis fis4 fis8 fis |
  fis4 fis8 fis fis8 g~ g d~ |
  d4 r4 r2 |
  r8 bes~ bes4 g4 r4 |
  d'4~ d8 fis,~ fis4 r4 |
  bes2 g2 |
  d'2 fis, |
  
  fis'8 ees ees d d4 r4 | 
  R1 * 3 |
  fis8 ees ees d d4 r4 | 
  R1 * 3 |
  
  fis8 ees ees d d4 r4 | 
  R1 * 3 |
  fis8 ees ees d d4 r4 | 
  fis8 ees ees d d4 r4 | 
  fis8 ees ees d d8 ees16 d c8 d |
  c bes bes c fis,4 r4 | 
  %fis'8 ees ees d d4 r4 | 
  %fis8 ees ees d d4 r4 | 
  %fis8 ees ees d d8 c c d | 
  %c bes bes c fis,4 r4 | 
  
  r4 r8 fis d' ees ees d |
  ees4 d8 c~ c d16 c bes4 |
  r4 r8 g d' ees ees d |
  ees d c4 bes r4 |
  r4 r8 fis d' ees ees d |
  ees4 d8 c~ c d16 c bes4 |
  r4 r8 g d' ees ees d |
  ees d c4 bes r4 |
  
  %fis'8 ees ees g g fis fis a |
  % a g bes a \appoggiatura {bes16 c } d 
}

one = \transpose \originpitchone \targetpitch {\new Voice { 
  \global
  \relative c''{
  \set Staff.instrumentName = #"V1 "
  \set Staff.midiInstrument = \midiInstrOne
  \transposition \originpitchone % for MIDI files? to be verified
  {
  \compressFullBarRests
  R1*7 |
  r2. r8 g |
  \repeat unfold 3 {
    \appoggiatura fis'16 g4 r8 f,8~ f2~ |
    f2 r4. g8 | 
  }
  \appoggiatura fis'16 g4 r8 f,8~ f2~ |
  f2 r4. r8 | 
  R1 *8 |
  \melody
  }
}}}   %*********************************

two = \transpose \originpitchtwo \targetpitch {\new Voice { 
  \global
  \relative c''{
  \set Staff.instrumentName = #"V2 "
  \set Staff.midiInstrument = \midiInstrTwo
  \transposition \originpitchtwo % for MIDI files? to be verified
  {
  \compressFullBarRests
  R1*7 |
  r2. r8 g |
  \repeat unfold 3 {
    d'4 r8 d,8~ d2~ |
    d2 r4. g8 | 
  }
  d'4 r8 d,8~ d2~ |
  d2 r4. r8 | 
  R1 *8 |
  \melody
  }
}}}   %*********************************

three = \transpose \originpitchthr \targetpitch {\new Voice { 
  \global
  \relative c' {
  \set Staff.instrumentName = #"V3 "
  \set Staff.midiInstrument = \midiInstrThr
  \transposition \originpitchthr % for MIDI files? to be verified

  %\clef bass %alto
  \clef \clefVThree

  \compressFullBarRests
  \bassRiffs
  }
}}   %*********************************

four = \transpose \originpitchfou \targetpitch {\new Voice { 
  \global
  \relative c {
  \set Staff.instrumentName = #"V4 "
  \set Staff.midiInstrument = \midiInstrFou
  \transposition \originpitchfou % for MIDI files? to be verified

  \clef bass 

  \compressFullBarRests
  R1*8 |
  R1*8 |
  \bassRiffI
  \bassRiffI
  \bassRiffII
  \bassRiffIII
  \bassRiffIII
  \bassRiffII
  \bassRiffIV
  \bassRiffI
  \bassRiffI
  \bassRiffII
  \bassRiffIII
  \bassRiffIII
  \bassRiffIV
  \bassRiffII
  \bassRiffI
  \bassRiffI
  \bassRiffII
  \bassRiffIII
  \bassRiffIII
  \bassRiffIII
}}}   %**********************************

percuUp = \drummode {
  \repeat unfold 8 {
    \repeat unfold 4 {
      wbh4. wbh4. wbh4 |
      r4 wbh4. wbh4.
    }
  }
}
percuDown = \drummode {
  \repeat unfold 8 {
    \repeat unfold 4 {
      mar4 mar8 mar mar4 mar8 mar |
      mar4 mar8 mar mar4 mar8 mar |
    }
  }
}


percus =  {
  \global
  \set Staff.instrumentName = #"VPercu "
  \set Staff.midiInstrument = "synth drum"

\compressFullBarRests
<<
  \new DrumVoice {\voiceOne \percuUp }
  \new DrumVoice {\voiceTwo \percuDown }
>>

\bar "|."}   %**********************************

musicPieceOne = {
  <<
    \tag #'score \tag #'vpercu \new DrumStaff { << \globalStyle \structure \percus>> }
    \tag #'score \tag #'v1 \new Staff { << \globalStyle \structure \one >> }
    \tag #'score \tag #'v2 \new Staff { << \globalStyle \structure \two>> }
    \tag #'score \tag #'v3 \new Staff { << \globalStyle \structure \three>> }
    \tag #'score \tag #'v4 \new Staff { << \globalStyle \structure \four>> }
  >>
}


%%% Local Variables:
%%% LilyPond-master-file: "hymnForHer_windQuartet_scoreAndParts.ly"
%%% End: 
% -*- master: hymnForHer_windQuartet_scoreAndParts.ly;
% -*- output: hymnForHer_windQuartet_scoreAndParts-score.pdf