%%%%% piece.ly
%%%%% (This is the global definitions file)

%\version "2.16.0"

%\header{
%  title = "Sonate in g-moll"
%	composer = "Joh. Seb. Bach"
%}

oneAllegroB = \relative c'' {
  \partial 8
  \repeat volta 2 {
    % 1
    r8 |
    R1 * 2/4 |
    r4 r8 bes~ |
    bes16 a a bes c c bes a |
    g fis g a bes8 bes |
    g d' bes g |
    % 6
    r16 d'16 f a d a f d |
    g8 bes, g ees |
    r16 bes' d f bes f d bes |
    ees8 g, g'4 |
    r8 g, g'4 |
    fis8 a4 g8 |
    % 12
    fis16 a g bes a c bes d |
    fis, a g bes a c bes d |
    fis, a d,8 r fis |
    g16 bes d c bes a g f |
    e g c,8 r e |
    % 17
    f16 a c bes a g f ees |
    d8 f bes4~ |
    bes16 bes a g a g a b |
    c8 g c4~ |
    c16 c bes a bes a bes cis |
    d8 a d, a'~ |
    % 23
    a16 d, g f e4~ |
    e d~ |
    d8 e16 d cis4 |
    d16 e d cis d e f d |
    bes' a bes8~ bes16 g c bes |
    % 28
    a bes a g a f d f |
    g f g8~ g16 e a g |
    f e f g a4~ |
    a16 c bes a g f e d |
    cis a' a, b cis b cis e |
    d cis d f e g, a g |
    % 34 
    f8 r r4 |
    R1 * 2/4 |
    r16 f a d d cis e g, |
    g f a d d cis e g |
    f8 d r4 |
    % 39
    R1 * 2/4 |
    r16 d' d, e fis e fis a |
    g fis g bes a c, d c |
    bes d' d d d d d d |
    d d d d d d d d |
    % 44 
    d d d c bes bes bes a |
    g bes bes a g g g f |
    e g g f e e e d |
    cis e e bes' a8 g |
    f4 e |
    d8 a' b cis |
    % 50 
    d16 a a bes a g f e |
    f d32 e f16 d g f e g |
    f8. g16 f e d cis |
    d a bes g e8. d16 |
    d4.
  }
  \repeat volta 2 {
    f'8  |
    % 55
    bes16 a bes f ees d c bes |
    g'8 f4 bes8~ |
    bes16 a c bes a g f ees |
    d c bes8 r4 |
    R1 * 2/4 |
    % 60
    r4 r8 bes8~ |
    bes16 a c bes a c bes a |
    g4 r |
    r16 ees'16 g f ees d c bes |
    a4 r |
    % 65
    r16 d f ees d c bes aes |
    g4 r16 g' ees c |
    d ees f aes g f ees d |
    ees g, a b c4~ |
    c b |
    % 70
    c16 g' aes g f ees d c |
    b d c ees d f ees g |
    b, d c ees d f ees g |
    b, c d c b a g f |
    ees8 ees' f4 |
    % 75 
    r16 bes, c d ees4~ |
    ees d |
    ees r16 bes' g ees |
    f g aes c bes aes g f |
    g f ees d c bes aes g |
    % 80
    f aes g bes d, f ees g |
    f aes g bes d, f ees g |
    f4 bes16 c d ees |
    f8 f4 ees16 d |
    % 84
    ees8 ees4 d8 |
    r16 aes' g f g f g a |
    bes8 f bes4~ |
    bes16 bes aes g aes g aes b |
    c8 g c4~ |
    % 89
    c16 a bes c d4~ |
    d16 g, c bes a4~ |
    a g~ |
    g fis |
    % 93 
    g8 g, r16 f' ees d |
    ees d ees8~ ees16 c f ees |
    d ees d c d bes ees d |
    c bes c8~ c16 a d c |
    bes a bes c d4~ |
    % 98 
    d16 f ees d c bes a g |
    fis8 d r4 |
    R1 * 2/4 |
    r16 d'' d, e fis e fis a |
    g fis g bes a c, d c |
    % 103 
    bes d d d d d d d |
    d d d d d d d d |
    d g g, a b a b d |
    c b c ees d f, g f |
    ees8 r r4 |
    % 108
    R1 * 2/4 |
    r16 ees g c c b d f |
    ees ees, g c c b d f |
    ees8 c r16 g' g f |
    % 112 
    ees8 c r16 ees ees d |
    c ees ees aes c aes aes g |
    fis d  d fis g8 c, |
    bes4 a |
    g8 d' e fis |
    % 117 
    g16 d d ees d c bes a |
    bes g32 a bes16 g c bes a c |
    bes8. c16 bes a g fis |
    g g' ees c a8. g16 |
    g4. 
  }
}   %*********************************

