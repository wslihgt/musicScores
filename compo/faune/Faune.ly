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

  R1*3 |
  g2.~ g8 f8 g a8. g16 f8 
  | % 4
  g e f g4.~ g8 f8 e d ais d 
  | % 5
  c4. fis g a 
  | % 6
  ais2.~ ais8 c8 d c16 ais a8 g 
  | % 7
  a ais c8~ c ais8 a ais c d~ d8. c16 ais8 
  | % 8
  c4. e d fis 
  | % 9
  g2.~ g8 f8 g a g f 
  | % 10
  g2.~ g8 f8 e d ais d 
  | % 11
  c4. r16 c a' f g8 r16 c, a' f g8 r16 c, a' f g8 
  | % 12
  r16 ais a g f8 r16 a g f e8 r16 g f e d8 r16 c d e f8 
  | % 13
  e2. fis 
  | % 14
  g ais 
  | % 15
  b8 a g f dis cis dis f g a b cis 
  | % 16
  c1. 
  | % 17
  r16 e, c d c8 ais4 g8 e'8. c16 c8 c16 f16*5 
  | % 18
  e2.~ e4. f4.~ |
  f4. g2. f4.
  | % 20
  e4 r2. |
  R1 |
  e4 cis2.~ | 
  cis2 cis8 c ais r8 | 
  | % 23
  r2 e'4 f4~ |
  f2 e8 f ais r8 
  | % 24
  e1~ |
  e1 |
  g4 r8 e8~ e2~ |
  e2 r2 | %*9 r4*946/480 | 
  e16 e cis e f ais c ais gis g gis g f e f e 
  | % 27
  cis16 cis d e f8 r16 cis d e f8 r4 
  | % 28
  e16 e d cis d cis ais8~ ais2~ |
  ais2. cis4 
  | 
  c1~ |
  c2 cis16 e g ais r4 |
  e16 e cis 
  e f ais c ais gis g gis g f e f e 
  | % 31
  cis cis d e f8 r16 cis d e f8 r4 
  | % 32
  e16 e d cis d cis ais8~ ais2~ |
  ais2. cis4 |
  c1~ | 
  c2 r2 |
  cis1 |
  cis8 c g r8 r2 |
  r4 ais4 \times 2/3 {gis8 g gis} \times 2/3 {g cis c } | 
  \times 2/3 {cis8 c f} \times 2/3 {e f e} \times 2/3 {cis c gis} \times 2/3 {g cis c} 
  | % 37
  e1 
  | % 38
  e4 e \times 2/3 {e4 e e } |
  f1 ~ |
  f2. gis4 
  | % 40
  e4. c g4~ |
  g2. e'4 |
  f4. cis g'4~|
  g8 gis4. \times 2/3 {g8 f e} \times 2/3 {cis c cis} |  
  c1 |
  r2. r8 e8 
  | % 44
  f e f e cis c cis gis |
  g gis b c cis e g f 
  | % 45
  e4. c g4~ |
  g2. e'4 |
  f4. cis gis4~ |
  gis8 ais4. \times 2/3 {gis4 g f} 
  | % 48
  e1~| 
  e1 |
  R1*6 |
  r1. |% r2*15 
  g2. ~ g8 f8 g a8. g16 f8 |
  g e f g4.~ g8 f8 e d ais d |
  c4. f g gis |
  ais2. ~ais8 c8 d c16 ais a8 g |
  a8 ais c8~ c8 ais8 a ais c d8~ d8. c16 ais8 |
  | % 59
  c4. ais g fis |
  e2. fis |
  g2. ais |
  c1. 

\bar "|." }}}   %*********************************

