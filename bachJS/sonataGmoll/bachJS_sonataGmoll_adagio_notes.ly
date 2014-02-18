%%%%% piece.ly
%%%%% (This is the global definitions file)

%\version "2.16.0"

%\header{
%  title = "Sonate in g-moll"
%	composer = "Joh. Seb. Bach"
%}

oneAdagio = {
  ees2.~ ees4.~ |
  ees2.~ ees4.~ |
  ees8 d c bes4. aes8 g aes |
  g4. r r |
  bes'2.~ bes4.~ |
  bes2.~ bes4.~ |
  bes8 a g f4. ees8 d ees |
  d f ees d c bes aes g f |
  g4. r bes'~ |
  bes aes2.~ |
  aes4. g2. |
  f8 aes g f4.~ f8 ees des |
  c des ees8~ ees f ges f16 ees des8 c |
  bes ees ees ees bes c des c bes |
  c4. r r |
  aes'2.~ aes4.~ |
  aes2.~ aes4.~ |
  aes8 g f ees4. des8 c des |
  c4. r r |
  r a'2. |
  bes4. r r |
  r b2. |
  c8 ees, f g2.~ |
  g8 f g aes g f ees d c |
  b g' fis g4 d8 ees4 ees8 |
  d b a b4 b8 c4 c8 |
  b b c d f aes~ aes g f |
  ees d c c4. des |
  c2.~ c8 f ees |
  d2.~ d8 g f |
  ees aes g c bes aes g f ees |
  d bes bes bes f g aes g f |
  g4. r r |
  ees'2.~ ees4.~ |
  ees2.~ ees4.~ |
  ees8 d c bes4. aes8 g aes |
  g bes des~ des ees f~ f ees des |
  c d ees~ ees f g~ g f ees |
  d bes' a bes4 f8 g4 g8 |
  f d c d4 d8 ees8. d16 ees8 |
  d8 d ees f aes c~ c bes aes |
  g f ees ees4. f4. |
  ees2.~ ees4.~ |
  ees2.~ ees4.~ |
  ees2.~ ees4.~ |
  ees2.~ ees4. 
  
}   %*********************************

twoAdagio = \relative c'' { 
  r8 g f g ees bes bes ees g |
  r8 aes g aes ees c c ees aes |
  g f aes g4. f8 ees f |
  ees4. r r |
  r8 d' c d bes f f bes d |
  r8 ees d ees bes g g bes ees |
  d c ees d4. c8 bes c |
  bes4. r r |
  r8 bes' aes g f ees des c bes |
  c des c~ c des c~ c des c |
  bes c bes~ bes c bes~ bes c bes |
  aes c bes aes c des des c bes |
  aes bes c~ c des ees des16 c bes8 aes |
  g4. r r |
  r4. r r |
  r8 c bes c aes ees ees aes c |
  r8 des c des aes f f aes des |
  c bes des c4. bes8 aes bes |
  aes8 c des ees2.~ |
  ees8 c des ees f ges~ ges f ees |
  des des ees f2.~ |
  f8 d ees f g aes~ aes g f |
  ees4. r4. r |
  R1*9/8 |
  r8 b a b4 b8 c4 c8 |
  b8 g' fis g4 d8 ees4 ees8 |
  d4. r r |
  r4. r bes~ |
  bes4. r8 aes8 g f4.~ |
  f4. r8 bes8 aes g4.~ |
  g8 ees ees'~ ees d c bes aes g | 
  f4. r r |
  R1*9/8 |
  r8 g f g ees bes bes ees g |
  r8 aes g aes ees c c ees aes |
  g8 f aes g4. f8 ees f |
  ees g bes~ bes c des~ des c bes |
  aes bes c~ c d ees~ ees d c|
  bes4 r8 r4. r4. |
  r8 bes' a bes4 f8 g8. f16 g8 |
  f4 r8 r4. r4. |
  R1*9/8 |
  r8 bes,8 aes bes g ees ees g bes |
  r8 aes g aes ees c c ees aes |
  r8 g bes aes f aes~ aes g f |
  f4. g2. 

}   %*********************************

threeAdagio = \relative c' { 
  r8 bes aes bes4 g8 g4 bes8|
  r8 c bes c4 aes8 aes4 c8 |
  bes4. r r |
  ees8 g ees f bes bes, ees d ees |
  d f ees f4 d8 d4 f8 |
  r8 g f g4 ees8 ees4 g8 |
  f4. r r |
  R1*9/8*7
  r8 ees' ees ees bes c des c bes |
  c ees, des ees4 c8 c4 ees8 |
  r8 f ees f4 des8 des4 f8 |
  ees4. r r |
  r8 aes bes c des c bes c bes |
  a a bes c des ees~ ees des c |
  bes bes c des ees des c d c |
  b b c d ees f~ f ees d |
  c c d ees d c bes aes g |
  aes4 bes8 c bes aes g f ees |
  d4. r r |
  R1*9/8 |
  r8 g a b d f~ f ees d |
  c4. r r |
  r8 ees, g aes4 r8 r4. |
  r8 f a bes4 r8 r4. |
  R1*9/8*2 
  r8 bes bes bes f g aes g f |
  g bes, aes bes4 g8 g4 bes8 |
  r8 c bes c4 aes8 aes4 c8 |
  bes4. r4. r4. |
  R1*9/8*2 |
  r8 d' c d4 d8 ees4 ees8 |
  d4 r8 r4. r4. |
  r8 bes c d f aes~ aes g f |
  ees2. d4. |
  ees8 des, c des4 bes8 bes4 des8 |
  r8 c bes c4 aes8 aes4 c8 |
  r8 bes des ces aes ces~ ces bes aes |
  aes4. bes2. 
  

}   %*********************************

fourAdagio = \relative c { 
  ees4. r4. r4. |
  ees4. r4. r4. |
  ees4. r8 ees,8 g bes4 bes8 |
  ees4. d c |
  bes r4. r4. |
  bes r r|
  bes r8 bes d f4 f,8 |
  bes2. d4. |
  ees2. g4. |
  aes f ees | 
  d e c |
  f r g |
  aes aes, des |
  ees g ees |
  aes g ees | 
  aes r r |
  aes r r |
  aes r8 aes,8 c ees4 ees,8 |
  aes4. aes' ges | 
  f r f, | 
  bes bes' aes |
  g r g, |
  c2. ees4. | 
  f2. f4. |
  g r8 g g g g g |
  g4. r8 g, g g g g |
  g4. r b |
  c4 ees8 g, g' g g g g |
  aes2. a4. |
  bes2. b4. |
  c4 bes8 aes4. bes |
  bes d, bes |
  ees d bes |
  ees r r |
  ees r r |
  ees r8 ees, g bes4 bes8 |
  ees4. ees, g |
  aes aes' a |
  bes r8 bes bes bes bes bes |
  bes4. r8 bes, bes bes bes bes | 
  bes4. r d |
  ees4 g8 bes bes, bes bes bes bes |
  ees4. r r | 
  ees r r |
  ees r r |
  ees2.~ ees4. 
  
}   %**********************************

%%% Local Variables:
%%% LilyPond-master-file: "bachJS_sonataGmoll_oboeQuartet_scoreAndParts.ly"
%%% End: 
