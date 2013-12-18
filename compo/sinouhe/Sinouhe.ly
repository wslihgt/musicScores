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

global= {
  \accidentalStyle "modern-cautionary"
  \time 3/8 
  
  \tempo 4 = 100 

  \skip 4.*78 %*117 

  \bar "||"

  \time 2/4 
  
 
  \tempo 4 = 120 
  \skip 2 * 2

  \bar "||"
  
  \time 3/4 
  \skip 2.
  \bar "||"
  
  \time 2/4 
  
  \skip 2*4 
  
  \bar "||"
  
  \time 5/4 
  \skip 4*15 
  \bar "||"
  \time 4/4 
  \skip 1*9 
  \bar "||"
  \time 5/4 
}

one = \transpose \originpitch \targetpitchone {\new Voice { 
  \key d \minor
  \relative c''{
  \set Staff.instrumentName = #"V1 "
  \set Staff.midiInstrument = \midiInstrOne

\compressFullBarRests

  r16 e, e g g bes |
  bes des des f f aes |
  aes8. g16 aes8 |
  g4. |
  r16 e, e g g bes |
  bes des des f f aes |
  bes8. aes16 bes8
  | % 3
  c4. |
  r16 bes bes aes aes f |
  f des des bes bes aes 
  | % 4
  aes4. |
  g |
  r16 bes' aes f aes f |
  des f des bes aes8 
  | % 5
  bes4. |
  c |
  r4. | r4. | r4. | r4. | r4. | 
  r4 des8~ |
  des4.~ |
  des4.~|
  des4. |
  c8 r4 |
  r4. |
  r4. | 
  r4. |
  r4 f8~|
  f4.~|
  f4. |
  r8 des r8 |
  e r8 f 
  | % 11
  g16 f e des c bes |
  g bes c des e f |
  g f e des c bes 
  | % 12
  g bes c des e f |
  g8 r4 |
  r8 \times 2/3 {f16 e d } e8
  | % 13
  r4. |
  c8 bes aes |
  g4.~|
  g4.~ |
  g4.|
  g4 f8~|
  f8 aes4 |
  g4.~|
  g4.~|
  g4.~|
  g4. |
  g8. aes16 bes8 |
  c \times 2/3 {des16 e f} \times 2/3 {g16 aes bes} |
  c4. |
  bes |
  aes |
  bes |
  c8. c16 c8~|
  c16 c16 c8. c16 |
  c8 r4|
  r4. | 
  c8. c16 c8~|
  c16 des16 
  bes8. des16  
  | % 20
  c8 c16 des c bes |
  c8 c16 des c bes |
  c des c bes c des |
  ees8 ees e |
  des bes ges |
  a f des |
  c16 des d ees e f 
  | % 22
  e8 f g |
  f g aes |
  bes g e |
  f r4
  | % 23
  f8 r4 |
  f, r8 |
  f4 r8
  | % 24
  f4. |
  r4 r4 |
  r4 r4 |
  r4 \appoggiatura ces'16 bes4 a16 bes d ges |
  r2 | r2 | r2 | r2 | 
  r2. r2 |
  r2. r2|
  r2. r2 |
  r2 r8 g8 a bes |
  | % 31
  c fis, g des c fis c' fis 
  | % 32
  des c r8 g des' c e, ees |
  fis,16 g c ees des'2 fis,,16 g c ees 
  | % 33
  des' c fis,8~ fis16 e16 ees des c8 r8 r4
  | % 34
  e16 ees d des e ees des c r16 e ees d e ees a8 
  | % 35
  e16 ees a8 e16 ees e a16~ a e16 ees e a4~ |
  a bes16 a g fis
  g fis e ees r8 ees16 e |
  ees16 e fis g a g fis e 
  \times 4/6 {ees16 des16 c16 bes16 a g}
  \times 4/6 {a16 bes16 a16 bes a  bes }
  | % 37
  r4. g'4. a2 |
  ges4. g a4 e8 ees |
  des1 \times 4/6 {ees16 ges g a  bes  des}|
  ees4. e8 bes4. a8 ees e 
  | % 41
  ges4. g8 a r8 bes r8 r4
  | % 42
  r4 r4 r4 ees,2 
  | % 44
  r4 r4 g2. |
  dis8 r8 dis r8 r4 dis8 r8 r4 |
  dis8 e bes' a 
  e dis fis c g' r8 |
  ees r8 r1

\bar "|." }}}   %*********************************

