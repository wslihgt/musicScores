%%%%% piece.ly
%%%%% (This is the global definitions file)

\version "2.16.0"

\header{
  title = "Contrapunctus IX, fuga a 4 voci, alla duodecima"
	composer = "J.S. Bach"
}

%originpitch = c' %c' %bes'% f % c'
%targetpitchone = c'
%targetpitchtwo = c'
%targetpitchthr = c'
%targetpitchfou = c'

global= {
  \time 2/2
  % \key d \minor
  \tempo 2 = 70
  \accidentalStyle "modern-cautionary"
}

one = \transpose \originpitch \targetpitchone {\new Voice { 
  \key d \minor
  \relative c''{
  \set Staff.instrumentName = #"V1 "
  \set Staff.midiInstrument = \midiInstrOne

\compressFullBarRests
%1 
R1*7
%8
r4 a a'2~ | a4 gis8 fis e d c b | a gis a b c a b c | d cis d e f d e f | f4 e r8 e8 d e |
%13 
f8 a g f g f e d | c f e d e d c bes | a d c bes c bes a gis | a4 e' cis2 | d2 r4 c4~ | c4 bes8 d g4 e4 |
%19
cis2 r4 cis | d f e16 f g8 bes,4 | a d cis16 d e8 g,4 | f2 r4 c'4 | b2 r4 gis4 | a1~ |
%25 
a1 | b8 c d b c2~ | c2 bes2 | a g | f8 a g f g f e d |
%30 
g bes a g a g f e | a4 c f2~ | f2 e2~ | e2 d2~ | d2 cis |
%35
d1 | a'1 | f | d | cis | 
% 40 
d2 e | f1~ | f4 g f e | d1~ | d8 d c bes c bes a g |
%45 
a8 c' bes a bes a g f | e f g4 r4 g | g f r8 c bes c | a4 d c b | c bes8 a bes2 | 
%50
a4 f'4 d2~ | d8 c bes a bes a g f | e f g a bes2~ | bes8 a b c d2~ | d8 c d e f2~ |
%55
f8 f e d e d c b | c d c bes c bes a g | a4 cis d e | a,8 bes a g a g f e | f c' bes a bes a g f |
%60 
e4 e' r8 e d cis | d4 a d c | bes a g f | e8 d e f g e a4~ | a8 f bes4~ bes8 g c bes | 
%65 
a8 d c bes c a c4~ | c8 d c bes c bes a g | f1~ |f8 a g f g f e d | e1~ |
%70
e8 g' f e f e d c | d1~ | d8 f e d e d c b | c e d c d c b a | b4 r4 r2 |
%75
r4 e,4 e'2~ | e4 dis r dis | e8 f e d e d c b | a4 a' d, f~ | f8 e d c d c b a | 
%80
gis2 a4 b | c1~ | c4 a d c | b1~ | b4 g c bes |
%85 
a1 | e' | c8 a' g f g f e d | cis e d cis d cis b a | d4 a a'2~ |
%90
a4 g8 f e d cis b | a g a b c a b cis | d cis d e f d e f | f4 e r8 e8 d e | f a g f g f e d | 
%95 
c8 f e d e d c bes | a d c bes c bes a g | f bes a g a g f e | d1~ | d8 d' c bes c bes a g | a4 r r2 |
%101
r2 bes2~ | bes4 b c cis | r8 d c bes c4 d | bes g'2 f8 ees | d4 ees f r| R1*6 |
%112
r8 d, e fis g fis g a |
%113
bes g a b c b c d | ees4 d c bes | a8 g a bes c a b cis | d4 g,2 f4~ | f8 e d2 g4~ |g8 bes a g a g f e |
%119
f e f a g f e d | e2 r4 cis'4 | d2~ d8 c bes a | g1~ | g | f2 r4 bes |
%125
a2 r4 cis | d8 c bes a bes a g fis | g1~ | g8 bes a g a g f e | f4. g8 e4. d8 | d1\fermata 

\bar "|." }}}   %*********************************

