% Lily was here -- automatically converted by /sw/bin/midi2ly from Sinouhe.MID
\version "2.13.53"

\layout {
  \context {
    \Voice
    \remove "Note_heads_engraver"
    \consists "Completion_heads_engraver"
    \remove "Rest_engraver"
    \consists "Completion_rest_engraver"
  }
}

trackAchannelA = \lyricmode {

    
  \time 3/8 
  
  \tempo 4 = 100 
  
  % [SEQUENCE_TRACK_NAME] outrance
  
  % [COPYRIGHT_NOTICE] 

Page &p
  " "4*117 
  \time 2/4 
  
 
  \tempo 4 = 120 
  " "2 
  | % 80
  
  \tempo 4 = 120 
  " "2 
  | % 81
  
  \time 3/4 
  " "2. 
  | % 82
  
  \time 2/4 
  " "1*2 
  \time 5/4 
  " "4*15 
  \time 4/4 
  " "1*9 
  \time 5/4 
  "essais"4 
}

trackA = <<
  \context Lyrics = voiceA \trackAchannelA
>>


trackBchannelA = {
  
  % [TEXT_EVENT] Soprano1
  
}

trackBchannelB = \relative c {
  r16 e' e g g bes bes des des f f aes aes8. g16 aes8 g4. r16 e, 
  e g g bes bes des des f f aes bes8. aes16 
  | % 3
  bes8 c4. r16 bes bes aes aes f f des des bes bes aes 
  | % 4
  aes4. g r16 bes' aes f aes f des f 
  | % 5
  des bes aes8 bes4. c r8*17 des4*5 c8 r8*13 f8*7 r8 des r8 e 
  | % 11
  r8 f g16 f e des c bes g bes c des e f g f e des 
  | % 12
  c bes g bes c des e f g8 r4. f32 r4*20/480 e32 r4*20/480 d32 
  r4*20/480 e8 
  | % 13
  r4. c8 bes aes g8*11 f4 aes g1. g8. aes16 bes8 c des32 r4*20/480 e32 
  r4*20/480 f32 r4*20/480 g32 r4*20/480 aes32 r4*20/480 bes32 r4*20/480 c4. 
  bes aes bes c8. c16 c8. c16 c8. c16 c8 r8*5 c8. c16 c8. des16 
  bes8. des16 c8 
  | % 20
  c16 des c bes c8 c16 des c bes c des c bes c des ees8 ees 
  | % 21
  e des bes ges a f des c16 des d ees e f 
  | % 22
  e8 f g f g aes bes g e f 
  | % 23
  r4 f8 r4 f, r8 f4 
  | % 24
  r8 f4. r32*39 b32 bes4 a16 bes d ges r8*51 g8 
  | % 31
  a bes c ges g des c ges' c ges' 
  | % 32
  des c r8 g des' c e, ees ges,16 g c ees 
  | % 33
  des'2 ges,,16 g c ees des' c ges8. e16 ees des 
  | % 34
  c8 r4. e16 ees d des e ees des c r16 e ees d 
  | % 35
  e ees a8 e16 ees a8 e16 ees e a8 e16 ees e a2 bes16 a g ges 
  g ges e ees r8 ees16 e ees e ges g 
  | % 37
  a g ges e ees32 r4*20/480 des32 r4*20/480 c32 r4*20/480 bes32 
  r4*20/480 a32 r4*20/480 g32 r4*20/480 a32 r4*20/480 bes32 r4*20/480 a32 
  r4*20/480 bes32 r4*20/480 a32 r4*20/480 bes32 r4*740/480 g'4. 
  a2 ges4. g a4 e8 ees des1 ees32 r4*20/480 ges32 r4*20/480 g32 
  r4*20/480 a32 r4*20/480 bes32 r4*20/480 des32 r4*20/480 ees4. 
  e8 
  | % 41
  bes4. a8 ees e ges4. g8 
  | % 42
  a r8 bes r8*9 ees,2 r2 
  | % 44
  g2. ees8 r8 ees r4. ees8 r4. ees8 e bes' a 
  | % 46
  e ees ges c, g' r8 ees 
}

trackB = <<
  \context Voice = voiceA \trackBchannelA
  \context Voice = voiceB \trackBchannelB
>>


trackCchannelA = {
  
  % [TEXT_EVENT] Alto   1
  
}