two = \transpose \originpitch \targetpitchtwo {\new Voice { 
  \key d \minor
  \relative c'{
  \set Staff.instrumentName = #"V2 "
  \set Staff.midiInstrument = \midiInstrTwo

\compressFullBarRests

  r16 c c e e g |
  g bes bes des des f |
  f8. e16 f8 |
  e4. |
  r16 c, c e e g |
  g bes bes des des f |
  aes8. f16 aes8
  | % 3
  g4. |
  r16 aes aes f f des |
  des bes bes aes aes f 
  | % 4
  f4. |
  e |
  r16 aes' f des f des |
  bes des bes aes f8 
  | % 5
  aes4. |
  g |
  r4. |
  r4. | r4. | r4. | r4. |
  r4 c8~|
  c4.~ |
  c4.~ |
  c4. | 
  c8 r4 |
  r4. | r4. | r4. | 
  r4 des8~ |
  des4.~ |
  des4. |  
  r8 c r8 |
  c r8 c 
  | % 11
  bes4. |
  c |
  bes |
  aes |
  g4 \times 2/3 {aes16 g f } |
  e4 r8 |
  r4. | 
  r4. |
  r16 c16 c e e r16 |
  r16 c16 c e e g
  | % 14
  bes c bes aes g f |
  e4. |
  f |
  r16 c c e e r16 |
  r16 c16 c e e g |
  bes c bes aes g f 
  | % 16
  e4. |
  e8. f16 des8 |
  e \times 2/3 {f 16  g  aes } \times 2/3 { bes c  des} |
  e4. |
  f |
  ees |
  f |
  e8. e16 e8~|
  e16 e16 e8. e16 |
  e8 r4 |
  r4. |
  e8. e16 e8~|
  e16 f16 d8. f16 |
  e8 r4
  | % 20
  c8 r4 |
  c8 bes r8 |
  r4 bes8 
  | % 21
  f'8 f16 ees f ges |
  f8 f16 ees des c |
  bes a ges a bes b 
  | % 22
  g8 f des |
  aes' f des |
  bes' g4 |
  aes8 r4
  | % 23
  aes8 r4 |
  c, r8 |
  c4 r8
  | % 24
  d4. |
  r2 |
  r2 | 
  r4 \appoggiatura aes'16 g4 fis16 g a bes |
  r2 | r2 | r2 | r2 |
  r8 \appoggiatura e16 dis8 r8 \appoggiatura e16 dis8 r8 \appoggiatura e16 dis8 
  r16 dis e dis cis dis e8 
  | % 28
  r8 \appoggiatura e16 dis8 r8 \appoggiatura e16 dis8 r8 \appoggiatura e16 dis8 
  r8 fis e4 
  | % 29
  dis1 \times 4/5 {c16 cis dis e fis} |
  g8 r8 r2. |
  r2 a,2 
  | % 32
  g bes |
  a a |
  a g 
  | % 34
  a bes |
  c des 
  | % 36
  e ees |
  c des |
  r8 \appoggiatura e16 dis8 r8 \appoggiatura e16 dis8 
  r8 \appoggiatura e16 dis8 r16 dis e dis r16 dis e dis |
  r8 \appoggiatura e16 dis8 r16 dis e dis e4 dis16 e dis e16~ e16 e16 dis e 
  | % 39
  dis1 \times 4/6 {c16 cis dis e f fis } |
  g8 r8 r4 r2. |
  dis4. e8 bes a g r8 r4
  | % 42
  r4 a2. c4 |
  r2. e2 |
  a,8 r8 a r r4 a8 r8 r4 | 
  r2. r2| 
  a8 r8 r1

\bar "|." }}}   %*********************************

