%%%%% piece.ly
%%%%% (This is the global definitions file)

\version "2.18.2"

\header{
  title = "I Want You Back"
	composer = "Jackson Five"
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
  % \bar "||"
  \bar "|."
}

global = {
  \time 4/4
  \tempo 4 = 180
  \key g \minor 
}


bassRiffI = \relative c { 
  <<
  {\new ChordNames {\chordmode {g1:m | d2:m7dim5}}}
  {
    \repeat unfold 2 {
      g4 g8 g bes4 bes8 c8~ |
      c8 bes8 \appoggiatura cis8 d4 f8 cis c bes |
      g4 g8 g bes4 bes8 c8~ |
      c8 bes8 \appoggiatura cis8 d4 f4 r4 |
    }
  }
  >>
}


bassRiffs = {
  \bassRiffI
  \bassRiffI
}

bassRiffsOttava = \transpose \originpitch \originpitchOttava {
    \bassRiffs
  }


\addQuote "bassLineOtta" {\bassRiffsOttava}

melody = \relative c'' {
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
  \cueDuring "bassLineOtta" #UP
  {
    R1 * 80
  }
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
  \cueDuring "bassLineOtta" #UP
  {
    R1 * 80
  }
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

  \clef \clefVFour

  \compressFullBarRests
  \bassRiffs
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


percus = {
  \global
  \set Staff.instrumentName = #"VPercu "
  \set Staff.midiInstrument = "synth drum"

  \compressFullBarRests
  <<	
    \new DrumVoice {\voiceOne \percuUp }
    \new DrumVoice {\voiceTwo \percuDown }
  >>
}   %**********************************

musicPieceOne = {
  <<
    \tag #'score \tag #'vpercu \new DrumStaff {
      << \globalStyle \structure \percus>> }
    \tag #'score \tag #'v1 \new Staff { 
      << \globalStyle \structure \one >> }
    \tag #'score \tag #'v2 \new Staff { 
      << \globalStyle \structure \two>> }
    \tag #'score \tag #'v3 \new Staff { 
      << \globalStyle \structure \three>> }
    \tag #'score \tag #'v4 \new Staff { 
      << \globalStyle \structure \four>> }
  >>
}


%%% Local Variables:
%%% LilyPond-master-file: "hymnForHer_windQuartet_scoreAndParts.ly"
%%% End: 
% -*- master: hymnForHer_windQuartet_scoreAndParts.ly;
% -*- output: hymnForHer_windQuartet_scoreAndParts-score.pdf