two = \transpose \originpitch \targetpitchtwo {\new Voice { 
  \key d \minor
  \relative c'{
  \set Staff.instrumentName = #"V2 "
  \set Staff.midiInstrument = \midiInstrTwo

\compressFullBarRests
%1
r4 d d'2~ | d4 cis8 b a g f e | d cis d e f d e f | g fis g a bes g a bes |
%5
{bes4 a} r8 a g a | bes d c bes c bes a g | f bes a g a g f e | d g f e f e d c |
%9
b4 e gis e | c8 d c b a4 g' | f8 g f e d4 d' | gis, a8 b c4 b | 
%13
a2 r4 gis4 | a2 r4 e4 | f2 r4 f | e2 r4 g~ | 
%17
g4 f8 g a2 | d,2 r4 g | e f8 g f4 e | d r r e |
%21
f r r cis | d2 r4 e | f d r8 f e d | c b c d e c d e |
%25
f4 r4 r2 | R1*4
%30
R1 | r2 r4 a | bes8 d c bes c bes a g | f a g f g f e d | e bes' a g a g f e |
%35
d c' bes a g f e g | f4 e r4 cis' | d a d c~ | c bes8 a g4 f | e f8 g f4 e |
%40
d4 g2 bes4 | a c f, a8 g | a e' d cis d c bes a | bes4 c bes a | g2 r2 |
%45
r4 c, c'2~ | c4 bes8 a g f e d | c bes c d e c d e | f e f g a f g a | a4 g r8 g f g |
%50
a c bes a bes a g f | e a g f g f e d | c2 r8 c d e | f2~ f8 e fis gis | a2~ a8 g a b | 
%55
c4 e, fis gis | a c, d e | f g f cis | cis d r2 | d1 | 
%60
a' | f | d | cis | d2 e |
%65
f1~ | f4 g f e | d8 e d cis d c b a | b1~ | b8 d c b c b a gis |
%70
a4 r4 r2 | r8 c' b a b a gis fis | gis4 r4 r2 | r4 e e'2~ | e4 d8 c b a gis fis |
%75
e8 d e fis gis e fis gis | a gis a b c a b c | c4 b r8 b a b | c e d c d c b a | g c b a b a gis fis | 
%80
e4 f e2~ | e4 e a g | fis r4 r2 | r4 d4 g f | e r4 r2 |
%85
r8 e' d c d c b a | b c b a b a gis fis | e1 | a1~ | a4 d8 e f4 e8 d | 
%90
e4 r4 r2 | r2 r8 c, d e | f4 r4 r8 f g a | bes a g bes a2~ | a4 bes2 c8 bes | 
%95
a4 f g e | f r4 r4 cis | d r4 r2 | r1 | r4 d d'2~| d4 c8 bes a g fis e |
%101
d cis d e fis d e fis | g fis g a bes g a bes | bes4 a r8 a g a | bes d c bes c bes a g | f bes aes g aes g f ees | d2 ees4 f | 
%107
bes,4 b c d | ees1~ | ees8 g f ees f ees d c | a'1~ | a8 bes a g bes a g fis | g4 r4 r2 |
%113
R1 | r8 b, c d ees c d e | f1~ | f2 e2 | d4. c8 bes2 | a4 r4 r2 |
%119
d1 | a' | f | d | cis | d2 e2 | 
%125
f1~ | f4 g f ees | d2 r4 d4 | e cis d2~ | d2 cis | a1\fermata

\bar "|." }}}   %*********************************