trackCchannelB = \relative c {
  \voiceTwo
  r16 c' c e e g g bes bes des des f f8. e16 f8 e4. r16 c, c e 
  e g g bes bes des des f aes8. f16 
  | % 3
  aes8 g4. r16 aes aes f f des des bes bes aes aes f 
  | % 4
  f4. e r16 aes' f des f des bes des 
  | % 5
  bes aes f8 aes4. g r8*17 c4*5 c8 r8*13 des8*7 r8 c r8 c 
  | % 11
  r8 c bes4. c bes aes g4 aes32 r4*20/480 g32 r4*20/480 f32 r4*20/480 e4 
  r16*15 c16 c e e r8 c16 
  | % 14
  c e e g bes c bes aes g f e4. f r16 c c e e r8 c16 c e e g 
  bes c bes aes g f 
  | % 16
  e4. e8. f16 des8 e f32 r4*20/480 g32 r4*20/480 aes32 r4*20/480 bes32 
  r4*20/480 c32 r4*20/480 des32 r4*20/480 e4. f ees f e8. e16 e8. 
  e16 e8. e16 e8 r8*5 e8. e16 e8. f16 d8. f16 e8 
  | % 20
  r4 c8 r4 c8 bes r4. 
  | % 21
  bes8 f' f16 ees f ges f8 f16 ees des c bes a ges a bes b 
  | % 22
  g8 f des aes' f des bes' g4 aes8 
  | % 23
  r4 aes8 r4 c, r8 c4 
  | % 24
  r8 d4. r4*2315/480 aes'32 r4*25/480 g4 ges16 g a bes r32*67 e32 
  ees8 r16. e32 ees8 r16. e32 ees8 
  | % 28
  r16 ees e ees des ees e8 r16. e32 ees8 r16. e32 ees8 r16. e32 
  ees8 
  | % 29
  r8 ges e4 ees1 c16 r4*72/480 ees16 r4*72/480 ges16 r4*2856/480 a,2 
  | % 32
  g bes a a a 
  | % 34
  g a bes c des 
  | % 36
  e ees c des r16. e32 ees8 r16. e32 ees8 
  | % 38
  r16. e32 ees8 r16 ees e ees r16 ees e ees r16. e32 ees8 r16 ees 
  e ees 
  | % 39
  e4 ees16 e ees e8 e16 ees e ees1 c32 r4*20/480 des32 r4*20/480 ees32 
  r4*20/480 e32 r4*20/480 f32 r4*20/480 ges32 r4*20/480 g8 r8*9 ees4. 
  e8 
  | % 42
  bes a g r8*5 a2. c4 r2. e2 a,8 r8 a r4. a8 r8*13 a8 
}

trackCchannelBvoiceB = \relative c {
  \voiceOne
  r4*70176/480 des''16 r4*72/480 e16 r4*72/480 g8 
}

trackC = <<
  \context Voice = voiceA \trackCchannelA
  \context Voice = voiceB \trackCchannelB
  \context Voice = voiceC \trackCchannelBvoiceB
>>


trackDchannelA = {
  
  % [TEXT_EVENT] Tenor  1
  
}

trackDchannelB = \relative c {
  r16 g' g c c e e g g bes bes des des8. c16 des8 c4. r16 g, g 
  c c e e g g bes bes des f8. des16 
  | % 3
  f8 e4. r16 f f des des bes bes aes aes f f des 
  | % 4
  des4. c r16 f' des bes des bes aes bes 
  | % 5
  aes f des8 f4. e r8*17 bes'4*5 g8 r8*13 aes8*7 r8 aes r8 g 
  | % 11
  r8 e des8. e16 f e g8. e16 f e des8. e16 
  | % 12
  f e g8. r16*13 c,8 
  | % 13
  des32 r4*20/480 c32 r4*20/480 b32 r4*20/480 c8 bes c des ees 
  r16 g, g c c r8 g16 
  | % 14
  g c c des des ees des c bes aes g4. f r16 g g c c r8 g16 g 
  c c des des ees des c bes aes 
  | % 16
  g4. g8. aes16 f8 g8. f' g4. g4 f8 ees4 c8 f4 
  | % 18
  ges8 g8. g16 g8. g16 g8. g16 g8 g16 aes g f 
  | % 19
  g f ees f des ges g8. g16 g8. f16 f8. f16 g8 
  | % 20
  r4 g8 r4 g8 f r4. 
  | % 21
  g8 f r4 c8 r4 c16 des d8 r8 
  | % 22
  c' c16 des c bes aes8 aes16 bes aes g f aes g f ees des c8 
  | % 23
  r4 c8 r4 aes r8 aes4 
  | % 24
  r8 aes4. r32*63 aes32 
  | % 26
  g2 r32*43 a'32 bes8 r16. a32 bes8 r16. a32 bes8 
  | % 28
  r16 bes ees, f ges aes a8 r16. a32 bes8 r16. a32 bes8 r16. a32 
  bes8 
  | % 29
  r8 g a4 bes1 c32 r4*20/480 bes32 r4*20/480 a32 r4*20/480 g32 
  r4*20/480 ges32 r4*20/480 e32 r4*20/480 ees8 r8*11 c2 
  | % 32
  des d ees e f 
  | % 34
  bes, c des ees e 
  | % 36
  a bes ges g r16. a32 bes8 r16. a32 bes8 
  | % 38
  r16. a32 bes8 r16 bes ees, f r16 ees bes' f r16. a32 bes8 r16 f 
  ees bes' 
  | % 39
  a4 bes16 f ees a8 bes16 a g bes1 c32 r4*20/480 bes32 r4*20/480 a32 
  r4*20/480 g32 r4*20/480 ges32 r4*20/480 e32 r4*20/480 ees8 r8*9 a4. 
  g8 
  | % 42
  ges e ees r8*7 
  | % 43
  ges2. r4 ges1 ges8 r8 ges r4. ges8 r8*13 ges8 
}

