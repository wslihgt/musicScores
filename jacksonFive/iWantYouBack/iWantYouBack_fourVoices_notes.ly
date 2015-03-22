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
  \tempo 4 = 90
  \key aes \major 
}


bassRiffI = \relative c { 
  \repeat unfold 4 {
    aes4 r r8. b16 c ees f des~ |
    des4 r4 r16 bes16 c des r d ees e |
    f4 c des8. aes16~ aes4 |
    bes4 ees8. aes,16~ aes16 \breathe bes16 c des r16 bes des ees |
  }
}

guitarRiffI = \relative c {
  
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
  ees4 c16 bes8 aes16~ aes bes8 c16~ c  aes8 bes16~ bes4  
}

one = \transpose \originpitchone \targetpitch {\new Voice { 
  \global
  \relative c''{
  \set Staff.instrumentName = #"V1 "
  \set Staff.midiInstrument = \midiInstrOne
  \transposition \originpitchone % for MIDI files? to be verified
  {
  \compressFullBarRests
  R1 * 8
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
  R1 * 8
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