three = \transpose \originpitch \targetpitchthr {\new Voice { 
  \key d \minor
  \relative c' {
  \set Staff.instrumentName = #"V3 "
  \set Staff.midiInstrument = \midiInstrThr
  %\clef bass %alto
  \clef \clefVThree

\compressFullBarRests
%1 
R1*7
%8
R1*7
%15
R1*7
%22
r4 a4 a'2~| a4 gis8 fis e d c b | a gis a b c a b c |
%25 
d8 cis d e f d e f | f4 e r8 e d e | f a g f g f e d | c f e d e d cis b | a4 bes8 a bes2~ |
%30 
bes4 c8 bes c2~ | c4 r4 r2 | R1*3 | 
%35
r4 d,4 d'2~ | d4 cis8 b a g f e | d cis d e f d e f | g fis g a bes g a bes | bes4 a r8 a g a |
% 40 
bes8 d c bes c bes a g | f bes a g a g f e | d2 r8 d e f | g a g f g f e d | e f e d e c d e |
%45 
f1 | c' | a | f | e |
%50
f2 g | a1~ | a4 bes a g | f d' c b | a f' e d | 
%55
c2 b | a g | f8 bes a g a g f e | f g f e f e d cis | d2 r2 |
%60 
R1*13
%73
a'1 | e' | 
%75
c | a | gis | a2 b | c1~ | 
%80
c4 d c b | a8  gis a b c a b c | d cis d e fis d e fis | g, fis g a b g a b | c b c d e c d e | 
%85 
f,4 e fis d | g fis gis e | a bes8 a bes4 g~ | g8 g' f e f e d cis | f e, f g a g a b | 
%90
cis b cis d cis d e4~| e d a2~| a4 f bes d | g, bes e8 g f e | d4 r4 r2 | 
%95 
r4 a' bes2 | c4 r r g | a e f a | bes8 c bes a bes a g fis | g1 | d' |
%101
bes | g | fis | g2 a | bes1~ | bes4 c bes aes | 
%112
g1~ | g4 g a bes | c1~ | c8 ees d c d c bes a | bes2 c4 a | bes c bes a |
%113
g2 a4 b | c r r2 | R1 | r8 c8 bes a g bes a g | f4 r r2 | R1 | 
%119
r4 d4 d'2~ | d4 cis8 b a g f e | d cis d e f d e f | g fis g a bes g a bes | bes4 a r8 a g a | bes d c bes c bes a g |
%125
f bes a g a g f e | d2 r4 a'4 | bes2 r4 bes4 | cis,4 g' f bes | a2. g4 | fis1\fermata 


\bar "|." }}}   %*********************************

four = \transpose \originpitch \targetpitchfou {\new Voice { 
  \key d \minor
  \relative c' {
  \set Staff.instrumentName = #"V4 "
  \set Staff.midiInstrument = \midiInstrFou
  \clef bass

\compressFullBarRests
%1
R1*7 | R1*7 |
%15
r4 d, d'2~ | d4 cis8 b a g f e | d cis d e f d e f | g fis g a bes g a bes | 
%22
bes4 a r8 a g a | bes d c bes c bes a g | f bes a  g a g f e | d g f e f e d c | d4 b e2 | a, r2 |
%25 
r8 g' f e d c b a | gis4. fis16 gis a8 g f e | d4 d' e c | f b, cis a | d2 r4 d4 |
%30 
e2 r4 c | f8 a g f g f e d | g bes a g a g f e | a2 r4 bes | g e a a, |
%35
bes4 f' bes2 | a2 r2 | R1*8 |
%45 
R1*8 | R1*6 |
r4 d,,4 d'2~ |
%60 
d4 cis8 b a g f e | d cis d e f d e f | g fis g a bes g a bes | bes4 a r8 a g a | bes d c bes c bes a g | 
%65
f8 bes a g a g f e | d2 r2 | r4 d4 e f | g g' e g | c, c, d e | 
%70
f4 f' d f | b, d gis, b | e, e' fis gis | a1~ | a8 gis a fis gis4 b |
%75
b a r4 e | f1 | e1 | R1 | R1 |
%80
r8 d c b c b a gis | a4 r4 r2 | R1*7 
d1 |
%90
a' | f | d | cis | d2 e | 
%95 
f1~ | f4 g f e | d1~ | d8 ees d c d c bes a | bes2 r4 bes' | fis a fis d |
%101
g2 d | ees4 f e ees | d2 r8 c bes a | g4 r4 r2 | r4 ees' d g | f8 aes g f g f ees d |
%107
ees8 f ees d ees d c b | c d c bes c bes a g | a bes a g a g fis e | fis2 r4 fis' | g ees c d | g r4 r2 |
%113
r4 f' ees d | c r4 r2 | r8 e f g a f g e | bes4 r4 r2 | r8 g f e d f e d | cis4 e cis a | 
%119
d4 c bes2 | a2 r4 a | bes1~ | bes2 r8 e f g | a, e' a g f4 e | d2 r4 cis4 | 
%125
d2 r4 a | bes2 r4 c4 | bes8 c bes a bes a g f | e4 e' f g | a g a a, | d1\fermata 


\bar "|."}}}   %**********************************

music = {
  <<
    \tag #'score \tag #'v1 \new Staff { << \global \one >> }
    \tag #'score \tag #'v2 \new Staff { << \global \two>> }
    \tag #'score \tag #'v3 \new Staff { << \global \three>> }
    \tag #'score \tag #'v4 \new Staff { << \global \four>> }
  >>
}

