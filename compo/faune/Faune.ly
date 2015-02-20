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
  % \key d \minor 

  \time 12/8 
  
  \tempo 4. = 60 

  \skip 2*57 
  \bar "||"
  \tempo 4 = 120
  
  \time 4/4 
  \skip 1*50 
  \bar "||"
  \time 12/8 
  
  \tempo 4. = 60 
  
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
  | % 5
  g e f g4.~ g8 f8 e d bes d 
  | % 7
  c4. fis g a 
  | % 8
  bes2.~ bes8 c8 d c16 bes a8 g 
  | % 9
  a bes c8~ c bes8 a bes c d~ d8. c16 bes8 
  | % 8
  c4. e d fis 
  | % 9
  g2.~ g8 f8 g a g f 
  | % 10
  g2.~ g8 f8 e d bes d 
  | % 11
  c4. r16 c a' f g8 r16 c, a' f g8 r16 c, a' f g8 
  | % 12
  r16 bes a g f8 r16 a g f e8 r16 g f e d8 r16 c d e f8 
  | % 13
  e2. fis 
  | % 14
  g bes 
  | % 15
  b8 a g f ees des ees f g a b des 
  | % 16
  c1. 
  | % 17
  r16 e, c d c8 bes4 g8 e'8. c16 c8 c16 f16~ f4 % *5 
  | % 18
  e2.~ e4. f4.~ |
  f4. g2. f4.
  | % 24
  e4 r2. |
  R1 |
  e4 des2.~ | 
  des2 des8 c bes r8 | 
  | % 23
  r2 e4 f4~ |
  f2 e8 f bes r8 
  | % 24
  e,1~ |
  e1 |
  g4 r8 e8~ e2~ |
  e2 r2 | %*9 r4*946/480 | 
  e16 e des e f bes c bes aes g aes g f e f e 
  | % 27
  cis16 cis d e f8 r16 cis d e f8 r4 
  | % 28
  e16 e d cis d cis bes8~ bes2~ |
  bes2. des4 
  | 
  c1~ |
  c2 des16 e g bes r4 |
  e,16 e des 
  e f bes c bes aes g aes g f e f e 
  | % 31
  cis cis d e f8 r16 cis d e f8 r4 
  | % 32
  e16 e d cis d cis bes8~ bes2~ |
  bes2. des4 |
  c1~ | 
  c2 r2 |
  des1 |
  des8 c g r8 r2 |
  r4 bes4 \times 2/3 {aes8 g aes} \times 2/3 {g des' c } | 
  \times 2/3 {des8 c f} \times 2/3 {e f e} \times 2/3 {des c aes} \times 2/3 {g des' c} 
  | % 37
  e1 
  | % 38
  e4 e \times 2/3 {e4 e e } |
  f1 ~ |
  f2. aes4 
  | % 40
  e4. c g4~ |
  g2. e'4 |
  f4. des g4~|
  g8 aes4. \times 2/3 {g8 f e} \times 2/3 {des c des} |  
  c1 |
  r2. r8 e8 
  | % 44
  f e f e des c des aes |
  g aes b c des e g f 
  | % 45
  e4. c g4~ |
  g2. e'4 |
  f4. des aes4~ |
  aes8 bes4. \times 2/3 {aes4 g f} 
  | % 48
  e1~| 
  e1 |
  R1*6 |
  r1. |% r2*15 
  g2. ~ g8 f8 g a8. g16 f8 |
  g e f g4.~ g8 f8 e d bes d |
  c4. f g aes |
  bes2. ~bes8 c8 d c16 bes a8 g |
  a8 bes c8~ c8 bes8 a bes c d8~ d8. c16 bes8 |
  | % 59
  c4. bes g fis |
  e2. fis |
  g2. bes |
  c1. 

\bar "|." }}}   %*********************************

