%%%%% piece.ly
%%%%% (This is the global definitions file)
\version "2.16.0"

\header{
  title = "Contrapunctus XVII, fuga a 3 voci, Rectus"
	composer = "J.S. Bach"
}

%originpitch = c' %c' %bes'% f % c'
%targetpitchone = c'
%targetpitchtwo = c'
%targetpitchthr = c'
%targetpitchfou = c'

global= {
  \time 4/4 %2/2
  % \key d \minor
  \tempo 4 = 120
  \accidentalStyle "modern-cautionary"
}

one = \transpose \originpitch \targetpitchone {\new Voice {
  \key d \minor
  \relative c''{
  \set Staff.midiInstrument = #"oboe"
  \set Staff.instrumentName = #"V1 "

  \partial 4 r4 |
  r1 | 
  r1 | 
  r1 | 
  r1 | 
  r1 | 
  r1 | 
  r1 | 
  r2 r4 d4 |
  a' a, ~  \times 2/3 {a8 b c} \times 2/3 {b c d} |
  \times 2/3 {c d e} d4 ~ \times 2/3 {d8 e f} \times 2/3 {e f g} |
  \times 2/3 {f e d} e4 ~ \times 2/3 {e8 d c} \times 2/3 {d c b} |
  c8. e16 a8. e16 c8. b16 c8. d16 |
  e2 r4 cis4 |
  d4 f8. e16 d4 c'4 |
  bes4 d, r4 b |
  c4 e8. d16 c4 bes' |
  a4. g8 f8. e16 d8. f16 |
  bes,4 bes' g e |
  cis4. d16 e a,8. e'16 f8. g16 |
  a4. g8 \times 2/3 {f8 e d} e8. bes'16 |
  \times 2/3 {a8 g f} \times 2/3 {g cis, e} \times 2/3 {g f e ~} e8. f16 | 
  \times 2/3 {e8 f g} \times 2/3 {f d a} \times 2/3 {b cis d} \times 2/3 {cis d e} |
  d4 f d a |
  bes8. d16 g8. d16 bes8. g16 a8. b16 |
  c4 ees c g |
  a8. c16 f8. c16 a8. f16 g8. a16 |
  %bes4 bes' ~ \times 2/3 {bes8 aes g} \times 2/3 {aes g f } | 
  bes4 bes' ~ \times 2/3 {bes8 aes g} \times 2/3 {aes g f} |
  \times 2/3 {g f ees} f4 ~ \times 2/3 {f8 ees d}  \times 2/3 {ees d c} |
  d4 f d a | 
  bes1 ~ |
  bes1 ~ |
  bes2 r4 bes |
  f f' ~ \times 2/3 {f8 ees d} \times 2/3 {ees d c} |
  \times 2/3 {d c bes} c4 ~ \times 2/3 {c8 bes a} \times 2/3 {bes a g} |
  \times 2/3 {a8 bes c} bes4 ~ \times 2/3 {bes8 c d} \times 2/3 {c d ees} |
  d8. bes16 f8. bes16 d8. ees16 d8. c16 |
  \times 2/3 {bes8 g a} \times 2/3 {bes c d} ees8. d16 c8. ees16 |
  \times 2/3 {d8 ees f     } \times 2/3 {ees g ees} \times 2/3 {c b a} \times 2/3 {b c d} |
  \times 2/3 {c bes a} \times 2/3 {bes g a} \times 2/3 {bes c d} \times 2/3 {ees d c} |
  \times 2/3 {d g, bes} \times 2/3 {d bes d } g8. fis16 g8. a16 |
  bes8. g16 d8. g16 bes8. c16 bes8. a16 |
  g4 e g bes |
  a8. f16 c8. f16 a8. bes16 a8. g16 |
  f4 d f a |
  g d cis r |
  r8 cis16 d e f g a bes4 r |
  \times 2/3 {r8 e, a} \times 2/3 {g f e} \times 2/3 {f e d} \times 2/3 {cis d e}  |
  f4 r4 r bes, |
  \times 2/3 {a8 g f} \times 2/3 {g a f} g16 f e4 f8 |
  e4 r r e' |
  a, r r a |
  bes8. d16 g8. d16 bes8. g16 a8. bes16 |
  e,4 r r b' |
  c8. e16 a8. e16 c8. a16 bes8. c16 |
  f,4 r r c' | 
  d8. f16 bes8. f16 d8. bes16 c8. d16 |
  g,4 r r d' |
  cis r r8 r16 g' f8. e16 |
  bes'2\fermata r4 \times 2/3 {r8 bes cis,} |
  d4 ~ \times 2/3 {d8 e f } e4\trill ~ \times 2/3 {e8 d e} |
  f4 ~ \times 2/3 {f8 g a} g4\trill ~ \times 2/3 {g8 f g} | 
  a1 ~ |
  \times 2/3 {a8 bes c} \times 2/3 {bes g d} \times 2/3 {e fis g} \times 2/3 {fis g a} | 
  \times 2/3 {g f e} \times 2/3 {f e d} e4 r |
  r2 r4 d |
  a a' ~ \times 2/3 {a8 g f} \times 2/3 {g f e} |
  \times 2/3 {f e d} e4 ~ \times 2/3 {e8 d cis} \times 2/3 {d cis b} |
  \times 2/3 {cis d e} d4 ~ \times 2/3 {d8 e f} \times 2/3 {e f g} |
  f8. d16 a8. d16 f8. g16 f8. e16 |
  \times 2/3 {d8 c bes} c4 ~ \times 2/3 {c8 bes a} \times 2/3 {bes c d} |
  a2.\fermata     
 
\bar "|." }}}   %*********************************

