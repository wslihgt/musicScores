% Lily was here -- automatically converted by /sw/bin/midi2ly from cafe_1930.mid
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

trackAchannelA = {


  \key g \major
    
  \time 4/4 
  

  \key g \major
  
  \tempo 4 = 90 
  \skip 1*50 
  \time 15/4 
  \skip 4*15 
  | % 52
  
  \time 6/4 
  \skip 1. 
  | % 53
  
  \time 4/4 
  

  \key e \major
  \skip 1*30 

  \key g \major
  
}

trackA = <<
  \context Voice = voiceA \trackAchannelA
>>


trackBchannelA = {
  
  % [TEXT_EVENT] piste 11
  
}

trackBchannelB = \relative c {
  \voiceTwo
  r1*14 e''8*7 d16 c 
  | % 16
  b8*7 a16 g 
  | % 17
  g8*5 fis8 a c, 
  | % 18
  e2 dis 
  | % 19
  r8 e' b g d'2 
  | % 20
  r8 c g e b'2 
  | % 21
  r8 a e c g'2 
  | % 22
  r8 fis dis e fis g a16 r4*72/480 c16 r4*72/480 e16 r4*1416/480 e8 
  d 
  | % 24
  d8*7 c16 b 
  | % 25
  b2. a8 e 
  | % 26
  b'4. a8 e4 fis32 r4*20/480 g32 r4*20/480 a32 r4*20/480 b32 
  r4*20/480 c32 r4*20/480 d32 r4*20/480 
  | % 27
  dis2. d8 c 
  | % 28
  c2. b8 a 
  | % 29
  a8*5 g8 b e, 
  | % 30
  g2 fis 
  | % 31
  r8 e' g b, fis' e b g 
  | % 32
  r8 e' b' fis a g a b 
  | % 33
  d4. c16 b a4. g16 fis 
  | % 34
  e4. d16 c b4. a16 g 
  | % 35
  fis8. e16 g g g fis b8. g16 c c c b 
  | % 36
  e8. b16 fis' fis fis e fis e b' fis a g e b 
  | % 37
  r16 b' e b d fis, e b' d, c g' b, d c fis, e 
  | % 38
  r16 d' g g g g g fis d' c g d d c g d 
  | % 39
  r16 d a' g c ais e' d a'2 
  | % 40
  r16 c,, g' f ais gis d' c g'2 
  | % 41
  r8 dis, e g d' cis g'4 
  | % 42
  r8 d, dis fis c' b fis'4 
  | % 43
  e2. d8 c 
  | % 44
  b2. a8 g 
  | % 45
  g8*5 fis8 a c, 
  | % 46
  e2 dis 
  | % 47
  r8 e' b' g d'2 
  | % 48
  r8 c, b' e, b'2 
  | % 49
  r8 a, e' c g'1 fis2 
  | % 51
  e4*21 r8 b gis' fis e dis 
  | % 57
  b gis r8 gis e' dis cis b 
  | % 58
  gis dis r8 e a b cis e 
  | % 59
  dis cis b a gis fis f4 
  | % 60
  d'8. cis16 b4 a8 cis, gis' fis 
  | % 61
  f fis cis' b4 dis,8 fis e 
  | % 62
  dis16 e gis b e4 dis8 cis b ais 
  | % 63
  b cis dis1 r128*9 b32 r4*20/480 a'16 r4*145/480 a16 gis fis 
  e fis8 b4. r4*138/480 gis,32 r4*42/480 gis'16. r32 fis16 e dis 
  cis dis8 gis4. r8 cis, b16 a e' fis b a e cis 
  | % 67
  dis e cis dis e fis dis e fis gis e fis gis4 
  | % 68
  gis16 r4*72/480 gis16 r4*72/480 gis16 r4*696/480 fis16 gis 
  b a b4. gis fis16 gis e4 
  | % 70
  fis8. r16 gis4. fis8 e dis 
  | % 71
  b gis e'4. dis8 cis b 
  | % 72
  gis dis a'4. gis8 fis cis' 
  | % 73
  a e' cis2 gis'1. r1*7 b,4 a8 cis, gis' fis 
  | % 83
  f fis cis' b4 dis,8 fis e 
  | % 84
  gis b e4 dis8 cis b ais 
  | % 85
  b cis dis1 r8 dis ais16 b c cis d8 a4. r8 cis gis16 a ais b 
  c8 g'4. r8 b, fis16 g gis a ais8 f4. a8 e4. gis8 dis4. g8 dis8*7 
  e1 
}