two = \transpose \originpitch \targetpitchtwo {\new Voice { 
  \key d \minor
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
  c16 c a' f g8 r16 c, a' f g8 r16 c, a' f g8 r16 bes a bes c8 
  | % 10
  r16 c, a' f g8 r16 c, e f g8 r16 bes a f g8 r16 d bes d c8 
  | % 11
  r8 g'4~ g4.~ g8 f8 g a8. g16 f8 
  | % 12
  g4.~ g8 f8 e d f e aes g f 
  | % 13
  c'2. des 
  | % 14
  e fis 
  | % 15
  r16 <a,, bes' >16 <a bes' >16 <a bes' >16 <a bes' >8 r16 <a bes' >16 
  <a bes' >16 <a bes' >16 <a bes' >8 r16 <a bes' >16 <a bes' >16 
  <a bes' >16 <a bes' >8 r16 <a bes' >16 <a bes' >16 <a bes' >16 
  <a bes' >8 
  | % 16
  c d e fis g a b a g fis e d 
  | % 17
  c4. fis g a 
  | % 18
  bes2.~ bes8 c8 d c16 bes a8 g 
  | % 19
  a bes c8~ c8 bes8 a bes c d8~ d8. c16 bes8 
  | % 20
  c4 r2. |
  R1 |
  r4 bes4 c2~ | 
  c2 bes8 g e r8 |
  e'4 des2.~|
  des2 bes8 des e r8 
  | % 24
  g,1~ |
  g1 | 
  bes4 r8 g8~ g2~ |
  g2 r2 |
  g16 g f g aes des e des c bes c bes aes g aes g 
  | % 27
  e e f g aes8 r16 e f g aes g f e f e 
  | % 28
  r4 g16 g f e f e des8~ des4~ |
  des2. f4 |
  e1~ |
  e2 f16 g bes c r4 |
  g16 g f g aes des e des c bes c bes aes g aes g 
  | % 31
  e e f g aes8 r16 e f g aes g f e f e 
  | % 32
  r4 g16 g f e f e des8~ des4~ |
  des2. f4 | 
  e1~ |
  e2 r2 |
  des4. e f4~|
  f4. e8 f e c r8 
  | % 36
  des4. e f4~ |
  f4. e8 f e g r8 
  | % 37
  g4 g8 g4 g g8~ |
  g8 g8 g4 f e |
  f f8 f4 f f8~ |
  f8 f8 f4 g aes 
  | % 40
  g g8 g4 g g8~ |
  g8 g8 g4 f e 
  | % 41
  f f8 f4 f f8~ |
  f8 f8 f4 g aes |
  g g8 g4 g g8~ |
  g8 g8 g4 f e 
  | % 44
  f f8 f4 f f8~ |
  f8 f8 f4 g aes |
  | % 45
  g g8 g4 g g8~ |
  g8 g8 g4 f e |
  f f8 f4 f f8~ |
  f8 f8 f4 g aes 
  | % 48
  g2. g4~|
  g4. g4. g4 |
  g1 
  | % 50
  R1*5 |
  c,4 c8 c4 c8 c4 c8 c4 c8
  | % 54
  c16 bes c e f g bes c bes g f e des c bes a g f e f g bes e f 
  | % 55
  g1. |
  c,8 des e f g aes bes aes g f ees des 
  | % 57
  c2.~ c8 d8 c bes c d 
  | % 58
  c g' c,8~ c8 c'8 c, bes c a bes d g 
  | % 59
  c, d e fis g a b a g fis e d 
  | % 60
  c2. des |
  c f |
  e1. 

\bar "|." }}}   %*********************************