two = \transpose \originpitch \targetpitchtwo {\new Voice { 
  \key d \minor
  \relative c'{
  \set Staff.midiInstrument = #"clarinet"
  \set Staff.instrumentName = #"V2 "

  \partial 4  a'4 | 
  d4 d, ~ \times 2/3 {d8 e f} \times 2/3 {e f g} | 
  \times 2/3 {f g a} g4 ~ \times 2/3 {g8 a bes} \times 2/3 {a bes c} |
  \times 2/3 {bes a g} a4 ~ \times 2/3 {a8 g f} \times 2/3 {g f e} |
  f8. a16 d8. a16 f8. e16 f8. g16 | 
  \times 2/3 {a8 e g} \times 2/3 {f e d} cis4 bes' |
  a4 ~ \times 2/3 {a8 g f} g2~ |
  g4 ~ \times 2/3 {g8 f e} f8. d'16 c8. bes16 |
  a2 ~ a8. bes16 a8. g16 |
  f4 r4 r4 f4 |
  \times 2/3 {e8 f g} \times 2/3 {f e g} \times 2/3 {f e d} \times 2/3 {cis d e} |
  d4 r4 r4 f4 |
  e c e a8. b16 |
  c4 a c e |
  d d, r2 |
  r4 g4 bes d |
  c c, r2 | r1 | r1 | r2 r4 d4 |
  a a' ~ \times 2/3 {a8 g f} \times 2/3 {g f e} |
  \times 2/3 {f e d} e4 ~ \times 2/3 {e8 d cis} \times 2/3 {d cis b} |
  \times 2/3 {cis d e} d4 ~ \times 2/3 {d8 e f} \times 2/3 {e f g} |
  f8. d16 a8. d16 f8. g16 f8. e16 |
  d4 e8. fis16 g4 f | 
  ees8. c16 g8. c16 ees8. f16 ees8. d16 |
  c4 d8. e16 f4 ees |
  d8. c16 bes8. c16 d8. ees16 f8. d16 |  
  ees4 ~ \times 2/3 {ees8 d c} \times 2/3 {d c bes} \times 2/3 {c bes a} |
  \times 2/3 {bes bes' c} \times 2/3 {d c bes} f2 ~ |
  \times 2/3 {f8 g aes} \times 2/3 {g f aes} g4 d |
  \times 2/3 {ees8 d c} \times 2/3 {d ees c} d4 g |
  \times 2/3 {f8 bes, d} \times 2/3 {f d f} bes8. e,16 f8. g16 |
  \times 2/3 {a8 bes c} \times 2/3 {bes c d} f,2 ~ |
  f1 ~ |
  f1 ~ |
  f2 r4 d |
  g g, ~ \times 2/3 {g8 a8 bes} \times 2/3 {a bes c} |
  \times 2/3 {bes c d} c4 ~ \times 2/3 {c8 d ees} \times 2/3 {d ees f} |
  \times 2/3 {ees8 d c} d4 ~ \times 2/3 {d8 c bes} \times 2/3 {c8 bes a} | 
  bes8. d16 g8. d16 bes8. a16 bes8. c16 |
  d4 bes d g8. f16 |
  e8. g16 c8. g16 e8. c16 d8. e16 |
  f4 a, c f8. e16 |
  d8. f16 bes8. f16 d8. e16 cis8. d16 |
  e2 r4 bes'4 |
  a4 r4 r8 r16 f'16 \times 2/3 {e8 f g} |
  cis,4 r4 r4 e,4 |
  a, a' ~ \times 2/3 {a8 g f} \times 2/3 {g f e} |
  \times 2/3 {f e d} e4 ~ \times 2/3 {e8 d cis} \times 2/3 {d cis b} |
  \times 2/3 {cis d e} d4 ~ \times 2/3 {d8 e f} \times 2/3 {e f g} |
  f8. d16 a8. d16 f8. g16 f8. e16 |
  d4 bes' g d |
  g8. e16 b8. e16 g8. a16 g8. f16 |
  e4 c' a e |
  a8. f16 c8. f16 a8. bes16 a8. g16 |
  f2 r4 a4 |
  bes8. g16 d8. g16 bes8. c16 bes8. a16 |
  g4 r4 r8 r16 e16 f8. g16 |
  cis,2\fermata r4 e4 |
  \times 2/3 {f8 g a} \times 2/3 {bes g a } \times 2/3 {b a b} \times 2/3 {cis b cis}  |
  \times 2/3 {d f, g} \times 2/3 {a g f} \times 2/3 {e g a} \times 2/3 {bes a g}  | 
  \times 2/3 {f d f} \times 2/3 {a f a} \times 2/3 {d cis b} \times 2/3 {cis d e} |
  d1 ~ |
  d4 ~ \times 2/3 {d8 cis b} cis4 r4 |
  \times 2/3 {r8 d a} \times 2/3 {f a f} \times 2/3 {d f a} \times 2/3 {d cis b} |
  \times 2/3 {cis a e} \times 2/3 {cis d e} \times 2/3 {f e d} e8. cis'16 |
  d4 ~ \times 2/3 {d8 cis b} \times 2/3 {cis d e} \times 2/3 {f e d} | 
  e8. g,16 \times 2/3 {f8 e d} bes'2\trill |
  a4 r4 r8 r16 bes16 a8. g16  |
  \times 2/3 {f8 e d} a'2 \times 2/3 {g8 a bes} | fis2.\fermata 

\bar "|." }}}   %*********************************