three = \transpose \originpitch \targetpitchthr {\new Voice { 
  \key d \minor
  \relative c {
  \set Staff.instrumentName = #"V3 "
  \set Staff.midiInstrument = \midiInstrThr
  %\clef bass %alto
  \clef \clefVThree

\compressFullBarRests

  r16 g' g c c e |
  e g g bes bes des |
  des8. c16 des8 |
  c4. |
  r16 g, g c c e |
  e g g bes bes des |
  f8. des16 f8
  | % 3
  e4. |
  r16 f f des des bes |
  bes aes aes f f des 
  | % 4
  des4. |
  c |
  r16 f' des bes des bes |
  aes bes aes f des8 
  | % 5
  f4. |
  e |
  r4. | 
  r4. | 
  r4. | 
  r4. | 
  r4. | 
  r4 bes'8~ |
  bes4.~  |
  bes4.~ |
  bes4. |
  g8 r4 |
  r4. |
  r4. |
  r4. |
  r4 aes8~ |
  aes4.~ |
  aes4.|
  r8 aes r8 | 
  g r8 e 
  | % 11
  des8. e16 f e |
  g8. e16 f e |
  des8. e16 f e 
  | % 12
  g8. r8. |
  r4. |
  r4 c,8 
  | % 13
  \times 2/3 {des16  c  b}  c8 bes |
  c des ees |
  r16 g, g c c r16 |
  r16 g16  g c c des 
  | % 14
  des ees des c bes aes |
  g4. |
  f |
  r16 g g c c r16|
  r16 g16 g c c des |
  des ees des c bes aes 
  | % 16
  g4. |
  g8. aes16 f8 |
  g8. f' |
  g4. |
  g4 f8 |
  ees4 c8 |
  f4 ges8 
  | % 18
  g8. g16 g8~|
  g16 g16 g8. g16 |
  g8 g16 aes g f 
  | % 19
  g f ees f des fis |
  g8. g16 g8~ |
  g16 f16 f8. f16 |
  g8 r4 | 
  | % 20
  g8 r4 
  g8 f r8 |
  r4 g8 
  | % 21
  f r4 |
  c8 r4 |
  c16 des d8 r8 
  | % 22
  c' c16 des c bes |
  aes8 aes16 bes aes g |
  f aes g f ees des |
  c8 r4 
  | % 23
  c8 r4 |
  aes r8 |
  aes4 r8
  | % 24
  aes4. |
  r4 r4 |
  r4 r4 |
  r2. |
  r4 \appoggiatura aes16 g4~
  | % 26
  g4 r4 |
  r2 | 
  r2 |
  r8 \appoggiatura a'16 bes8 r8 \appoggiatura a16 bes8 
  r8 \appoggiatura a16 bes8 r16 bes ees, f ges aes a8 
  | % 28
  r8 \appoggiatura a16 bes8 r8 \appoggiatura a16 bes8 r8 \appoggiatura a16
  bes8 r8 g a4 
  | % 29
  bes1 \times 4/6 {c16 bes a g ges e} |
  ees8 r8 r2. |
  r2 c2 
  | % 32
  des d |
  ees e |
  f bes,
  | % 34
  c des |
  ees e 
  | % 36
  a bes |
  ges g |
  r8 \appoggiatura a16 bes8 r8 \appoggiatura a16 bes8 
  r8 \appoggiatura a16 bes8 r16 bes ees, f r16 ees bes' f 
  | % 38
  r8 \appoggiatura a16 bes8 r16 f ees bes' a4 
  bes16 f ees a16~ a bes16 a g
  | % 39
  bes1 \times 4/6 {c16 bes a g ges e} |
  ees8 r8 r4 r2. |
  a4. g8 ges e ees r8 r4 
  | % 42
  r4 r4 ges2. 
  | % 43
  r4 ges1 |
  ges8 r8 ges r8 r4 ges8 r8 r4 |
  r2. r2 |
  ges8 r8 r1

\bar "|." }}}   %*********************************