three = \transpose \originpitch \targetpitchthr {\new Voice { 
  \key d \minor
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
  f8 e d8~ d e8 f d e fis g bes a 
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
  g'2. bes 
  | % 14
  c bes 
  | % 15
  ees,8 des b a g f g a b des ees f 
  | % 16
  r16 e d c bes8 c4 g8 e'8. c16 c8 c16 bes16~ bes4
  | % 17
  g4 g8 g4 g8 g4 g8 g4 g8 
  | % 18
  r16 g a bes c8 c16 bes a bes g8 r16 g c e f8 r16 g, e' f g8 
  | % 19
  r16 g f e c8 c4 c8 c4 c8 c4 aes8 
  | % 20
  g4 g8 g4 g g8~ 
  g8 g8 g4 g g 
  | % 21
  g g8 g4 g g8~ |
  g8 g8 g4 f aes |
  g g8 g4 g g8~ |
  g8 g8 g4 g g 
  | % 24
  g g8 g4 g g8~ |
  g8 g8 g4 f aes 
  | % 25
  g g8 g4 g g8~ |
  g8 g8 g4 f aes |
  g g8 g4 g g8~ |
  g8 g8 g4 f aes 
  | % 28
  g g8 g4 g g8~ |
  g8 g8 g4 f aes 
  | % 29
  g g8 g4 g g8~ |
  g8 g8 g4 f aes |
  g g8 g4 g g8~ |
  g8 g8 g4 f aes 
  | % 32
  g g8 g4 g g8~ |
  g8 g8 g4 f aes 
  | % 33
  g g8 g4 g g8~ |
  g8 g8 g4 g g |
  f4. g aes4~ |
  aes4. g8 aes g e r8 
  | % 36
  f4. g aes4~ |
  aes4. g8 aes g bes r8 
  | % 37
  c4 c8 c4 c c8~ |
  c8 c8 c4 c c |
  des des8 des4 des des8~ |
  des8 des8 des4 des des 
  | % 40
  c c8 c4 c c8~ |
  c8 c8 c4 c c 
  | % 41
  des des8 des4 des des8~ |
  des8 des8 des4 des des |
  c c8 c4 c c8~ |
  c8 c8 c4 c c 
  | % 44
  des des8 des4 des des8~ |
  des8 des8 des4 des des 
  | % 45
  c c8 c4 c c8~ |
  c8 c8 c4 c c |
  des des8 des4 des des8~ |
  des8 des8 des4 
  des des 
  | % 48
  c2. c4~ |
  c4. c4. bes4 |
  g2. g4~ |
  g4. g4. g4 |
  R1*4 |
  g1. |
  g |
  g16 aes f aes g f e f g f e des f e g f bes g c bes bes aes aes g 
  | % 56
  g4 g8 g4 g8 g4 g8 g4 g8 
  | % 57
  g2.~ g8 f8 g e f g 
  | % 58
  f e d8~ d e8 f d e fis g bes a 
  | % 59
  g4 g8 g4 g8 g4 g8 g4 g8 
  | % 60
  g2. bes |
  g g |
  g1. 

\bar "|." }}}   %*********************************

four = \transpose \originpitch \targetpitchfou {\new Voice { 
  \key d \minor
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
  c2. bes 
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
  r16 e d c bes8 c4 g8 e'8. c16 c8 c16 e f16 g bes des, 
  | % 20
  c4 c8 c4 c c8~ | c8 c8 c4 des bes |
  | % 22
  c4 c8 c4 c c8~ | c8 c8 c4 des bes | c c8 c4 c c8~ | c8 c8 c4 des bes 
  | % 26
  c c8 c4 c c8~ | c8 c8 c4 des bes |
  | % 25
  c c8 c4 c c8~ | c8 c8 c4 des bes | c c8 c4 c c8~ | c8 c8 c4 des bes 
  | % 28
  c c8 c4 c c8~ | c8 c8 c4 des bes 
  | % 29
  c c8 c4 c c8~ | c8 c8 c4 des bes c c8 c4 c c8~ | c8 c8 c4 des bes 
  | % 32
  c c8 c4 c c8~ | c8 c8 c4 des bes 
  | % 33
  c c8 c4 c c8~ | c8 c8 c4 des bes | 
  bes1 |
  des8 c e r8 r2 |
  r4 bes4 \times 2/3 {aes8 g aes} \times 2/3 {g8 des' c} |
  \times 2/3 {des c f} \times 2/3 {e8 f e}  \times 2/3 {des c aes} \times 2/3 {g des' c} 
  | % 37
  c1 
  | % 38
  R1*3 |
  g'4. e c4~ | 
  c2. c4 |
  bes4. f' e4~ |
  e8 g4. \times 2/3 {f4 e des} |
  e1 |
  r2. r8 d,8 
  | % 44
  ees e f fis g aes a bes | 
  b c des d ees e f fis 
  | % 45
  g4. e c4~ |
  c2. c4 |
  bes4. f' e4~ |
  e8 g4. \times 2/3 {f4 e des}
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
  c8 des16 bes c8 c g' c,~ c8 des16 bes c8 f16 ees ees des des c 
  | % 57
  c4 c8 c4 c8 c bes bes c c bes 
  | % 58
  c8. c16 c8 c g c8~ c8 bes16 a c8 d c g 
  | % 59
  c g c~ c bes8 c~ c d8 c b c d 
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
% -*- master: Faune_scoreAndParts.ly;