two = \transpose \originpitch \targetpitchtwo {\new Voice { 
  \relative c'{
  \set Staff.instrumentName = #"V2 "
  \set Staff.midiInstrument = \midiInstrTwo

\compressFullBarRests

  r1. 
  | % 2
  c4 c8 c4 c8 c4 c8 c4 c8 
  | % 3
  c4 c8 c4 c8 c4 c8 c4 c8 
  | % 4
  c4 c8 c4 c8 c4 c8 c4 c8 
  | % 5
  c d e fis g a b a g fis e d 
  | % 6
  c4 c8 c4 c8 c4 c8 c4 c8 
  | % 7
  c4 c8 c4 c8 c4 c8 c4 c8 
  | % 8
  c d e fis g a b a g fis e d 
  | % 9
  c16 c a' f g8 r16 c, a' f g8 r16 c, a' f g8 r16 ais a ais c8 
  | % 10
  r16 c, a' f g8 r16 c, e f g8 r16 ais a f g8 r16 d ais d c8 
  | % 11
  r8 g'4~ g4.~ g8 f8 g a8. g16 f8 
  | % 12
  g4.~ g8 f8 e d f e gis g f 
  | % 13
  c'2. cis 
  | % 14
  e fis 
  | % 15
  r16 <a,, ais' >16 <a ais' >16 <a ais' >16 <a ais' >8 r16 <a ais' >16 
  <a ais' >16 <a ais' >16 <a ais' >8 r16 <a ais' >16 <a ais' >16 
  <a ais' >16 <a ais' >8 r16 <a ais' >16 <a ais' >16 <a ais' >16 
  <a ais' >8 
  | % 16
  c d e fis g a b a g fis e d 
  | % 17
  c4. fis g a 
  | % 18
  ais2.~ ais8 c8 d c16 ais a8 g 
  | % 19
  a ais c8~ c8 ais8 a ais c d8~ d8. c16 ais8 
  | % 20
  c4 r2. |
  R1 |
  r4 ais4 c2~ | 
  c2 ais8 g e r8 |
  e'4 cis2.~|
  cis2 ais8 cis e r8 
  | % 24
  g,1~ |
  g1 | 
  ais4 r8 g8~ g2~ |
  g2 r2 |
  g16 g f g gis cis e cis c ais c ais gis g gis g 
  | % 27
  e e f g gis8 r16 e f g gis g f e f e 
  | % 28
  r4 g16 g f e f e cis8~ cis4~ |
  cis2. f4 |
  e1~ |
  e2 f16 g ais c r4 |
  g16 g f g gis cis e cis c ais c ais gis g gis g 
  | % 31
  e e f g gis8 r16 e f g gis g f e f e 
  | % 32
  r4 g16 g f e f e cis8~ cis4 |
  cis2. f4 | 
  e1~ |
  e2 r2 |
  cis4. e f4~|
  f4. e8 f e c r8 
  | % 36
  cis4. e f4~ |
  f4. e8 f e g r8 
  | % 37
  g4 g8 g4 g g8~ |
  g8 g8 g4 f e |
  f f8 f4 f f8~ |
  f8 f8 f4 g gis 
  | % 40
  g g8 g4 g g8~ |
  g8 g8 g4 f e 
  | % 41
  f f8 f4 f f8~ |
  f8 f8 f4 g gis |
  g g8 g4 g g8~ |
  g8 g8 g4 f e 
  | % 44
  f f8 f4 f f8~ |
  f8 f8 f4 g gis |
  | % 45
  g g8 g4 g g8~ |
  g8 g8 g4 f e |
  f f8 f4 f f8~ |
  f8 f8 f4 g gis 
  | % 48
  g2. g4~|
  g4. g4. g4 |
  g1 
  | % 50
  R1*5 |
  c,4 c8 c4 c8 c4 c8 c4 c8
  | % 54
  c16 ais c e f g ais c ais g f e cis c ais a g f e f g ais e' f 
  | % 55
  g1. |
  c,8 cis e f g gis ais gis g f dis cis 
  | % 57
  c2.~ c8 d8 c ais c d 
  | % 58
  c g' c,8~ c8 c'8 c, ais c a ais d g 
  | % 59
  c, d e fis g a b a g fis e d 
  | % 60
  c2. cis |
  c f |
  e1. 

\bar "|." }}}   %*********************************

