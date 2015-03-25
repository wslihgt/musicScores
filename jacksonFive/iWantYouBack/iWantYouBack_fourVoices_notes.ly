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
  s1^\markup{Intro} | %\breathe |
  s1 * 6 |
  s1 \breathe |
  \bar "||"
  s1^\markup{Couplet} |
  s1 * 7 |
  s1^\markup{Refrain} |
  s1 * 7 |
  s1^\markup{"I want you back" Break}
  s1 * 2 |
  \time 2/4 
  s2^\markup{D.C. ad morandum} |
  \bar "|."
}

chordSeq = \chordmode {
  \repeat unfold 3 { % intro - couplet - refrain
    \repeat unfold 2 {
      aes1 |
      des |
      f4:m aes:5/c des8.:maj7 aes16:6 s4 |
      bes:m7 ees8.:7 aes16 s4 s4| 
    }
  }
  aes1 | 
  aes1 | 
  aes1 | 
  aes2 | 
}

global = {
  \time 4/4
  \tempo 4 = 90
  \key aes \major 
}


bassRiffI = \relative c { 
  \repeat unfold 3 {
    \repeat unfold 2 {
      aes4 r r8. b16 c ees f des~ |
      des4 r4 r16 bes16 c des r d ees e |
      f4 c des8. aes16~ aes4 |
      bes4 ees8. aes,16~ aes16 \breathe bes16 c des r16 bes des ees |
    }
  }
  aes4 ees8 aes r16 aes aes aes aes4 |
  aes4 ees8 aes r16 aes aes aes aes4 |
  aes4 ees8 aes r16 aes aes aes aes4 |
  r2 
}

guitarRiffI = \relative c {
  
}


bassRiffs = {
  \bassRiffI
}

bassRiffsOttava = \transpose \originpitch \originpitchOttava {
    \bassRiffs
  }


\addQuote "bassLineOtta" {\bassRiffsOttava}

melody = \relative c' {
  ees16 f8 aes16~ aes bes8 bes16~ bes f8 f16~ f8. ees16 |
  ees16 f8 aes16~ aes bes8 c16~ c4. c8 |
  ees16 c8 c16~ c16 bes8 c16~ c16 aes8 f16~ f8 f8 |
  aes8 f es16 aes8 f16~ f ees8. r8 ees8 |
  ees8 f aes bes16 bes~bes f8 f16~ f8 ees |
  ees8 f aes16 bes8 c16~c4 r4 |
  ees8 c c bes16 c~ c aes8 aes16~ aes8. f16 |
  aes8 f aes16 aes8. ees4 r4 |
  ees' c16 bes8. aes16 bes8 c16~ c aes8 bes16~ |
  bes4. aes8 des16 des c c bes8 aes |
  c4 c c c |
  c4. r16 c16~ c aes bes8 aes4 |
  ees' c16 bes8 aes16~ aes bes8 c16~ c8. aes16 |
  bes8 aes16 f~ f4 r4 r8 aes |
  c4 c c c |
  c aes16 bes8 aes16 r4 r8. f16~ |
  f16 aes8 bes16~ bes f8. r4 r8. des'16~ |
  des c8 aes16~ aes aes8. r4 r8. f16~  |
  f16 aes8 bes16~ bes f8. r4 r8. des'16~  |
  des c8 bes16~ bes aes8. 
}

backingVox = \relative c'' {
  s1 * 4|
  r8. <ees aes c>16 r16 ees f <c ees aes> r2 |
  r8. <des aes' c>16 r16 ees f <des f aes> r2 |
  
}

backingVoxTwo = \relative c' {
  s1 * 4 |
  \repeat unfold 3 {
    r4 <ees bes' des>8 <ees aes c>4. r4 |
    r4 <ees aes c>8 <des aes' bes>4. r4 |
    <ees f aes>4 <ees aes c> <f aes c> <f aes c> |
    <f aes bes> <ees g bes> <c ees aes> r4 
  }
  r4 <ees bes' des>8 <ees aes c>4. r4 |
  r4 <ees aes c>8 <des aes' bes>4. r4 |
  <ees f aes>4 <ees aes c> <f aes c> <f aes c> |
  <f aes bes> <ees g bes>16 r8 
  <c ees aes>16~ <c ees aes> <f aes bes> <ees g bes>8 <c ees aes>4|
  r4 <ees bes' des>8 <ees aes c>4. r4 |
  r4 <ees aes c>8 <des aes' bes>4. r4 |
  <ees f aes>4 <ees aes c> <f aes c> <f aes c> |
  <f aes bes> <ees g bes>8. <c ees aes>16 r16 aes aes aes aes4 |
  r2 r16 aes aes aes aes4 |
  r2 r16 aes aes aes aes4 |
  r2 r16 aes aes aes aes4 |
  r2  |
}

one = \transpose \originpitchone \targetpitch {\new Voice { 
  \global
  \relative c''{
  \set Staff.instrumentName = #"V1 "
  \set Staff.midiInstrument = \midiInstrOne
  \transposition \originpitchone % for MIDI files? to be verified
  {
  <<
    {\new ChordNames {\chordSeq}}
    {
    \compressFullBarRests
    R1 * 8
    \melody
    }
  >>
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
  \backingVoxTwo
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

musicPieceOne = {
  <<
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
%%% LilyPond-master-file: "iWantYouBack_windQuartet_scoreAndParts.ly"
%%% End: 
% -*- master: iWantYouBack_windQuartet_scoreAndParts.ly;
% -*- output: iWantYouBack_windQuartet_scoreAndParts-score.pdf