four = \transpose \originpitch \targetpitchfou {\new Voice { 
  \key d \minor
  \relative c {
  \set Staff.instrumentName = #"V4 "
  \set Staff.midiInstrument = \midiInstrFou
  \clef bass 

\compressFullBarRests

  c'4.~ |
  c~ | 
  c8 des8 bes |
  c4 g8 | 
  c,8. c16 c8 |
  c g' e |
  des bes des  
  | % 3
  c4. | 
  des'4.~|
  des~|
  des8 des8 bes |
  c4. |
  des,4.~ |
  des~|
  des8 des8 bes |
  c4. |
  r4 g'8 
  | % 6
  c,4. |
  g'4 r8 |
  bes4 r8 
  | % 7
  aes4 g8 |
  c,4. |
  g'4 r8 |
  e4 r8 |
  f16 aes g f e des |
  c4. |
  g'4 r8
  | % 9
  bes4 r8 |
  aes4 g,8 |
  c4 r8 
  | % 10
  g' bes aes | 
  f aes g |
  des f ees |
  e g c, 
  | % 11
  des g bes |
  e bes g |
  des g bes
  | % 12
  e bes g |
  c,4 r8 |
  g' r4 
  | % 13
  bes8 r4 |
  aes8 r4 |
  c,4.~|
  c~ |
  c~ |
  c4 bes8~|
  bes8 des4 |
  c4.~|
  c~|
  c~|
  c| 
  c8. c16 c8 |
  c4. |
  c |
  des |
  bes |
  des |
  c8. c16 c8~ |
  c16 c16 c8. c16 |
  c8 r4|
  r4. |
  c8. c16 c8~|
  c16 c16 c8. c16 |
  c8 r4 
  | % 20
  c8 r4 |
  c8 des r | 
  | % 21
  r4 des8 | 
  f r4 |
  f8 r4 |
  ees8 r8 des 
  | % 22
  c r4 |
  des8 r4 |
  ees8 r8 e |
  f c16 des ees e |
  f8 c16 des ees e |
  f4 r8 |
  f4 r8
  | % 24
  b,4. |
  c8 g' c, g' |
  c, g' c, g' 
  | % 25
  r2. |
  r2 |
  r4 ges16 e ees des |
  c8 g' c, g' 
  | % 27
  c, g' bes, g' |
  c, g' c, g' c, g' bes, g' c, g' 
  | % 28
  c, g' c, g' c, g' bes, g' c, g' 
  | % 29
  c, g' c, g' c, g' bes,4 c 
  | % 30
  r4 bes c des 
  | % 31
  ees2. ees4 
  | % 32
  e2 c |
  ees2. bes4 |
  a2 des 
  | % 34
  c2. ees4 
  | % 35
  e2. des4 
  | % 36
  c2. ees4 |
  e1 |
  c8 g' c, g' c, g' bes, g' c, g' 
  | % 38
  c, g' c, g' c, g' bes, g' c, g' 
  | % 39
  c, g' c, g' c, g' r8 g bes, g' 
  | % 40
  c, g' c bes, aes' des ges, e ees des 
  | % 41
  c des c des r8 c des r8 r4
  | % 42
  c1~c4 |
  bes1~bes4 |
  c8 r8 c r r4 c8 r8 r4 |
  g'8 ges c, des ges g e ees des4 
  c8 r8 r1

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
%%% LilyPond-master-file: "Sinouhe_scoreAndParts.ly"
%%% End: 
