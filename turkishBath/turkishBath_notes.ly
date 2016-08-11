\version "2.18.2"

pieceTitle = "Turkish Bath"
composer = "Don Ellis"

\header{  title = \pieceTitle
  composer = \composer
}

globalStyle = { % Use for various rendering styles that apply to all parts
  \accidentalStyle "modern-cautionary"
}

structure = { % Use to give annotations, mainly, also checking meaure consistency
  s1*7/4^\markup{Intro/Bourdon} \breathe |
  s1*7/4^\markup{Start cue} |
  \bar "||"
  s1*7/4^\markup{Intro Accomp.} |
  s1*7/4*3 |
  \repeat volta 2 {
    s1*7/4^\markup{Theme} |
    s1*7/4*7 |
    s1*7/4*4 |
  }
  s1*7/4^\markup{Bridge} |
  s1*7/4*9 |
  %2 gt - gt+tb (bass)
  %2 tpt - tenor
  %2 trb - oboe
  %2 wind - violin
  %2 tpt 8 - oboe ++ ?
  \repeat volta 2 {
    s1*7/4^\markup{Solos/Riffs (2nd time)} |
    s1*7/4*7 |
    s1*7/4*4 |
  }
}

global = { % Use for tempo and key changes
  \time 7/4
  \tempo 4 = 136
  \key f \minor
}


chordSeq = \chordmode {
  c1:1 ~ c2.:1 | 
  c1:1 ~ c2.:1 | 
  c1:5 ~ c4:5 des2:5|
  c1:5 ~ c4:5 des2:5|
  c1:5 ~ c4:5 des2:5|
  c1:5 ~ c4:5 des2:5|
  % theme
  c1:5 ~ c4:5 des2:5|
  c1:5 ~ c4:5 des2:5|
  c1:5 ~ c4:5 des2:5|
  c1:5 ~ c4:5 des2:5|
  f1:m ~ f4:m ges2:5|
  f1:m ~ f4:m ges2:5|
  c1:5 ~ c4:5 des2:5|
  c1:5 ~ c4:5 des2:5|
  g1:5 ~ g4:5 ges2:5|
  f1:m ~ f4:m ges2:5|
  c1:5 ~ c4:5 des2:5|
  c1:5 ~ c4:5 des2:5|
  % bridge
  c1:5 ~ c4:5 des2:5|
  c1:5 ~ c4:5 des2:5|
  c1:5 ~ c4:5 des2:5|
  c1:5 ~ c4:5 des2:5|
  c1:5 ~ c4:5 des2:5|
  c1:5 ~ c4:5 des2:5|
  c1:5 ~ c4:5 des2:5|
  c1:5 ~ c4:5 des2:5|
  c1:5 ~ c4:5 des2:5|
  c1:5 ~ c4:5 des2:5|
  % Riffs
  c1:5 ~ c4:5 des2:5|
  c1:5 ~ c4:5 des2:5|
  c1:5 ~ c4:5 des2:5|
  c1:5 ~ c4:5 des2:5|
  f1:m ~ f4:m ges2:5|
  f1:m ~ f4:m ges2:5|
  c1:5 ~ c4:5 des2:5|
  c1:5 ~ c4:5 des2:5|
  g1:5 ~ g4:5 ges2:5|
  f1:m ~ f4:m ges2:5|
  c1:5 ~ c4:5 des2:5|
  c1:5 ~ c4:5 des2:5|
}


DrumsUp = \drummode {
  r1 r2.\fermata | 
  r1 r2. |
  \repeat unfold 4 {
    hho8 hhc hho8 hhc hho8 hhc hho8 hhc hho8 hhc hho8 hhc hho8 hhc |
  }
  % theme
  \repeat unfold 3 {
    hho8 hhc hho8 hhc hho8 hhc hho8 hhc hho8 hhc hho8 hhc hho8 hhc |
  }
  hho8 hhc hho8 hhc hho8 hhc hho8 hhc hho8 hhc hho8 s4. |
  \repeat unfold 4 {
    hho8 hhc hho8 hhc hho8 hhc hho8 hhc hho8 hhc hho8 hhc hho8 hhc |
  }
  \repeat unfold 3 {
    hho8 hhc hho8 hhc hho8 hhc hho8 hhc hho8 hhc hho8 hhc hho8 hhc |
  }
  hho8 hhc hho8 hhc hho8 hhc hho8 s8 s2. |
  % bridge
  \repeat unfold 3 {
    hho8 hhc hho8 hhc hho8 hhc hho8 hhc hho8 hhc hho8 hhc hho8 hhc |
  }
  hho8 hhc hho8 hhc hho8 hhc hho8 hhc hho8 hhc hho8 s4.|
  \repeat unfold 2 {
    hho8 hhc hho8 hhc hho8 hhc hho8 hhc hho8 hhc hho8 hhc hho8 hhc |
  }
  \repeat unfold 3 {
    cymca8 cymcb cymca8 cymcb cymca8 cymcb cymca8 cymcb 
    cymca8 cymcb cymca8 cymcb cymca8 cymcb |
  }
  cymca8 cymcb cymca8 cymcb cymca8 cymcb cymca8 s8 s2. |
  % solo / riffs
  \repeat unfold 12 {
    s1 s2. |
  }
}