three = \transpose \originpitch \targetpitchthr {\new Voice { 
  \key d \minor
  \relative c' {
  \set Staff.midiInstrument = #"bassoon"
  \set Staff.instrumentName = #"V3 "
  \clef bass %alto
 
  \partial 4 r4 |
  r1 |
  r1 |
  r1 |
  r2 r4 d, |
  a a' ~ \times 2/3 {a8 g f} \times 2/3 {g f e} |
  \times 2/3 {f e d} e4 ~ \times 2/3 {e8 d cis} \times 2/3 {d cis b} |
  \times 2/3 {cis d e} d4 ~ \times 2/3 {d8 e f } \times 2/3 {e f g} |
  f8. d16 a8. d16 f8. g16 f8. e16 |
  \times 2/3 {d8 cis b} \times 2/3 {cis d e} f4 gis,4 |
  a r4 r4 a' ~ |
  a4 \times 2/3 {gis8 a fis} gis2\trill |
  a1 ~ |
  a8. e16 c8. e16 a8. bes16 a8. g16 |
  f8. a16 d8. a16 f8. d16 e8. fis16 |
  g8. d16 bes8. d16 g8. a16 g8. f16 |
  e8. g16 c8. g16 e8. c16 d8. e16 |
  f8. g16 f8. e16 d8. e16 f8. d16 |
  g8. a16 g8. f16 e8. f16 g8. e16 |
  a8. bes16 a8. g16 f8. e16 d8. e16 |
  f8. e16 f8. g16 a4 cis, |
  d bes' r4 gis |
  a r r a |
  d, r r d |
  g r r d |
  c r r c |
  f r r c |
  bes r r2 | % g' r r2 |
  r2 r4 f' |
  bes bes, ~ \times 2/3 {bes8 c d} \times 2/3 {c d ees} |
  \times 2/3 {d ees f} ees4 ~ \times 2/3 {ees8 f g} \times 2/3 {f g aes} |
  \times 2/3 {g f ees} f4 ~ \times 2/3 {f8 ees d } \times 2/3 {ees d c} |
  d8. f16 bes8. f16 d8. c16 d8. e16 |
  f4 d a8. bes16 c8. a16 |
  bes4 ~ \times 2/3 {bes8 a g} \times 2/3 {a bes c} \times 2/3 {d c bes} |
  \times 2/3 {c d ees} \times 2/3 {d ees c} \times 2/3 {d c bes} \times 2/3 {a bes c} |
  bes4 d f bes, |
  ees r c r |
  g'1 ~ |
  g1 ~ |
  g1 ~ |
  g2 r4 g |
  c2 r4 g |
  f2 r4 f |
  bes2 r4 f |
  e8. g16 bes8. g16 e8. f16 e8. d16 | 
  cis8 e g e cis8. d16 cis8. b16 |
  a8. cis16 e8. cis16 a8. bes16 a8. g16 |
  \times 2/3 {f8 a d} \times 2/3 {f e d} cis4.\trill b16 cis |
  d4 bes' r gis |
  a8. g16 \times 2/3 {f8 g a} bes8. d,16 \times 2/3 {cis8 d e} |
  d4 f a d, | 
  g r r g |
  g, g' b e, |
  a r r a |
  a, a' c f, |
  bes d bes fis | 
  g bes g d |
  e8. g16 bes8. g16 e8. cis16 d8. e16 |
  g,2\fermata r4 g' |
  \times 2/3 {f8 e d} g4 ~ \times 2/3 {g8 f e} a4 |
  d, r r g |
  d' d, ~ \times 2/3 {d8 e f} \times 2/3 {e f g} |
  \times 2/3 {f g a} g4 ~ \times 2/3 {g8 a bes} \times 2/3 {a bes c} |
  \times 2/3 {bes a g} a4 ~ \times 2/3 {a8 g f} \times 2/3 {g f e} |
  f8. a16 d8. a16 f8. e16 f8. g16 |
  a1 ~ |
  a1 ~ |
  a4 bes g cis, |
  \times 2/3 {d8 a d} \times 2/3 {f d f} a4 a, |
  d ~ \times 2/3 {d8 fis g} \times 2/3 {a bes c} d8. d,16 |
  d2.\fermata 

\bar "|." }}}   %*********************************

music = {
  <<
    \tag #'score \tag #'v1 \new Staff { << \global \one >> }
    \tag #'score \tag #'v2 \new Staff { << \global \two>> }
    \tag #'score \tag #'v3 \new Staff { << \global \three>> }
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