twoAllegroB = \relative c''{
  \partial 8
  \repeat volta 2 {
    d8 |
    % 1 
    g16 fis g d bes a bes g |
    ees'8 d4 g8~ |
    g16 fis fis g a ees d c |
    bes a bes c d8 g |
    bes,16 g bes d g d bes' g |
    % 6
    a f d8 a d |
    r16 ees, g bes ees bes g' ees |
    f d bes8 f bes |
    r16 g' c, d ees c g' ees |
    d g bes, c d bes g' d |
    c4 bes |
    % 12
    a16 c bes d fis, a g bes |
    a c bes d fis, a g bes |
    a8 r r4 |
    R1 * 2/4 |
    r16 c,32 d e16 c g' c, c' bes |
    % 17
    a g a bes c bes a g |
    f8 r r4 |
    r8 c' f4~ |
    f16 f ees d ees d ees fis |
    g4 r |
    r f16 a d, f |
    % 23 
    bes a bes8~ bes16 g c bes | 
    a bes a g a f d f |
    g f g8~ g16 e a g |
    f8 r r4 |
    R1 * 2/4 |
    % 28 
    R1 * 2/4 * 2 |
    r16 cis16 d e f4~ |
    f16 e d c bes a g f |
    e8 r r4 |
    R1 * 2/4 |
    % 34
    R1 * 2/4 * 2 |
    r16 a' a a a a a a |
    a a a a a a a a |
    a d d, e fis e fis a 
    % 39 
    g fis g bes a c, d c |
    bes8 g r4 |
    R1 * 2/4 |
    r16 bes d g g fis a c |
    bes bes, d g g fis a c |
    % 44 
    bes8 g r4 |
    R1 * 2/4 * 4 |
    r16 d32 e f16 d g f e g |
    % 50 
    f8. g16 f e d cis |
    d8 r r4 |
    R1 * 2/4 * 2 |
    r4. 
  }
  \repeat volta 2 {
    r8 |
    % 55
    R1 * 2/4 * 3 |
    r4 r8 d |
    g16 fis g d c bes a g |
    % 60 
    ees'8 d4 g8~ |
    g16 fis a g fis ees d c |
    bes8 r r4 |
    R1 * 2/4 * 3 |
    % 66 
    r16 g a b c4~ |
    c b |
    c r |
    R1 * 2/4 * 4 |
    % 73
    r8 b c d |
    r16 g f ees d c bes aes |
    % 75 
    g4 r16 bes' g ees |
    f g aes c bes aes g f |
    g8 r r4 |
    R1 * 2/4 |
    r16 bes c bes aes g f ees |
    % 80
    d16 f ees g f aes g bes |
    d, f ees g f aes g bes |
    d,8 r r4 |
    R1 * 2/4 * 2| 
    r8 bes ees4~ |
    ees16 ees d c d c d e |
    f8 r r4 |
    R1 * 2/4 * 5 |
    % 93
    r16 a, bes c d4~ |
    d16 g, c bes a4~ |
    a g~ |
    g8 a16 g fis4 |
    g8 r r4 |
    % 98 
    R1 * 2/4 |
    r16 d' d, e fis e fis a |
    g fis g bes a c, d c |
    bes8 r r4 |
    R1 * 2/4 * 7 |
    % 109
    r16 g'' g g g g g g  |
    g g g g g g g g |
    g g g f ees ees ees d |
    % 112 
    c ees ees d c c c bes |
    aes c c c ees c c bes |
    a fis fis a d,8 a' |
    g4 fis |
    g8 r r4 |
    % 117
    R1 * 2/4 |
    r8 d' e fis |
    g16 d d ees d c bes a |
    bes8 g fis8. g16 |
    g4. 
  }
}   %*********************************