trackBchannelBvoiceB = \relative c {
  \voiceOne
  r4*41856/480 b''16 r4*72/480 d16 r4*72/480 
  | % 23
  f2. r8*325 b16. r4*1750/480 fis32 r4*1994/480 b,32 r4*3012/480 gis'16 
  r4*72/480 gis16 r4*72/480 gis4. r4*768/480 a32 r4*20/480 gis32 
  r4*20/480 fis32 r4*1865/480 e32 
}

trackB = <<
  \context Voice = voiceA \trackBchannelA
  \context Voice = voiceB \trackBchannelB
  \context Voice = voiceC \trackBchannelBvoiceB
>>


trackCchannelA = {
  
  % [TEXT_EVENT] piste 21
  
}

trackCchannelB = \relative c {
  \voiceThree
  e4 c'8 e g b e,, fis 
  | % 2
  g4 c'8 b e g a,, b 
  | % 3
  c4 g''8 fis e c a c, 
  | % 4
  b4 g''8 fis dis c a b, 
  | % 5
  e,4 g'8 b fis' c g' e 
  | % 6
  g,,4 b'8 e fis g a b 
  | % 7
  d c c b b a a g 
  | % 8
  g fis fis a c,4 b 
  | % 9
  b,8 a' d f d' c f, e 
  | % 10
  b c e b' a16 e c b a e c b 
  | % 11
  ais4 cis'8 e g fis b,, c 
  | % 12
  cis ais' e' g d' cis b,,16 c cis d 
  | % 13
  dis8 a' c g' g fis d'4. d,8 a dis, d16. r4*140/480 b16. r4*140/480 g16. 
  r4*140/480 
  | % 15
  e4 c'8 e g b e,, fis 
  | % 16
  g4 c'8 b e g a,, b 
  | % 17
  c4 e'8 c b a16 g fis e d c 
  | % 18
  b4 g'8 a b c b, c 
  | % 19
  e,4 c'8 e g16 b g fis e8 b 
  | % 20
  e,4 c''8 b d16 c b a g fis e d 
  | % 21
  c8 a' <b c e >8 g a <b c e >8 a16 g fis e 
  | % 22
  dis8 a' c c, <a' b, c' >2 
  | % 23
  b,4 d'8 f d' c <gis, d' f b >4 
  | % 24
  f8 b d a' gis d b e, 
  | % 25
  a,2 a 
  | % 26
  a a 
  | % 27
  a4 g'8 d' c g'4. 
  | % 28
  d,4 dis'8 g fis c d,4 
  | % 29
  g,8 d' fis b e,16 fis g b d b g fis 
  | % 30
  e8 <cis' ais >4 e,8 dis <a' c >4 b,8 
  | % 31
  e,16 r4*72/480 c'16 r4*72/480 fis16 r4*1416/480 
  | % 32
  g,16 r4*72/480 fis'16 r4*72/480 b16 r4*1416/480 
  | % 33
  c,16 r4*72/480 b'16 r4*72/480 e16 r4*456/480 a,,16 r4*72/480 fis'16 
  r4*72/480 c'16 r4*456/480 
  | % 34
  b,16 fis' a c e8 g c,4 b 
  | % 35
  e,,8 <fis' g b >4 e,8 <g' fis b >4 e,8 fis 
  | % 36
  g <fis' b e >4 g,8 <fis' b e >4 a,8 b 
  | % 37
  c <b' e a >4 c,8 <b' e a >4 c,16 b a c 
  | % 38
  b8 <c a' g' dis >4. <c a' g' dis >2 
  | % 39
  ais8 g' d'4 a,16 g' ais cis f8 e 
  | % 40
  gis,, f' c'4 g,16 f' gis b dis8 d 
  | % 41
  fis,,16 e' g ais d cis ais e fis,2 
  | % 42
  b16 fis' a c e8 dis8*5 
  | % 43
  e,8 b' c e g2 
  | % 44
  g,8 b e fis b2 
  | % 45
  c,,8 a' b e d16 c a e d8 c 
  | % 46
  b a' b c c b a b, 
  | % 47
  e16 b' c e g2 g16 e c b 
  | % 48
  g b e fis b4 b8 e, b'16 fis e b 
  | % 49
  a4 g fis e 
  | % 50
  <a c >2 b 
  | % 51
  e,,1 
  | % 52
  c''8 e d b fis e g c 
  | % 53
  b fis d c e4 b 
  | % 54
  d a c b 
  | % 55
  e, b'' e fis 
  | % 56
  b <e,, b' gis' >2 <dis b' gis' >2 <cis gis' e' >2 <b gis' e' >2 
  <a e' cis' >4 <gis e' b' >4 <fis e' a >4 
  | % 59
  <g e' ais >4 <gis b' e, >4 <b' d, >4 <b cis, >2 fis,8 cis' 
  <gis' a cis >4 b,8 <gis' a cis >4. gis,8 dis' <b' ais dis >4 
  cis,8 <b' dis ais >4. ais,8 g' cis4 <dis, cis' g' >2 gis,8 fis' 
  c' a,16 ais b4 
  | % 64
  <cis' e >8 <dis fis >8 e, b' gis' fis,16 e dis8 b' 
  | % 65
  gis' e,16 dis cis8 gis' e' dis,16 cis b8 gis' 
  | % 66
  dis' cis,16 b a8 <e' cis' >8 gis, <b' e >8 fis, <e'' a, >8 
  | % 67
  g,, <ais' e' >8 ais, <cis' dis g, >8 a, <cis' dis g, >8 gis,32 
  r4*20/480 dis'32 r4*20/480 a'32 r4*20/480 cis32 r4*20/480 fis32 
  r4*20/480 b32 r4*500/480 b,4 e8 b' a,4 
  | % 69
  e'8 b' gis,4 e'8 b' fis,4 
  | % 70
  e'8 b' e,,4 e'8 gis dis,4 
  | % 71
  dis'8 gis cis,,4 cis'8 e b,4 
  | % 72
  b'8 dis a,4. <gis b' >8 a' e'4. <a, cis >8 gis'4. dis4 
  | % 74
  gis e,, <cis'' e a >2. e,,4 <gis'' dis b >8 <cis, a fis' >8*5 
  e,,4 <gis' b dis >8 <a e' cis >8 <b fis' dis >8 <e cis gis' >4. 
  <e,, b' a' cis e >2 <e b' b' dis fis >2 <e b' >2 dis'16 gis b 
  e 
  | % 79
  dis b gis dis <gis e' cis, >4 e''8 dis cis gis 
  | % 80
  r8 b, a,4. <b' gis, >8 <a cis >8 dis 
  | % 81
  <e ais, g, >4 <b e >8 gis' b16 ais a gis <cis,, b' f' cis' >2 
  fis,8 cis' <gis' a cis >4 b,8 <gis' a cis >4. gis,8 dis' <ais' b dis >4 
  cis,8 <b' ais dis >4. ais,8 g' cis4 <dis, cis' g' >2 gis,8 fis' 
  c' a,16 ais b8 a' 
  | % 86
  fis' b <dis,, fis ais dis >2 r16 d' a' e 
  | % 87
  d a e d <cis e gis cis >2 r16 c' g' d 
  | % 88
  c g d c <b d b' fis >2 r16 cis' c gis 
  | % 89
  ais16. r4*140/480 ais,16. r4*460/480 e''4 <gis, b, >2 <a b, >1 
  <e g b e b, e, >1 
}

