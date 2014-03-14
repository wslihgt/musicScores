%%%%% piece.ly
%%%%% (This is the global definitions file)

%\version "2.16.0"

%\header{
%  title = "Sonate"
%	composer = "Francis Poulenc"
%}

oneIElegie = {
  % 1 
  d'2\pp( bes4) |
  ees,\p( fis~\fermata) fis8 r8 |
  r16 fis,( g a g2~) |
  g16 fis( g a g fis g a g4) |
  r16 fis( g a) b( a b c) d8( e) |
  % 6
  fis,8( e b'4~) b8 r |
  g16\mf\<( e g b a2)\! |
  r16 g( a b c\>_\markup{molto}) a( c e bes'8)\! r|
  % (1) 
  <<
    {
      \voiceOne 
      r2. |
      % 10
      r16 
    }
    \new Voice { 
      \voiceTwo
      \tiny
      r16 fis,( g a g2~) |
      % 10
      g16
    }
  >> 
  \oneVoice
  % the following fis is related to the last note - g - although there is a "choice" at this point. Internal logic to lilypond, that's ok, but when removed, have to rethink this part.
  fis16( g a g) fis g a g4 |
  fis16( g b d cis4.) ais8( |
  b8 fis' e4~) e16 r16 cis8( |
  d cis16 b fis4.) e8( |
  % 14 from global: 2/4
  fis8\> b fis)\! r |
  % back to 3/4
  r16 cis'\p( d e d2~) |
  d2(\> d,8\!\pp) r | 
  r8 d'8\p( e f a, b |
  % 18
  b c c2\>) |
  r16\! b16\pp( c d c b c d c4~) |
  c8 ees( d c d, ees |
  g4 ges~) ges8 r8 |
  % 22 (2) 
  d2.\ppp~ |
  d8 r8 r4 r4 | 
}   %*********************************

twoIElegie = \relative c'' { 
  
}   %*********************************

threeIElegie = { 
  
}   %*********************************

fourIElegie = { 
  %1 
  R1 * 3/4 * 2 |
  g4 b g' |
  b, g b |
  g' b, g

}   %**********************************

%%% Local Variables:
%%% LilyPond-master-file: "poulenc_sonateHautboisPiano_oboeQuartet_scoreAndParts.ly"
%%% End: 