threeAllegroB = \relative c''{ 
  \partial 8 
  \repeat volta 2 {
    r8 |
    %1 
    R1 * 2/4 * 4 |
    r16 g bes d g d bes' g |
    % 6 
    a f d8 a d |
    R1 * 2/4 * 2 |
    r16 g c, d ees c g' ees |
    d g bes, c d bes g' d |
    c4 bes |
    % 12 
    a8 r8 r4 |
    R1 * 2/4 |
    r16 d,32 e fis16 d a' d, d' c |
    bes a bes c d c bes a |
    g8 r r4 |
    % 17
    R1 * 2/4 |
    r16 ees' d c d c d e |
    f8 r8 r4 |
    R1 * 2/4 | 
    r8 bes, g'4~ | 
    g16 g f e f8 r |
    % 23 
    R1 * 2/4 * 3 |
    r16 g f e f g a8~ |
    a16 d, g f e4~ |
    % 28
    e4 d4~ |
    d8 e16 d cis4 |
    d8 r r4 |
    R1 * 2/4 * 3 |
    % 34 
    r16 a' a, b cis b cis e |
    d cis d f e g, a g |
    f8 r r4 |
    R1 * 2/4 * 7 |
    % 44 
    r4 r16 d' d c |
    bes8 g r16 bes bes a |
    g8 e r16 g g f |
    e8 cis' d e |
    d4 cis |
    d8 r r4 |
    % 50 
    R1 * 2/4 |
    r8 a b cis |
    d16 a a bes a g f e |
    f8 g16 e cis8. d16 |
    d4. 
  }
  \repeat volta 2 {
    r8 |
    % 55
    R1 * 2/4 |
    r4 r8 d'8~ |
    d16 c ees d c ees d c |
    bes4 r4 |
    R1 * 2/4 * 3 |
    % 62 
    r16 g16 bes32 a g16 d' g, b32 a g16 |
    c8 c, r4 |
    r16 f a32 g f16 c' f, a32 g f16 |
    % 65 
    bes8 bes, r4 |
    R1 * 2/4 * 2 |
    r4 r16 g'' ees c |
    d ees f aes g f ees d |
    % 70
    ees d c bes aes g f ees |
    d f ees g b, d c ees |
    d f ees g b, d c ees |
    d8 r8 r4 |
    R1 * 2/4 * 3 |
    % 77 
    r16 bes' c d ees4~ |
    ees d |
    ees8 r r4 |
    % 80
    R1 * 2/4 * 2 |
    r16 c bes c d ees f g |
    aes8 aes4 g16 f |
    % 84 
    g8. aes16 f4 |
    ees4 r4 |
    R1 * 2/4 |
    r8 c8 f4~ |
    f16 f ees d ees d ees fis |
    % 89
    g8 g, r16 f' ees d |
    ees d ees8~ ees16 c f ees |
    d ees d c d bes ees d |
    c bes c8~ c16 a d c |
    % 93 
    bes8 r r4 |
    R1 * 2/4 * 3 |
    r16 fis g a bes4~ |
    % 98
    bes16 a g f ees d' c bes |
    a8 r r4 |
    R1 * 2/4 * 3 |
    % 103 
    r16 bes, d g g fis a c |
    bes bes, d g g fis a c |
    bes8 g r4 |
    R1 * 2/4 |
    r16 g' g, a b a b d |
    % 108
    c b c ees d f, g f |
    ees8 r  r4 |
    R1 * 2/4 * 6 |
    % 116
    r16 g32 a bes16 g c bes a c |
    % 117
    bes8. c16 bes a g fis |
    g8 r r4 |
    R1 * 2/4 * 2 |
    r4. 
  }

}   %*********************************