DrumsDown = \drummode {
  r1 r2.\fermata | 
  r1 r4 r8 sn sn16 sn sn sn  |
  \repeat unfold 4 {
    bd4 sn bd sn bd8 sn8 r8 bd8 sn8 r  |
  }  
  \repeat unfold 3 {
    bd4 sn bd sn bd8 sn8 r8 bd8 sn8 r  |
  }  
  bd4 sn bd sn bd8 sn8 r8 sn16 sn tommh tommh toml toml |
  \repeat unfold 3 {
    bd4 sn bd sn bd8 sn8 r8 bd8 sn8 r  |
  }  
    bd4 sn bd sn bd8 sn8 r8 bd8 sn8 r  |
  \repeat unfold 3 {
    bd4 sn bd sn bd8 sn8 r8 bd8 sn8 r  |
  }  
    bd4 sn bd sn8 sn16 sn tommh tommh tommh tommh 
    toml toml toml toml tomfl tomfl tomfl tomfl |
  % bridge
  \repeat unfold 3 {
    bd4 r4 bd r8 bd8 r8 bd8 bd4 r8 bd |
  }  
  bd4 sn bd sn bd8 sn8 r8 sn16 sn tommh tommh toml toml |
  \repeat unfold 4 {
    bd4 sn bd sn bd8 sn8 r8 bd8 sn8 r  |
  }  
  bd4 sn bd sn bd8 sn8 r8 bd8 sn8 r  |
  bd4 sn bd sn8 sn16 sn tommh tommh tommh tommh 
    toml toml toml toml tomfl tomfl tomfl tomfl |
  % solo / riffs
  \repeat unfold 12 {
    <bd cymca>4 sn bd8 sn16 sn sn8 <bd cymca>8 r8 bd8 sn8 bd8 sn bd |
  }  
}

DrumsNotes = {
  \global
  \set Staff.instrumentName = #"Drums "
  \set Staff.midiInstrument = "synth drum"

  \compressFullBarRests
  <<
    \new DrumVoice {\voiceOne \DrumsUp }
    \new DrumVoice {\voiceTwo \DrumsDown }
  >>
}   %**********************************