trackCchannelBvoiceB = \relative c {
  \voiceOne
  r8 b r8*7 e8 r8*7 a8 r8*7 a8 r8*7 b,8 r8*7 e8 r2. 
  | % 7
  <a, b' e g >2 r2 
  | % 8
  <a' c b, >2 r4*5 <gis d' b' >4 
  | % 10
  r8*9 g8 r4*6400/480 c,16. r4*140/480 a16. r4*140/480 fis16. 
  r4*220/480 b8 r8*7 e8 r8*7 a8 r8*7 fis8 r8*7 b,8 r8*7 e8 r8*23 a8 
  r8*15 <g c e >4. r8 <fis b dis >4. 
  | % 26
  r8 <d' ais f >4. r8 b a4 
  | % 27
  r8 dis, r8*7 c'8 r4*5376/480 b,16 r4*72/480 e16 r4*72/480 g2. 
  | % 32
  r4*96/480 e16 r4*72/480 g16 r4*72/480 e'2. 
  | % 33
  r4*96/480 a,16 r4*72/480 c16 r4*72/480 a'4 r4*96/480 e,16 r4*72/480 b'16 
  r4*72/480 e4 
  | % 34
  r2 <e fis >2 
  | % 35
  r2*15 g4 b 
  | % 43
  r4*6598/480 d,32 r4*4982/480 b16 c e r16 b c e r16 b c e r16 a, 
  b c 
  | % 50
  dis,2. b4 
  | % 51
  r8 b' e g fis d a g 
  | % 52
  r8*95 a8 
  | % 64
  r8*35 c8 r4. c8 
  | % 69
  r4. cis8 r4. cis8 
  | % 70
  r4. b8 r4. b8 
  | % 71
  r4. gis8 r4. gis8 
  | % 72
  r4. e8 cis' r8 fis,,2 b r8*5 b8 r8*7 b8 r8*7 b8 r8*7 a''4. 
  r8 b4. r8 b, gis' fis r8*5 gis8 r4 dis4. r4 e,8 a r8 fis,4 
  | % 81
  r4 gis <d' b' fis' >4 r4*14080/480 f16. r4*140/480 <c a' >2 
  r4 
  | % 90
  dis' r4 dis 
}