trackD = <<
  \context Voice = voiceA \trackDchannelA
  \context Voice = voiceB \trackDchannelB
>>


trackEchannelA = {
  
  % [TEXT_EVENT] Baryton1
  
}

trackEchannelB = \relative c {
  c'8*7 des8 bes c4 g8 c,8. c16 c8 c g' e des bes 
  | % 3
  des c4. des'8*7 des8 bes c4. des,8*7 des8 bes c4. r4 
  | % 6
  g'8 c,4. g'4 r8 bes4 r8 
  | % 7
  aes4 g8 c,4. g'4 r8 e4 r8 f16 aes g f e des c4. g'4 
  | % 9
  r8 bes4 r8 aes4 g,8 c4 r8 
  | % 10
  g' bes aes f aes g des f ees e 
  | % 11
  g c, des g bes e bes g des g 
  | % 12
  bes e bes g c,4 r8 g' r4 
  | % 13
  bes8 r4 aes8 r4 c,8*11 bes4 des c1. c8. c16 c8 c4. c des bes 
  des c8. c16 c8. c16 c8. c16 c8 r8*5 c8. c16 c8. c16 c8. c16 c8 
  | % 20
  r4 c8 r4 c8 des r4. 
  | % 21
  des8 f r4 f8 r4 ees8 r8 des 
  | % 22
  c r4 des8 r4 ees8 r8 e f 
  | % 23
  c16 des ees e f8 c16 des ees e f4 r8 f4 
  | % 24
  r8 b,4. c8 g' c, g' c, g' 
  | % 25
  c, g' r1. ges16 e ees des c8 g' c, g' 
  | % 27
  c, g' bes, g' c, g' c, g' c, g' 
  | % 28
  bes, g' c, g' c, g' c, g' c, g' 
  | % 29
  bes, g' c, g' c, g' c, g' c, g' 
  | % 30
  bes,4 c r4 bes c 
  | % 31
  des ees2. ees4 
  | % 32
  e2 c ees2. bes4 a2 
  | % 34
  des c2. 
  | % 35
  ees4 e2. des4 
  | % 36
  c2. ees4 e1 c8 g' c, g' 
  | % 38
  c, g' bes, g' c, g' c, g' c, g' 
  | % 39
  c, g' bes, g' c, g' c, g' c, g' 
  | % 40
  c, g' r8 g bes, g' c, g' c bes, 
  | % 41
  aes' des ges, e ees des c des c des 
  | % 42
  r8 c des r4. c4*5 bes c8 r8 c r4. c8 r4. g'8 ges c, des 
  | % 46
  ges g e ees des4 c8 
}

trackE = <<

  \clef bass
  
  \context Voice = voiceA \trackEchannelA
  \context Voice = voiceB \trackEchannelB
>>


\score {
  <<
    \context Lyrics=trackA \trackA
    \context Staff=trackB \trackB
    \context Staff=trackC \trackC
    \context Staff=trackD \trackD
    \context Staff=trackE \trackE
  >>
  \layout {}
  \midi {}
}