ViolinNotes = \transpose \originPitch \targetPitchViolin {
  \new Voice {
    \global
    \relative c''{
      \set Staff.instrumentName = #"Violin "
      \set Staff.midiInstrument = \midiInstrViolin
      \transposition \originPitchViolin % for MIDI files? to be verified

      \clef \clefViolin
      \compressFullBarRests
      c1~ c2.\fermata |
      c1~ c2. |
      r4 c^. r8 c4^. r8 r4 r4 des4^. |
      r4 c^. r8 c4^. r8 r4 r4 des4^. |
      r4 c^. r8 c4^. r8 r4 r4 des4^. |
      r4 c^. r8 c4^. r8 r4 r4 g'8 bes |
      % theme
      c1 ~ c4 b4. aes8 |
      g1 ~ g2 c,8 ees |
      \tuplet 3/2 {fis16 g fis} ees8 f bes, c ees4 g4 c8 ges8 f4 des8 |
      c1 ~ c2. | 
      r4 f f f f ees8 c a' ges |
      f4 c' bes8 aes4 ees8 f4 ges4 des8 ges |
      c,4 g' bes8 g bes g f ees f4 des | 
      c1  r2 a'8 aes |
      g8 d4 g8 d'4 g, d8 g a aes g ges |
      f4 c f,8 bes ees aes^. r c, ees4 aes | 
      g1 ~ g4 aes8^^ r4 aes8 | 
      g1 r4 g4 bes  | 
      % bridge
      R1 * 7/4 * 2 |
      R1 * 7/4 * 2 |
      R1 * 7/4 * 2 |
      r4 c c8 g bes c r8 g bes4 des | 
      r4 c c8 g bes c r8 g bes4 des | 
      r4 c c8 g bes c r8 g bes4 des | 
      r4 c c8 g bes c r8 g bes4 des | 
      % riffs
      <e,, g c>8^- <e g c>8^. r4 r4 r8 <e g c>8^. r4 <f aes des>4^- <f aes des>^- |
      <e g c>8^- <e g c>8^. r4 r4 r8 <e g c>8^. r4 <f aes des>4^- <f aes des>^- |
      <e g c>8^- <e g c>8^. r4 r4 r8 <e g c>8^. r4 <f aes des>4^- <f aes des>^- |
      <e g c>8^- <e g c>8^. r4 r4 r8 <e g c>8^. r4 <f aes des>4^- <f aes des>^- |
      <aes c f>8^- <aes c f>8^. r4 r4 r8 <aes c f>8^. r4 <ges bes des>4^- <ges bes des>^- |
      <aes c f>8^- <aes c f>8^. r4 r4 r8 <aes c f>8^. r4 <ges bes des>4^- <ges bes des>^- |
      <e g c>8^- <e g c>8^. r4 r4 r8 <e g c>8^. r4 <f aes des>4^- <f aes des>^- |
      <e g c>8^- <e g c>8^. r4 r4 r8 <e g c>8^. r4 <f aes des>4^- <f aes des>^- |
      <b d g>8^- <b d g>8^. r4 r4 r8 <b d g>8^. r4 <b d g>4^- <bes des ges>^- |
      <aes c f>8^- <aes c f>8^. r4 r4 r8 <aes c f>8^. r4 <ges bes des>4^- <ges bes des>^- |
      <e g c>8^- <e g c>8^. r4 r4 r8 <e g c>8^. r4 <f aes des>4^- <f aes des>^- |
      <e g c>8^- <e g c>8^. r4 r4 r8 <e g c>8^. r4 <f aes des>4^- <f aes des>^- |
    }
  }
}