fourAllegroB = \relative c { 
  \partial 8
  \repeat volta 2 {
  r8 |
  % 1
  g4 r4 |
  r16 g bes d g d bes g |
  d'8 d, r8 d' |
  g g, r16 g bes d |
  g,8 g' g g |
  % 6
  f f f f | 
  ees ees ees ees |
  d d d d |
  c c c c |
  bes bes bes bes |
  a16 a' fis d g fis g g, |
  % 12 
  d'8 d d d |
  d d d d |
  d4 fis8 d |
  g g, g g |
  c4 e8 c|
  % 17
  f f, f f |
  bes bes' a g |
  f f ees d |
  c c' bes a |
  g g f e |
  d4 r8 d' |
  % 23
  g, g c c |
  f, f bes bes |
  e, e a a |
  d,4 r8 d' |
  g,8 g c c |
  % 28
  f, f bes bes |
  e, e a a |
  d,4 d'16 a f d |
  g8 g, g g |
  a4 r8 a |
  b b cis cis |
  % 34 
  d4 a8 a |
  b b cis cis |
  d f a cis, |
  d f a cis, |
  d4 r8 d |
  % 39
  e e fis fis |
  g4 d8 d |
  e e fis fis |
  g bes d fis, |
  g bes d fis, |
  % 44 
  g4 r |
  g r |
  g r |
  a8 g f g |
  a g a a, |
  d d d d |
  % 50
  d d, r a' |
  d d d d |
  d d, r a' |
  d g a a, |
  d a d, 
}
  \repeat volta 2 {
    r8 |
    bes'4 r |
    r16 bes d f bes f d bes |
    f'8 f, r f' |
    bes,16 bes' f d bes c bes a |
    g4 r |
    % 60
    r16 g bes d g d bes g |
    d'8 d, r d' |
    g g f f |
    ees ees ees ees |
    f f ees ees |
    % 65
    d d d d |
    ees d ees c |
    f d g g, |
    c f ees c |
    f d g g, |
    % 70
    c4 f |
    g g, |
    g g |
    g8 g' a b |
    c,4 d |
    % 75
    ees8 aes g ees |
    aes f bes bes, |
    ees aes g ees |
    aes f bes bes, |
    ees4 aes |
    % 80
    bes bes, |
    bes bes |
    bes bes |
    bes16 c d ees f g aes bes |
    % 84 
    ees,8 aes bes bes, |
    ees ees d c |
    bes bes' aes g |
    f f ees d |
    c c' bes a |
    % 89
    g4 r8 bes, |
    c c f f |
    bes, bes ees ees |
    a, a d d |
    % 93
    g g, r bes |
    c c f f |
    bes, bes ees ees |
    a, a d d |
    g,4 g'16 d bes g |
    c8 c c c |
    d4 r8 d |
    e e fis fis |
    g4 d8 d |
    e e fis fis |
    % 103 
    g8 bes d fis, |
    g bes d fis, |
    g4 r8 g, |
    a a b b |
    c4 g8 g |
    % 108
    a a b b |
    c ees g b, |
    c ees g b, |
    c4 r |
    % 112
    c r |
    c r |
    d8 c bes c |
    d c d d, |
    g g g g
    % 117
    g4 r8 d' |
    g, g g g |
    g4 r8 d |
    g c d d, |
    g' d g, 
  }
}   %**********************************

%%% Local Variables:
%%% LilyPond-master-file: "bachJS_sonataGmoll_oboeQuartet_scoreAndParts.ly"
%%% End: 
