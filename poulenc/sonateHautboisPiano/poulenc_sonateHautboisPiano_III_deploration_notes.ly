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
  e2\f~ e8. dis32( e f8.) e32( d |
  e8.) dis32( e eis8.) d32( e |
  % 33
  fis8.~) fis64 eis( fis g) fis4~ fis8.. eis64( e dis8..) d64( eis |
  fis8..\ff) eis64( fis g8..) f64( gis |
  % 35 \circle 5
  a4~) a8 r r2 |
}   %*********************************

twoIIIDeploration = \relative c' { 
  % 1 
  aes'4.\pp( bes8 ces4 |
  bes8 aes bes4.) aes8( |
  bes8 ces bes aes bes2) |
  ees,2.~ |
  <<ees2. {s4\> s2\!} >>|
  % 6 \circle 1
  ges1~ |
  ges1
}   %*********************************

threeIIIDeploration = \relative c' { 
  % 1 
  ees4.\pp( ges8 ees4 |
  ges8 ees ges4.) ees8( |
  ges ees ges ees ges2) |
  bes,2\mf( aes4 |
  des,\> ees2\!) |
  % 6 \circle 1
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
  aes'2.~ |
  aes~ |
  aes |
  << aes2. {s2\mf\< s4\!}>> |
  g4\f~ g8 r8 |
}   %**********************************

%%% Local Variables:
%%% LilyPond-master-file: "poulenc_sonateHautboisPiano_oboeQuartet_scoreAndParts.ly"
%%% End: 