three = \transpose \originpitch \targetpitchthr {\new Voice { 
  \relative c' {
  \set Staff.instrumentName = #"V3 "
  \set Staff.midiInstrument = \midiInstrThr
  %\clef bass %alto
  \clef \clefVThree

\compressFullBarRests
  g
  | % 2
  g 
  | % 3
  g 
  | % 4
  g 
  | % 5
  g4 g8 g4 g8 g4 g8 g4 g8 
  | % 6
  g1. 
  | % 7
  f8 e d8~ d e8 f d e fis g ais a 
  | % 8
  g4 g8 g4 g8 g4 g8 g4 g8 
  | % 9
  g4 g8 g4 g8 g4 g8 g4 g8 
  | % 10
  r8 e f g4.~ g2.
  | % 11
  r8 e f g4.~ g2. 
  | % 12
  r8 e f g4.~ g2. 
  | % 13
  g'2. ais 
  | % 14
  c ais 
  | % 15
  dis,8 cis b a g f g a b cis dis f 
  | % 16
  r16 e d c ais8 c4 g8 e'8. c16 c8 c16 ais16~ ais4
  | % 17
  g4 g8 g4 g8 g4 g8 g4 g8 
  | % 18
  r16 g a ais c8 c16 ais a ais g8 r16 g c e f8 r16 g, e' f g8 
  | % 19
  r16 g f e c8 c4 c8 c4 c8 c4 gis8 
  | % 20
  g4 g8 g4 g g8~ 
  g8 g8 g4 g g 
  | % 21
  g g8 g4 g g8~ |
  g8 g8 g4 f gis |
  g g8 g4 g g8~ |
  g8 g8 g4 g g 
  | % 24
  g g8 g4 g g8~ |
  g8 g8 g4 f gis 
  | % 25
  g g8 g4 g g8~ |
  g8 g8 g4 f gis |
  g g8 g4 g g8~ |
  g8 g8 g4 f gis 
  | % 28
  g g8 g4 g g8~ |
  g8 g8 g4 f gis 
  | % 29
  g g8 g4 g g8~ |
  g8 g8 g4 f gis |
  g g8 g4 g g8~ |
  g8 g8 g4 f gis 
  | % 32
  g g8 g4 g g8~ |
  g8 g8 g4 f gis 
  | % 33
  g g8 g4 g g8~ |
  g8 g8 g4 g g |
  f4. g gis4~ |
  gis4. g8 gis g e r8 
  | % 36
  f4. g gis4~ |
  gis4. g8 gis g ais r8 
  | % 37
  c4 c8 c4 c c8~ |
  c8 c8 c4 c c |
  cis cis8 cis4 cis cis8~ |
  cis8 cis8 cis4 cis cis 
  | % 40
  c c8 c4 c c8~ |
  c8 c8 c4 c c 
  | % 41
  cis cis8 cis4 cis cis8~ |
  cis8 cis8 cis4 cis cis |
  c c8 c4 c c8~ |
  c8 c8 c4 c c 
  | % 44
  cis cis8 cis4 cis cis8~ |
  cis8 cis8 cis4 cis cis 
  | % 45
  c c8 c4 c c8~ |
  c8 c8 c4 c c |
  cis cis8 cis4 cis cis8~ |
  cis8 cis8 cis4 
  cis cis 
  | % 48
  c2. c8*5 c4. ais4 g2. g8*5 g4. g4 r1*4 g1. g g16 gis f gis 
  g f e f g f e cis f e g f 
  | % 56
  ais g c ais ais gis gis g g4 g8 g4 g8 g4 
  | % 57
  g8 g4 g8 g8*7 f8 
  | % 58
  g e f g f e d4 e8 f d e 
  | % 59
  fis g ais a g4 g8 g4 g8 g4 
  | % 60
  g8 g4 g8 g2. ais g g g1. 

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
