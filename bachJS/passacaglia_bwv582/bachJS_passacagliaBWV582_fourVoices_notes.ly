%%%%% piece.ly
%%%%% (This is the global definitions file)

\version "2.16.0"

\header{
  title = "Title"
	composer = "Someone"
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
  s1^\markup{\circle 1} \breathe |
  s1 |
  s1 \breathe |
  s1
  \bar "||"
}

global = {
  \time 2/2
  \tempo 2 = 90
  \key d \minor 
}

one = \transpose \originpitch \targetpitchone {\new Voice { 
  \global
  \relative c''{
  \set Staff.instrumentName = #"V1 "
  \set Staff.midiInstrument = \midiInstrOne
  \transposition c' % for MIDI files? to be verified

\compressFullBarRests
R1*4

\bar "|." }}}   %*********************************

two = \transpose \originpitch \targetpitchtwo {\new Voice { 
  \global
  \relative c'{
  \set Staff.instrumentName = #"V2 "
  \set Staff.midiInstrument = \midiInstrTwo
  \transposition c' % for MIDI files? to be verified

\compressFullBarRests
R1*4

\bar "|." }}}   %*********************************

three = \transpose \originpitch \targetpitchthr {\new Voice { 
  \global
  \relative c' {
  \set Staff.instrumentName = #"V3 "
  \set Staff.midiInstrument = \midiInstrThr
  \transposition c' % for MIDI files? to be verified

  %\clef bass %alto
  \clef \clefVThree

\compressFullBarRests
R1*4

\bar "|." }}}   %*********************************

four = \transpose \originpitch \targetpitchfou {\new Voice { 
  \global
  \relative c' {
  \set Staff.instrumentName = #"V4 "
  \set Staff.midiInstrument = \midiInstrFou
  \transposition c' % for MIDI files? to be verified

  \clef bass 

\compressFullBarRests
R1*4

\bar "|."}}}   %**********************************

musicPieceOne = {
  <<
    \tag #'score \tag #'v1 \new Staff { << \globalStyle \structure \one >> }
    \tag #'score \tag #'v2 \new Staff { << \globalStyle \structure \two>> }
    \tag #'score \tag #'v3 \new Staff { << \globalStyle \structure \three>> }
    \tag #'score \tag #'v4 \new Staff { << \globalStyle \structure \four>> }
  >>
}


%%% Local Variables:
%%% LilyPond-master-file: "oboeQuartet_scoreAndParts.ly"
%%% End: 