trackCchannelBvoiceC = \relative c {
  \voiceFour
  r8*205 <c' e >4. 
  | % 27
  r4*211 <b, gis' >2 
}

trackC = <<

  \clef G %bass
  
  \context Voice = voiceA \trackCchannelA
  \context Voice = voiceB \trackCchannelB
  \context Voice = voiceC \trackCchannelBvoiceB
  \context Voice = voiceD \trackCchannelBvoiceC
>>


trackDchannelA = {
  
  % [TEXT_EVENT] piste101
  
}

trackD = <<
  \context Voice = voiceA \trackDchannelA
>>


trackEchannelA = {
  
  % [TEXT_EVENT] piste111
  
}

trackE = <<
  \context Voice = voiceA \trackEchannelA
>>


trackFchannelA = {
  
  % [TEXT_EVENT] piste121
  
}

trackF = <<
  \context Voice = voiceA \trackFchannelA
>>


trackGchannelA = {
  
  % [TEXT_EVENT] piste131
  
}

trackG = <<
  \context Voice = voiceA \trackGchannelA
>>


trackHchannelA = {
  
  % [TEXT_EVENT] piste141
  
}

trackH = <<
  \context Voice = voiceA \trackHchannelA
>>


trackIchannelA = {
  
  % [TEXT_EVENT] piste151
  
}

trackI = <<
  \context Voice = voiceA \trackIchannelA
>>


trackJchannelA = {
  
  % [TEXT_EVENT] piste201
  
}

trackJ = <<
  \context Voice = voiceA \trackJchannelA
>>


trackKchannelA = {
  
  % [TEXT_EVENT] piste211
  
}

trackK = <<
  \context Voice = voiceA \trackKchannelA
>>


trackLchannelA = {
  
  % [TEXT_EVENT] piste221
  
}

trackL = <<
  \context Voice = voiceA \trackLchannelA
>>


trackMchannelA = {
  
  % [TEXT_EVENT] piste231
  
}

trackM = <<
  \context Voice = voiceA \trackMchannelA
>>


trackNchannelA = {
  
  % [TEXT_EVENT] piste241
  
}

trackN = <<
  \context Voice = voiceA \trackNchannelA
>>


trackOchannelA = {
  
  % [TEXT_EVENT] piste301
  
}

trackO = <<
  \context Voice = voiceA \trackOchannelA
>>


trackPchannelA = {
  
  % [TEXT_EVENT] piste401
  
}

trackP = <<
  \context Voice = voiceA \trackPchannelA
>>


trackQchannelA = {
  
  % [TEXT_EVENT] piste411
  
}

trackQ = <<
  \context Voice = voiceA \trackQchannelA
>>


\score {
  <<
    \context Staff=trackB \trackA
    \context Staff=trackB \trackB
    \context Staff=trackC \trackA
    \context Staff=trackC \trackC
  >>
  \layout {}
  \midi {}
}
