%%%%% piece.ly
%%%%% (This is the global definitions file)

\version "2.16.0"

\header{
  title = "Sonate in g-moll, Adagio"
	composer = "Joh. Seb. Bach"
}

\include "bachJS_sonataGmoll_allegro_notes.ly"
\include "bachJS_sonataGmoll_adagio_notes.ly"
\include "bachJS_sonataGmoll_allegro2_notes.ly"

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

global= {
  \accidentalStyle "modern-cautionary"

  \time 9/8
  \key ees \major
  \tempo 4. = 60
  
}

one = \transpose \originpitch \targetpitchone {\new Voice { 
  \relative c''{
  \set Staff.instrumentName = #"V1 "
  \set Staff.midiInstrument = \midiInstrOne

  \compressFullBarRests

  \oneAdagio
  
  \bar "||"

}}}   %*********************************

two = \transpose \originpitch \targetpitchtwo {\new Voice { 
  \relative c'{
  \set Staff.instrumentName = #"V2 "
  \set Staff.midiInstrument = \midiInstrTwo

  \compressFullBarRests
  
  \twoAdagio
  
  \bar "||"

}}}   %*********************************

three = \transpose \originpitch \targetpitchthr {\new Voice { 
  \relative c' {
  \set Staff.instrumentName = #"V3 "
  \set Staff.midiInstrument = \midiInstrThr
  %\clef bass %alto
  \clef \clefVThree

  \compressFullBarRests
    
  \threeAdagio
  
  \bar "||"

}}}   %*********************************

four = \transpose \originpitch \targetpitchfou {\new Voice { 
  \relative c' {
  \set Staff.instrumentName = #"V4 "
  \set Staff.midiInstrument = \midiInstrFou
  \clef bass 

  \compressFullBarRests
  
  \fourAdagio
  
  \bar "||"

}}}   %**********************************

music = {
  <<
    \tag #'score \tag #'v1 \new Staff { << \global \one >> }
    \tag #'score \tag #'v2 \tag #'acc \new Staff { << \global \two>> }
    \tag #'score \tag #'v3 \tag #'acc \new Staff { << \global \three>> }
    \tag #'score \tag #'v4 \tag #'acc \new Staff { << \global \four>> }
  >>
}


%%% Local Variables:
%%% LilyPond-master-file: "bachJS_sonataGmoll_adagio_oboeQuartet_scoreAndParts.ly"
%%% End: 
