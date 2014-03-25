%%%%% piece.ly
%%%%% (This is the global definitions file)

%\version "2.16.0"

%\header{
%  title = "Sonate in g-moll"
%	composer = "Joh. Seb. Bach"
%}

oneIIIDeploration = \relative c' {
  % 1 
  R1 * 3/4 * 2 |
  R1 |
  R1 * 3/4 * 2 |
  % 6 \circle 1
  aes''4.\pp( ces8 des4 ces8 bes |
  aes4) des,8( ees bes' ges aes4) |
  aes2\mf\< bes4 ces\! |
  ees2\f\>~ ees8\! r8 |
  % 10 
  aes,4.\pp( bes8 ces4) |
  bes8( des \grace {bes16[ des]} bes4 aes) |
  ges8( ees bes' ges aes4) |
  aes4\mf\<( bes ces\!) |
  ees4\f\>~ ees8\! r |
  % 15 circle 2
  bes,,4.\ff( d8 ees4 ) d8( c |
  bes8 ees d4 c) |
  bes8( d ees4 bes8 c |
  g'2~) g8 r |
  bes,4.( d8 ees4 d8 f |
  \appoggiatura{d16[ f]} d4 c) |
  % 21 
  bes8( d ees4 bes8 c |
  g'2~) g8 r |
  % 23 \circle 3
  g'4.\mf( d'8 fis,4) |
  e8( d g b fis4) |
  g8( fis e4 d8 e |
  b'4\>~) b8\! r |
  % 27 \circle 4
  R1 |
  r8 r16. c,32\p( d8~) d32 c( d c d2~) |
  d32 r32 b16( c d ees d ees f \appoggiatura{d16[ f]} d8 c~) c4~|
  % 30
  c16 b( c d ees b c d ees4) d8\< dis\! |
  e2\f~ e8. dis32( e f8.) e32( dis |
  e8.) dis32( e eis8.) d32( eis |
  % 33
  fis8.~) fis64 eis( fis g) fis4~ fis8.. eis64( e dis8..) d64( eis |
  fis8..\ff) eis64( fis g8..) f64( gis |
  % 35 \circle 5
  a4~) a8 r r2 |
  r4 r4 a,8\p( b |
  % 37 
  c4 b8 a g a | 
  e'2~) e8 r8 |
  R1 |
  r4 r4 g,8\p( b |
  % 41
  c4 b8 a g a |
  fes'2\>~) fes8\! r8 |
  % 43 circle 6
  aes4~\pp aes8 f16.( aes32 bes8) f16.( bes32 |
  aes8) f16.( aes32 bes8) f16.( bes32 aes8) r8 |
  % 45 
  aes8( g des'4) des,8( ees |
  fes beses d,4 ees8) r8 |
  R1 * 3/4 * 3
  % 50 circle 7
  f4.\mf( aes8 bes4 aes8 g |
  f4) bes,8( c g' ees f4) |
  f2\mf\<( g 4 aes\! |
  c2\f\>~) c8\! r8 |
  % 54 circle 8
  R1 |
  % 55 
  R1 * 3/4
  R1
  R1 * 3/4
  fes,4\ppp( ees4. d8 fes d |
  % 59
  ees4) d8( fes ees4~) |
  ees2.~ |
  ees4~ ees8 r d8\pp( c) |
  d4( c fes |
  <<ees2.~) {s2\> s4\!} >> |
  % 64
  ees4\ppp~ ees8 r d\ppp( c |
  d4 c fes |
  ees2.~) |
  ees~ |
  ees\fermata ~ |
  ees8 r8 r4 r4
}   %*********************************

twoIIIDeploration = \relative c' { 
  % 1 
  aes'4.\pp( bes8 ces4 |
  bes8 aes bes4.) aes8( |
  bes8 ces bes aes bes2) |
  ees,2.~ |
  <<ees2. {s4\> s2\!} >>|
  % 6 \circle 1
  ces'1\pp~ |
  ces1 |
  ces2.\mf\< ees4\f\! |
  ces2. |
  % 10
  ces2.\pp~ |
  ces2.~ |
  ces2. | 
  \acciaccatura{ces8} ces2\mf\< ees4\! |
  ces4\f~ ces8 r8 |
  % 15 circle 2
  c1\f~ |
  c2. |
  c2. |
  ees2. |
  c1\pp - "subito"~ |
  c2 |
  % 21 
  c2 ees4 |
  c2~ c8 r |
  % 23 circle 3
  b2 d4 |
  b2 d4 |
  d2 b4 |
  e2 |
  % 27 circle 4
  aes,8\ppp^\markup{monotone} aes aes aes aes aes aes aes |
  aes8 aes aes aes aes aes aes aes |
  aes8 aes aes aes aes aes aes aes |
  % 30 
  aes8 aes aes aes aes aes aes\< aes\! |
  g\mf g g g g g g g |
  g g eis eis |
  % 33
  fis fis fis fis fis fis fis fis |
  fis fis c' gis |
  % 35 circle 5
  a'4.->\ff b8( c4 b8 e |
  b4\> a\!) e,8\p e |
  % 37
  a8[ a] a[ a] e[ e] |
  a[ a~] a[ a\mf~] a[ a] |
  <a' c e a>4.->\ff
}   %*********************************

threeIIIDeploration = \relative c' { 
  % 1 
  ees4.\pp( ges8 ees4 |
  ges8 ees ges4.) ees8( |
  ges ees ges ees ges2) |
  bes,2\mf( aes4 |
  des,\> ees2\!) |
  % 6 \circle 1
  ges'1\pp~ |
  ges1 |
  ges2.\mf\< ces,4\f\! |
  fes2. |
  % 10
  ges2.\pp~ |
  ges2.~ |
  ges2. | 
  ges2\mf\< ces,4\! |
  f4\f~ f8 r |
  % 15 circle 2
  ees1\f~ |
  ees2. |
  ees2. |
  aes2. |
  ees1\pp - "subito"~ |
  ees2 |
  % 21 
  ees2 g4 |
  ees2~ ees8 r|
  % 23 circle 3 
  d2\mf g4 |
  d2 g4 |
  e2 d4 | 
  cis2 |
  % 27 circle 4
  ces8^\markup{monotone} ces ces ces ces ces ces ces |
  ces8 ces ces ces ces ces ces ces |
  ces8 ces ces ces ces ces ces ces |
  % 30
  ces8 ces ces ces ces ces ces ces |
  b8\mf b b b b b b b |
  b b b b |
  % 33 
  a8\mf a a a a a a a |
  a a d\f c |
  % 35 circle 5
  c'8\ff c c g'( e e e g |
  g\> g e e\!) c,\p c |
}   %*********************************

fourIIIDeploration = \relative c' { 
  % 1 
  aes4.\pp ( ees8 aes4 |
  ces8 ges aes4.) ges8( |
  ees aes ces ges aes2) |
  aes,2\mf( ges4 |
  f\> ees2\!) |
  % 6 circle 1
  aes1\pp~ |
  aes1 |
  << aes1 {s2.\mf\< s4\!\f}>>  |
  des,2. |
  % 10
  aes'2.\pp~ |
  aes~ |
  aes |
  << aes2. {s2\mf\< s4\!}>> |
  g4\f~ g8 r8 |
  % 15 circle 2
  c,1~ |
  c2. |
  c2. |
  f2. |
  c1~ |
  c2 |
  % 21 
  c2. |
  b2~ b8 r8 |
  % 23 circle 3 
  e2.\mf~ |
  e2. |
  e2. |
  \acciaccatura {disis'8} dis,2 |
  % 27 circle 4
  \acciaccatura{g'8} aes,2\ppp \acciaccatura{d8} ees,4 \acciaccatura{g8} aes,4 |
  \acciaccatura{g''8} aes,2 \acciaccatura{d8} ees,4 \acciaccatura{g8} aes,4 |
  \acciaccatura{g''8} aes,2 \acciaccatura{d8} ees,4 \acciaccatura{g8} aes,4 |
  % 30
  \acciaccatura{g''8} aes,2 \acciaccatura{d8} ees,4 \acciaccatura{g8} aes,4\< \! |
  \acciaccatura{g'8} e2\f \acciaccatura{g'8} gis,4 \acciaccatura{ais8} b,4 |
  \acciaccatura{g'8} e4 \acciaccatura{d'8} cis,4 |
  % 33
  \acciaccatura{a'} fis2\mf \acciaccatura{eis'8} fis,4 \acciaccatura{bis8} cis,4 |
  \acciaccatura{a'} fis4 \acciaccatura{fis'8} e,4\f |
  % 35 circle 5
  a4.\ff e'8( g[ g] a[ g] |
  a8\>[ a] c[ c])\! e,\p[ a,] |
  % 37
  g'8[ g] a[ b] e,[ a,] |
  d,4 f'\mf a |
  a,8\f e'[ e] e( g[ g] a[ g] |
  a8\>[ a] c[ c\!]) e,[ a,] |
  % 41
  a'[ a] a[ b] a[ b] |
  aes,4\mf\> ges'( aes')\! |
  % 43 circle 6 
  c,8\pp[( aes] f[ aes,] f'[ aes]) |
  c--( aes) ces--( aes) c--( aes) | 
  % 45
  des--( aes des aes' des, aes) |
  des4 c2 |
  d8--\p( aes f aes,-- f' aes) |
  c--( aes) ces--( aes) c4 | 
  c,4 c,2 | 
}   %**********************************

%%% Local Variables:
%%% LilyPond-master-file: "poulenc_sonateHautboisPiano_oboeQuartet_scoreAndParts.ly"
%%% End: 