OboeNotes = \transpose \originPitch \targetPitchOboe {
  \new Voice {
    \global
    \relative c''{
      \set Staff.instrumentName = #"Oboe "
      \set Staff.midiInstrument = \midiInstrOboe
      \transposition \originPitchOboe % for MIDI files? to be verified

      \clef \clefOboe
      \compressFullBarRests
      c1~ c2.\fermata |
      c1~ c2. |
      r4 g^. r8 g4^. r8 r4 r4 aes4^.  |
      r4 g^. r8 g4^. r8 r4 r4 aes4^.  |
      r4 g^. r8 g4^. r8 r4 r4 aes4^.  |
      r4 g^. r8 g4^. r8 r4 r4 <<{gis'8 b}{g, bes}>> |
      % theme
%      <<
%        {
%          c1 ~ c4 b4. aes8 |
%          g1 ~ g2 c,8 ees |
%          \tuplet 3/2 {fis16 g fis} ees8 f bes, c ees4 g4 c8 ges8 f4 des8 |
%          c1 ~ c2. | 
%          r4 f f f f ees8 c a' ges |
%          f4 c' bes8 aes4 ees8 f4 ges4 des8 ges |
%          c,4 g' bes8 g bes g f ees f4 des | 
%          c1  r2 a'8 aes |
%          g8 d4 g8 d'4 g, d8 g a aes g ges |
%          f4 c f,8 bes ees aes^. r c, ees4 aes | 
%          g1 ~ g4 aes8^^ r4 aes8 | 
%          g1 r4 g4 bes  |
%        }
        {
          cis'1 ~ cis4 bis4. a8 |
          gis1 ~ gis2 cis,8 e |
          \tuplet 3/2 {fisis16 gis fisis} e8 fis b, cis 
          e4 gis4 cis8 g8 fis4 d8 |
          cis1 ~ cis2. | 
          r4 fis fis fis fis e8 cis ais' g |
          fis4 cis' b8 a4 e8 fis4 g4 d8 g |
          cis,4 gis' b8 gis b gis fis e fis4 d | 
          cis1  r2 ais'8 a |
          gis8 dis4 gis8 dis'4 gis, dis8 gis ais a gis g |
          fis4 cis fis,8 b e a^. r cis, e4 a | 
          gis1 ~ gis4 a8^^ r4 a8 | 
          gis1 r4 gis4 b  |
        }
%      >>
      % bridge 
      R1 * 7/4 * 2 |
      R1 * 7/4 * 2 |
      r4 g g8 c, ees g r8 c, ees4 aes | 
      r4 g g8 c, ees g r8 c, ees4 aes | 
      r4 g g8 c, ees g r8 c, ees4 aes | 
      r4 g g8 c, ees g r8 c, ees4 aes | 
      r4 c c8 g bes c r8 g bes4 des | 
      r4 c c8 g bes c r8 g bes4 des | 
      % riffs / solo
      <e,, g c>8^- <e g c>8^. r4 r4 r8 <e g c>8^. r4 <f aes des>4^- <f aes des>^- |
      <e g c>8^- <e g c>8^. r4 r4 r8 <e g c>8^. r4 <f aes des>4^- <f aes des>^- |
      <e g c>8^- <e g c>8^. r4 r4 r8 <e g c>8^. r4 <f aes des>4^- <f aes des>^- |
      <e g c>8^- <e g c>8^. r4 r4 r8 <e g c>8^. r4 <f aes des>4^- <f aes des>^- |
      <aes c f>8^- <aes c f>8^. r4 r4 r8 <aes c f>8^. r4 <ges bes des>4^- <ges bes des>^- |
      <aes c f>8^- <aes c f>8^. r4 r4 r8 <aes c f>8^. r4 <ges bes des>4^- <ges bes des>^- |
      <e g c>8^- <e g c>8^. r4 r4 r8 <e g c>8^. r4 <f aes des>4^- <f aes des>^- |
      <e g c>8^- <e g c>8^. r4 r4 r8 <e g c>8^. r4 <f aes des>4^- <f aes des>^- |
      <b d g>8^- <b d g>8^. r4 r4 r8 <b d g>8^. r4 <b d g>4^- <bes des ges>^- |
      <aes c f>8^- <aes c f>8^. r4 r4 r8 <aes c f>8^. r4 <ges bes des>4^- <ges bes des>^- |
      <e g c>8^- <e g c>8^. r4 r4 r8 <e g c>8^. r4 <f aes des>4^- <f aes des>^- |
      <e g c>8^- <e g c>8^. r4 r4 r8 <e g c>8^. r4 <f aes des>4^- <f aes des>^- |
    }
  }
}

TenorSaxNotes = \transpose \originPitch \targetPitchTenorSax {
  \new Voice {
    \global
    \relative c''{
      \set Staff.instrumentName = #"TenorSax "
      \set Staff.midiInstrument = \midiInstrTenorSax
      \transposition \originPitchTenorSax % for MIDI files? to be verified

      \clef \clefTenorSax
      \compressFullBarRests
      c,1~ c2.\fermata |
      c1~ c2. |
      r4 c^. r8 c4^. r8 r4 r4 des4^.  |
      r4 c^. r8 c4^. r8 r4 r4 des4^.  |
      r4 c^. r8 c4^. r8 r4 r4 des4^.  |
      r4 c^. r8 c4^. r8 r4 r4 des4^.  |
      % theme
      r4 c^. r8 c4^. r8 r4 r4 des4^.  |
      r4 c^. r8 c4^. r8 r4 r4 des4^.  |
      r4 c^. r8 c4^. r8 r4 r4 des4^.  |
      r4 c^. r8 c4^. r8 r4 r4 des4^.  |
      r4 f^. r8 f4^. r8 r4 r4 ges4^.  |
      r4 f^. r8 f4^. r8 r4 r4 ges4^.  |
      r4 c,^. r8 c4^. r8 r4 r4 des4^.  |
      r4 c^. r8 c4^. r8 r4 r4 des4^.  |
      r4 g^. r8 g4^. r8 r4 r4 ges4^.  |
      r4 f^. r8 f4^. r8 r4 r4 ees4^.  |
      r4 c^. r8 c4^. r8 r4 r4 des4^.  |
      r4 c^. r8 c4^. r8 r4 r4 des4^.  |
      % bridge
      R1 * 7/4 * 2 |
      r4 c c8 g bes c r8 g bes4 des | 
      r4 c c8 g bes c r8 g bes4 des | 
      r4 c c8 g bes c r8 g bes4 des | 
      r4 c c8 g bes c r8 g bes4 des | 
      r4 c c8 g bes c r8 g bes4 des | 
      r4 c c8 g bes c r8 g bes4 des | 
      r4 c c8 g bes c r8 g bes4 des | 
      r4 c c8 g bes c r8 g bes4 des | 
      % riffs
      <c, e g>8^- <c e g>8^. r4 r4 r8 <c e g>8^. r4 <des f aes>4^- <des f aes >^- |
      <c e g>8^- <c e g>8^. r4 r4 r8 <c e g>8^. r4 <des f aes>4^- <des f aes >^- |
      <c e g>8^- <c e g>8^. r4 r4 r8 <c e g>8^. r4 <des f aes>4^- <des f aes >^- |
      <c e g>8^- <c e g>8^. r4 r4 r8 <c e g>8^. r4 <des f aes>4^- <des f aes >^- |
      <c f aes>8^- <c f aes>8^. r4 r4 r8 <c f aes>8^. r4 <des ges bes>4^- <des ges bes >^- |
      <c f aes>8^- <c f aes>8^. r4 r4 r8 <c f aes>8^. r4 <des ges bes>4^- <des ges bes >^- |
      <c e g>8^- <c e g>8^. r4 r4 r8 <c e g>8^. r4 <des f aes>4^- <des f aes >^- |
      <c e g>8^- <c e g>8^. r4 r4 r8 <c e g>8^. r4 <des f aes>4^- <des f aes >^- |
      <d g b>8^- <d g b>8^. r4 r4 r8 <d g b>8^. r4 <d g b>4^- <ees ges bes>^- |
      <c f aes>8^- <c f aes>8^. r4 r4 r8 <c f aes>8^. r4 <des ges bes>4^- <des ges bes >^- |
      <c e g>8^- <c e g>8^. r4 r4 r8 <c e g>8^. r4 <des f aes>4^- <des f aes >^- |
      <c e g>8^- <c e g>8^. r4 r4 r8 <c e g>8^. r4 <des f aes>4^- <des f aes >^- |
    }
  }
}

TromboneNotes = \transpose \originPitch \targetPitchTrombone {
  \new Voice {
    \global
    \relative c''{
      \set Staff.instrumentName = #"Trombone "
      \set Staff.midiInstrument = \midiInstrTrombone
      \transposition \originPitchTrombone % for MIDI files? to be verified

      \clef \clefTrombone
      \compressFullBarRests
      c,,1~ c2.\fermata |
      c1~ c2. |
      c4^- e^. c8^- e4^. c8^- ~ c8 c^- des4^- f8^. des8^- |
      c4^- e^. c8^- e4^. c8^- ~ c8 c^- des4^- f8^. des8^- |
      c4^- e^. c8^- e4^. c8^- ~ c8 c^- des4^- f8^. des8^- |
      c4^- e^. c8^- e4^. c8^- ~ c8 c^- des4^- f8^. des8^- |
      % theme
      c4^- e^. c8^- e4^. c8^- ~ c8 c^- des4^- f8^. des8^- |
      c4^- e^. c8^- e4^. c8^- ~ c8 c^- des4^- f8^. des8^- |
      c4^- e^. c8^- e4^. c8^- ~ c8 c^- des4^- f8^. des8^- |
      c4^- e^. c8^- e4^. c8^- ~ c8 c^- des4^- f8^. e8^- |
      f4^- aes^. f8^- aes4^. f8^- ~ f8 f^- ges4^- bes8^. ges8^- |
      f4^- aes^. f8^- aes4^. f8^- ~ f8 f^- ges4^- bes8^. ges8^- |
      c,4^- e^. c8^- e4^. c8^- ~ c8 c^- des4^- f8^. des8^- |
      c4^- e^. c8^- e4^. c8^- ~ c8 c^- des4^- f8^. fis8^- |
      g4^- b^. g8^- b4^. g8^- ~ g8 g^- ges4^- bes8^. ges8^- |
      f4^- aes^. f8^- aes4^. f8^- ~ f8 f^- ges4^- bes8^. des,8^- |
      c4^- e^. c8^- e4^. c8^- ~ c8 c^- des4^- f8^. des8^- |
      c4^- e^. c8^- e4^. c8^- ~ c8 c^- des4^- f8^. des8^- |
      % bridge
      c4 r c r8 c8~ c c des4. des8 |
      c4 r c r8 c8~ c c des4. des8 |
      c4 r c r8 c8~ c c des4. des8 |
      c4 r c r8 c8~ c c des4. des8 |
      c4 r c r8 c8~ c c des4. des8 |
      c4 r c r8 c8~ c c des4. des8 |
      c4 r c r8 c8~ c c des4. des8 |
      c4 r c r8 c8~ c c des4. des8 |
      c4 r c r8 c8~ c c des4. des8 |
      c4 r c r8 c8~ c c des4. des8 |
      % riffs
      c4^- e^. c8^- e4^. c8^- ~ c8 c^- des4^- f8^. des8^- |
      c4^- e^. c8^- e4^. c8^- ~ c8 c^- des4^- f8^. des8^- |
      c4^- e^. c8^- e4^. c8^- ~ c8 c^- des4^- f8^. des8^- |
      c4^- e^. c8^- e4^. c8^- ~ c8 c^- des4^- f8^. e8^- |
      f4^- aes^. f8^- aes4^. f8^- ~ f8 f^- ges4^- bes8^. ges8^- |
      f4^- aes^. f8^- aes4^. f8^- ~ f8 f^- ges4^- bes8^. ges8^- |
      c,4^- e^. c8^- e4^. c8^- ~ c8 c^- des4^- f8^. des8^- |
      c4^- e^. c8^- e4^. c8^- ~ c8 c^- des4^- f8^. fis8^- |
      g4^- b^. g8^- b4^. g8^- ~ g8 g^- ges4^- bes8^. ges8^- |
      f4^- aes^. f8^- aes4^. f8^- ~ f8 f^- ges4^- bes8^. des,8^- |
      c4^- e^. c8^- e4^. c8^- ~ c8 c^- des4^- f8^. des8^- |
      c4^- e^. c8^- e4^. c8^- ~ c8 c^- des4^- f8^. des8^- |
    }
  }
}

GuitarNotes = \transpose \originPitch \targetPitchGuitar {
  \new Voice {
    \global
    \relative c''{
      \set Staff.instrumentName = #"Guitar "
      \set Staff.midiInstrument = \midiInstrGuitar
      \transposition \originPitchGuitar % for MIDI files? to be verified

      \clef \clefGuitar
      \compressFullBarRests
      c1~ c2.\fermata |
      c,4 g' c8 bes~ bes g c,8 g' des' c bes g |
      % intro 
      c,4 g' c8 bes~ bes g c,8 g' des' c bes g |
      c,4 g' c8 bes~ bes g c,8 g' des' c bes g |
      c,4 g' c8 bes~ bes g c,8 g' des' c bes g |
      c,4 g' c8 bes~ bes g c,8 g' des' c bes g |
      % theme
      c,4 g' c8 bes~ bes g c,8 g' des' c bes g |
      c,4 g' c8 bes~ bes g c,8 g' des' c bes g |
      c,4 g' c8 bes~ bes g c,8 g' des' c bes g |
      c,4 g' c8 bes~ bes g c,8 g' des' c bes g |
      f4 c' f8 ees~ ees c f,8 c' ges4 des'8 bes |
      f4 c' f8 ees~ ees c f,8 c' ges4 des'8 bes |
      c,4 g' c8 bes~ bes g c,8 g' des' c bes g |
      c,4 g' c8 bes~ bes g c,8 g' des' c bes g |
      g4 d' g8 f~ f d g, d' des bes g ges |
      f4 c' f8 ees~ ees c f,8 c' ges4 des'8 bes |
      c,4 g' c8 bes~ bes g c,8 g' des' c bes g |
      c,4 g' c8 bes~ bes g c,8 g' des' c bes g |
      % bridge 
      r4 <e c'>8. <e c'>16~ <e c'>8 <e c'>8~ <e c'>4  <e c'>4  r4 <f des'>4
      r4 <e c'>8. <e c'>16~ <e c'>8 <e c'>8~ <e c'>4  <e c'>4  r4 <f des'>4
      r4 <e c'>8. <e c'>16~ <e c'>8 <e c'>8~ <e c'>4  <e c'>4  r4 <f des'>4
      r4 <e c'>8. <e c'>16~ <e c'>8 <e c'>8~ <e c'>4  <e c'>4  r4 <f des'>4
      r4 <e c'>8. <e c'>16~ <e c'>8 <e c'>8~ <e c'>4  <e c'>4  r4 <f des'>4
      r4 <e c'>8. <e c'>16~ <e c'>8 <e c'>8~ <e c'>4  <e c'>4  r4 <f des'>4
      r4 <e c'>8. <e c'>16~ <e c'>8 <e c'>8~ <e c'>4  <e c'>4  r4 <f des'>4
      r4 <e c'>8. <e c'>16~ <e c'>8 <e c'>8~ <e c'>4  <e c'>4  r4 <f des'>4
      r4 <e c'>8. <e c'>16~ <e c'>8 <e c'>8~ <e c'>4  <e c'>4  r4 <f des'>4
      r4 <e c'>8. <e c'>16~ <e c'>8 <e c'>8~ <e c'>4  <e c'>4  r4 <f des'>4
      % riffs / solos
      c4 g' c8 bes~ bes g c,8 g' des' c bes g |
      c,4 g' c8 bes~ bes g c,8 g' des' c bes g |
      c,4 g' c8 bes~ bes g c,8 g' des' c bes g |
      c,4 g' c8 bes~ bes g c,8 g' des' c bes g |
      f4 c' f8 ees~ ees c f,8 c' ges4 des'8 bes |
      f4 c' f8 ees~ ees c f,8 c' ges4 des'8 bes |
      c,4 g' c8 bes~ bes g c,8 g' des' c bes g |
      c,4 g' c8 bes~ bes g c,8 g' des' c bes g |
      g4 d' g8 f~ f d g, d' des bes g ges |
      f4 c' f8 ees~ ees c f,8 c' ges4 des'8 bes |
      c,4 g' c8 bes~ bes g c,8 g' des' c bes g |
      c,4 g' c8 bes~ bes g c,8 g' des' c bes g |
    }
  }
}

PianoNotes = \transpose \originPitch \targetPitchPiano {
  \new Voice {
    \global
    \relative c''{
      \set Staff.instrumentName = #"Piano "
      \set Staff.midiInstrument = \midiInstrPiano
      \transposition \originPitchPiano % for MIDI files? to be verified

      \clef \clefPiano
      \compressFullBarRests
    }
  }
}
musicPieceOne = {
  <<

    \tag #'score \new ChordNames {\chordSeq}
    \tag #'Drums \transpose \originPitch \targetPitchDrums {
      \new ChordNames {\chordSeq}}

    \tag #'Violin \transpose \originPitch \targetPitchViolin {
      \new ChordNames {\chordSeq}}

    \tag #'Oboe \transpose \originPitch \targetPitchOboe {
      \new ChordNames {\chordSeq}}

    \tag #'TenorSax \transpose \originPitch \targetPitchTenorSax {
      \new ChordNames {\chordSeq}}

    \tag #'Trombone \transpose \originPitch \targetPitchTrombone {
      \new ChordNames {\chordSeq}}

    \tag #'Guitar \transpose \originPitch \targetPitchGuitar {
      \new ChordNames {\chordSeq}}

    \tag #'Piano \transpose \originPitch \targetPitchPiano {
      \new ChordNames {\chordSeq}}

    \tag #'score \tag #'Drums \new DrumStaff { << \globalStyle \structure \DrumsNotes >> }
    \tag #'score \tag #'Violin \new Staff { << \globalStyle \structure \ViolinNotes >> }
    \tag #'score \tag #'Oboe \new Staff { << \globalStyle \structure \OboeNotes >> }
    \tag #'score \tag #'TenorSax \new Staff { << \globalStyle \structure \TenorSaxNotes >> }
    \tag #'score \tag #'Trombone \new Staff { << \globalStyle \structure \TromboneNotes >> }
    \tag #'score \tag #'Guitar \new Staff { << \globalStyle \structure \GuitarNotes >> }
    \tag #'score \tag #'Piano \new Staff { << \globalStyle \structure \PianoNotes >> }
  >>
}
%%% Local Variables
%%% Lilypond-master-file: "turkishBath_score.ly"
%%% End:
% -*- master: turkishBath_score.ly;
% -*- output: turkishBath_score-score.pdf
