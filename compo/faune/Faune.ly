%%%%% piece.ly
%%%%% (This is the global definitions file)

\version "2.16.0"

\header{
  title="Faune"
  composer="Jean-Louis Durrieu"
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

global= {
  \key d \minor 

  \time 12/8 
  
  \tempo 4 = 60 

  \skip 2*57 
  \bar "||"
  \tempo 4 = 160 
  
  \time 4/4 
  \skip 1*50 
  \bar "||"
  \time 12/8 
  
  \tempo 4 = 60 
  
  \accidentalStyle "modern-cautionary"

}

one = \transpose \originpitch \targetpitchone {\new Voice { 
  \key d \minor
  \relative c''{
  \set Staff.instrumentName = #"V1 "
  \set Staff.midiInstrument = \midiInstrOne

\compressFullBarRests


\bar "|." }}}   %*********************************

two = \transpose \originpitch \targetpitchtwo {\new Voice { 
  \relative c'{
  \set Staff.instrumentName = #"V2 "
  \set Staff.midiInstrument = \midiInstrTwo

\compressFullBarRests


\bar "|." }}}   %*********************************

three = \transpose \originpitch \targetpitchthr {\new Voice { 
  \relative c' {
  \set Staff.instrumentName = #"V3 "
  \set Staff.midiInstrument = \midiInstrThr
  %\clef bass %alto
  \clef \clefVThree

\compressFullBarRests


\bar "|." }}}   %*********************************

four = \transpose \originpitch \targetpitchfou {\new Voice { 
  \relative c' {
  \set Staff.instrumentName = #"V4 "
  \set Staff.midiInstrument = \midiInstrFou
  \clef bass 

\compressFullBarRests

  c,1. 
  | % 2
  c 
  | % 3
  c 
  | % 4
  c 
  | % 5
  c 
  | % 6
  c 
  | % 7
  c 
  | % 8
  c 
  | % 9
  c 
  | % 10
  c4 c8 c4 c8 c4 c8 c4 c8 
  | % 11
  c4 c8 c4 c8 c4 c8 c4 c8 
  | % 12
  c4 c8 c4 c8 c4 c8 c4 c8 
  | % 13
  c2. ais 
  | % 14
  g fis 
  | % 15
  g b 
  | % 16
  c1. 
  | % 17
  c8 d e fis g a b a g fis e d 
  | % 18
  c1. 
  | % 19
  r16 e d c ais8 c4 g8 e'8. c16 c8 c16 e f16 g ais cis, 
  | % 20
  c4 c8 c4 c c8~ | c8 c8 c4 cis bes |
  | % 22
  c4 c8 c4 c c8~ | c8 c8 c4 cis ais | c c8 c4 c c8~ | c8 c8 c4 cis ais 
  | % 26
  c c8 c4 c c8~ | c8 c8 c4 cis ais |
  | % 25
  c c8 c4 c c8~ | c8 c8 c4 cis ais | c c8 c4 c c8~ | c8 c8 c4 cis ais 
  | % 28
  c c8 c4 c c8~ | c8 c8 c4 cis ais 
  | % 29
  c c8 c4 c c8~ | c8 c8 c4 cis ais c c8 c4 c c8~ | c8 c8 c4 cis ais 
  | % 32
  c c8 c4 c c8~ | c8 c8 c4 cis ais 
  | % 33
  c c8 c4 c c8~ | c8 c8 c4 cis ais | 
  ais1 |
  cis8 c e r8 r2 |
  r4 ais,4 \times 2/3 {aes8 g aes} \times 2/3 {g8 des' c} |
  \times 2/3 {des c f} \times 2/3 {e8 f e}  \times 2/3 {des c aes} \times 2/3 {g des' c} 
  | % 37
  c1 
  | % 38
  R1*3 |
  g'4. e c4~ | 
  c2. c4 |
  ais4. f' e4~ |
  e8 g4. \times 2/3 {f4 e cis} |
  e1 |
  r2. r8 d,8 
  | % 44
  dis e f fis g gis a ais | 
  b c cis d dis e f fis 
  | % 45
  g4. e c4~ |
  c2. c4 |
  ais4. f' e4~ |
  e8 g4. \times 2/3 {f4 e cis}
  | % 48
  c1~ |
  c2. c4 |
  c2. c4~ |
  c4. c4. c4 |
  c2. c4~|
  c2 c2 
  | % 52
  c2. c4~ | 
  | % 53
  c2 c2 |
  c1. |
  c4 c8 c4 c8 c4 c8 c4 c8 
  | % 55
  c4 c8 c4 c8 c4 c8 c4 c8 
  | % 56
  c8 cis16 ais c8 c g' c,~ c8 cis16 ais c8 f16 dis dis cis cis c 
  | % 57
  c4 c8 c4 c8 c ais ais c c ais 
  | % 58
  c8. c16 c8 c g c8~ c8 ais16 a c8 d c g 
  | % 59
  c g c~ c ais8 c~ c d8 c b c d 
  | % 60
  c2. fis, |
  e d |
  c1. 

\bar "|."}}}   %**********************************

music = {
  <<
    \tag #'score \tag #'v1 \new Staff { << \global \one >> }
    \tag #'score \tag #'v2 \new Staff { << \global \two>> }
    \tag #'score \tag #'v3 \new Staff { << \global \three>> }
    \tag #'score \tag #'v4 \new Staff { << \global \four>> }
  >>
}

%%% Local Variables:
%%% LilyPond-master-file: "Faune_scoreAndParts.ly"
%%% End: 
