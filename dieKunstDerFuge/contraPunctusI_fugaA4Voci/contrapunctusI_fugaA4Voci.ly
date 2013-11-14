%%%%% piece.ly
%%%%% (This is the global definitions file)

\version "2.16.0"

\header{
  title = "Contrapunctus I, fuga a 4 voci"
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
  % r1 | r1 | r1 | r1 |
  R1*4
  a2 d | c a | gis a4 b | c2 ~ c8 d c bes | 
  a d, d'2 cis4 | d8 a c4 ~ c8 a bes4~ | bes8 e, a2.~ | a8 c4 b8 c2~ |
  c8 d, c'4 ~ c8 a b4~| b a8 gis a2 | b2 c4 d | g,8 bes a4 ~ a8 bes a g~ |
  g8 e f d bes'2 ~ | bes8 g a4 d2 ~ | d8 b c4 f2 ~ | f8 d e4 a,4 d ~ |
  d8 b c4 f, bes | a2 d,4 g ~ | g8 e f d' e,2~ | e8 d a'2 g4 | 
  a2 r2 | R1*3 %r1 | r1 | r1 |
  a2 e' | c a | gis a4 b | c2 ~ c8 d c bes |
  a4 r4 r4 a4~| a8 c bes a bes a g fis | g4. bes8 e,4. fis8 | 
         g4. e8 cis4. a'8 |
  d,4. f8 e4. c'8 | f,4. a8 g4. e'8 | a,4. c8 b4. g'8 | cis,2 d4 e~ |
  e8 cis d4~ d4. e8 | f  e g4 ~  g8 f e d  | cis a d4 ~ d8 b c4 ~ | c4 bes a r4 |
  % r1 | r1 | r1 | r1 |
  R1*4 
  e'2 a2 | f d | cis d4 e | f2~ f8 g f e | 
  d4. e8 cis4 d8 f | bes,2~ bes8 bes a g | f2 bes | a2. e'4 ~ |
  e8 cis d e f d g4 ~ | g8 e a g f e d cis | d c bes a g2~ | g8 e f d a'2~ |
  a8 fis g bes c2~ | c8 a bes d ees4 d | cis a'~ a8 d, g4 ~ | g8 cis, f4 ~ f8 d e4~ |
  e8 cis d4~ d8 b c4~ | c bes a4. a8 | d f e g f e d4~ | d8 f4 e8 f d e4~ |
  e8 d c b c4. a'8 | g fis g bes cis,4 r4 | r2 d4 r | r2 d~ |
  d~ d8 b cis4 | d4. c8 bes4. a8 | d,2 r8 g a c~ | c bes c ees8 ~ ees d fis a~ | 
  a8 g16 a bes8 cis,8 d2~ | d1 
  

\bar "|." }}}   %*********************************

two = \transpose \originpitch \targetpitchtwo {\new Voice { 
  \key d \minor
  \relative c'{
  \set Staff.instrumentName = #"V2 "
  \set Staff.midiInstrument = \midiInstrTwo

  d2 a' | f d | cis d4 e | f2~f8 g8 f e | 
  d4 e f g | a a,8 b c a f'4~ | f8 b,8 e4~e8 f8 e d | e4 fis g2~ | 
  g4 f e2 | d4. e8 f4. d8 | g4. g8 f e d cis | d4 g2 c,4 | f4. e8 f4. gis,8 |
  e'2. d8 c8 | d f e d c4 r4| %r1 | r1 | 
  %r1 | r1 | r1 | r1 | 
  %r1 |
  R1*7 
  d2 a' | f d | cis d4 e |
  f2~f8 g8 f e | d4 g ~ g8 e f4 | e4 a ~ a8 fis g4 | fis4. d'8 gis,2 |
  a4 r8 a,8 c4 a | d f e d | c a'2 d,4 | e a ~ a8 g f e | d1 ~ |
  d8 d g4 ~ g8 g c,4 ~ | c8 a bes4 a2 ~ | a8 f g4 c2 ~ | c8 a b4 e2 ~ | 
  e8 cis d4 g2 ~ | g8 a bes4 a2 ~ | a2 ~ a8 f g4 | a4. bes8 a4 g4~ |
  g f8 d a'4. g8 | fis d g4 ~ g8 e f4 ~ | f8 d g4 ~ g8 e a4 ~ | 
        a8 f bes4 ~ bes8 g a4 ~ |
  a8 f g2 f8 d | a'2 d2 ~ | d8 cis b cis d a e'4 ~ | e8 a, d4 r8 f, bes4 ~ |
  bes8 e, a4 ~ a8 g f e | d a' d b g e c'4 ~ | c bes a2 | g4. f8 e2 ~ | 
  e4 d8 cis d4 g ~ | g4. f8 e4. e8 | a2. g8 bes | a2 ~ a8 g f e |
  d2. e4 | a, r4 r4 ees' | d2 r4 fis4 | g8 fis g4 r4 bes ~ | 
  bes8 a f' d b4 e8 cis | a4 d8 a bes4. g8 | a4. f8 e4. g8 | 
         fis8 d g4 ~ g8 e f4 ~ |
  f8 d' c4 ~ c4. c8 | bes8 a gis4 a4. e8 | a4 g ~ g4. c8 | a4 g4 ~ g4 r4 |
  r2 a4 r4 | r2 b2 | a2 ~ a4. g8 | fis g a4 ~ a8 g c4 ~ | 
  c8 fis, g bes ees,2 | d4 a bes c | d g,4 ~ g8 bes' a g ~ | g fis e g fis2 

\bar "|." }}}   %*********************************

three = \transpose \originpitch \targetpitchthr {\new Voice { 
  \key d \minor
  \relative c' {
  \set Staff.instrumentName = #"V3 "
  \set Staff.midiInstrument = \midiInstrThr
  %\clef bass %alto
  \clef \clefVThree

  r1 |r1 |r1 |r1 |r1 |r1 |r1 |r1 |r1 |r1 |r1 |r1 |
  a2 d | c a | gis a4 b | c2 ~ c8 d c bes | 
  a2~ a8 f g4 | c2~ c8 a b4 | e2~ e8 cis d4 | 
  %\clef G
  g2~ g8 e f4 | e4. a8 d,4. e8 | 
  %\clef F
  cis4 d8 a b4. c8 | d4 a2.~ | a2 bes | r8 e,8 a4~ a8 bes a g | 
  a4 b c2~ | c8 a bes4 a d4~ | d8 b c4 b e~| e8 a, d4~ d8 d c b | 
  c d e4~ e8 e d c | b2 c4 gis | a8 g fis e fis4 g~ | g8 g f e f e d cis | 
  d4 r4 r2 | r1 | r1 |r1 | r1 | r1 |
  e2 a | f d | cis d4 e | f2~ f8 g f e | d2. a'8 f | bes4. g8 c4. a8 |
  d4 g, c f, | bes e, a2 | e4 a4~ a8 gis fis gis | a4. g8 f e d cis |
  d4 f8 d bes'4 g8 e | a4. f'8 b,4 cis | d b8 g c4 a8 f | bes8 d 
  %\clef G 
  g4~ g8 e f4~ | f8 f e d cis2 |
  %\clef F 
  d8 c bes a g a bes c | d a d4~ d8 b cis4~ | cis8 e a, cis d4 bes8 g | e2 f4 g |
  a2 b4 cis | d r r fis, | g8 a bes4 r c | d2 r8 g,4 f8 |
  e4 r4 r2 | r4 f8 d g4. cis,8 | f4. d8 a'2 | d,4 d'2 a8 f | 
  bes2~ bes8 gis a4 | d2~ d8 b c4 | f2~ f8 d ees4 | d2 e4 r | 
  r2 f4 r | r2 f2~ | f4 e8 d e4 r4 | a,2 d | 
  bes g | fis g4 a | bes2~ bes8 d c bes | a1


\bar "|." }}}   %*********************************

four = \transpose \originpitch \targetpitchfou {\new Voice { 
  \key d \minor
  \relative c' {
  \set Staff.instrumentName = #"V4 "
  \set Staff.midiInstrument = \midiInstrFou
  \clef bass

  r1 |r1 |r1 |r1 |r1 |r1 |r1 |r1 |
  d,2 a' | f d | cis d4 e | f2~ f8 g f e | 
  d2 r2 | r4 a8 b c a f'4~ | f8 b, e4~ e8 f e d | e g fis a g2 | 
  d2. e8 d | e4 f8 e fis4 g8 fis | gis4 a8 gis a4 bes8 a | b4 c8 b cis4 d8 gis, |
  a2~ a8 f g4~ | g8 e f4~ f8 d e4 | d2~ d8 b cis4 | d4. c8 bes2 |
  a4. g8 f g f e d f e d a'4. f8 | bes4. g8 d'4. f8 | a4. a,8 e4 r | 
  r2 e' | a f ~ | f8 f8 e d c d c b | a2 d | 
  cis a | fis g4 a | bes2~ bes8 c bes a | g2 ~ g8 e f4 |
  bes2 ~ bes8 g a4 | d2~ d8 b c4 | f2~ f8 d e4 | a,4. g'8 f e d cis | 
  d4. f,8 bes2 | a1 ~ | a4. bes8 a g a4 | bes4. g8 d'2~ | 
  d4 e2 f4~ | f4. d8 e4. cis8 | d4. b8 cis a d4~ | d8 c b a b2 | 
  a4 r r2 | r1 | r1 | r1 |
  r1 | r1 | r1 | d2 a'2 | 
  f d | cis d4 e | f2~ f8 g f e | d2~ d8 ees d c | 
  bes2~ bes8 c bes a | g2. g4 | a1~ | a1~ | 
  a2. a4 | bes4. g8 d'2~ | d8 bes c4 f2~ | f8 d e4 a2~ | 
  a8 f g4 c2~ | c8 a bes2 r4 | r2 a4 r4 | r2 gis2 |
  a2. a,4 | d1 ~ | d1 ~ | d1 ~ | d1 ~ | d1 ~ 

\bar "|."}}}   %**********************************

music = {
  <<
    \tag #'score \tag #'v1 \new Staff { << \global \one >> }
    \tag #'score \tag #'v2 \new Staff { << \global \two>> }
    \tag #'score \tag #'v3 \new Staff { << \global \three>> }
    \tag #'score \tag #'v4 \new Staff { << \global \four>> }
  >>
}



%{ Uncomment this block when using separate files

%%%%% vlc.ly
%%%%% (This is the Cello part file)

\include "piece.ly"
\score {
  \keepWithTag #'vlc \music
  \layout { }
}

%}
