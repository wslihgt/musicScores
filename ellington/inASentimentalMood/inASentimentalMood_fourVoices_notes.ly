%%%%% piece.ly
%%%%% (This is the global definitions file)

\version "2.16.0"

pieceTitle = "In a Sentimental Mood"
pieceOneTitle = "In a Sentimental Mood"

\header{
  title = \pieceTitle
  composer = "Duke Ellington"
}

% some things to define in the ..._score.ly file:
%originpitch = c' %c' %bes'% f % c'
%targetpitchone = c'
%targetpitchtwo = c'
%targetpitchthr = c'
%targetpitchfou = c'

%clefVThree = G % alto % bass... 

% midiInstrOne
% midiInstrTwo
% midiInstrThr
% midiInstrFou

globalStyle = {
  \accidentalStyle "modern-cautionary"
  
  % structure of the piece: 
  s1 |
  % \bar "||"
  {
    s1 * 8
  }
  s1 % alternative to be added everywhere!
  \bar "||"
  s1 * 8
  \bar "||"
  {
    s1 * 8
  }
  \bar "|."
  
}

global = {
  \time 4/4
  \tempo 4 = 60
  \key d \minor 
  
}


chordSequence = \transpose \originpitch \targetpitchchord {
  \chordmode {
    r1 

    \repeat volta 2 {
    d2:m d2:m7+|
    d2:m7 d2:m6 |
    g2:m g2:m7+ |
    g2:m7 g4:m6 a:7 |
    d1:m |
    d1:7 |
    g2:m7 c:7 |}
    \alternative { 
      {f1:maj7 |}
      {f2:maj7 ees4:m7 aes:7 |}
    }

    des2:maj7 bes:m7 |
    ees:m7 aes:7 |
    des2:maj7 bes:7 |
    ees:7 aes:7 |
    des2:maj7 bes:m7 |
    ees:m7 aes:7 |
    g1:m7 |
    c:7 |
    
    d2:m d2:m7+|
    d2:m7 d2:m6 |
    g2:m g2:m7+ |
    g2:m7 g4:m6 a:7 |
    d1:m |
    d1:7 |
    g2:m7 ges:7 |
    f1:maj7 |
    
  }
}

one = \transpose \originpitch \targetpitchone {\new Voice { 
  \global
  \relative c'{
  \set Staff.instrumentName = #"V1 "
  \set Staff.midiInstrument = \midiInstrOne
  \transposition c' % for MIDI files? to be verified

  \compressFullBarRests
  r4 f8 g a c d f |
  \repeat volta 2 {
    g1~ |
    g2 f8 e d c |
    a1~ |
    a4 a8 c d aes g f |
    d2~ d8 f a c  |
    e2. d4 |
    bes2. e,4 |
  }
  \alternative{
    {g4 f8 g a c d f |}
    {f,2 r |}
  }

  c'4 bes8 c ees des c bes |
  f4 ees8 f ges aes f ees |
  c2 \times 2/3 {fis4 g bes}  |
  \times 2/3 {b c ees} \times 2/3 {e f aes} |
  c,4 bes8 c ees des c bes |
  f4 ees8 f ges aes f ees |
  c1 |
  
  r4 f8 g a c d f |
  g1~ |
  g2 f8 e d c |
  a1~ |
  a4 a8 c d aes g f |
  d2~ d8 f a c  |
  e2. d4 |
  bes2. e,4 |
  f1 |

  }}}   %*********************************

two = \transpose \originpitch \targetpitchtwo {\new Voice { 
  \global
  \relative c'{
  \set Staff.instrumentName = #"V2 "
  \set Staff.midiInstrument = \midiInstrTwo
  \transposition c' % for MIDI files? to be verified

  \compressFullBarRests
  R1 |
  d'1 ~ |
  d1 |
  g,1~ |
  g2 ~g4 bes8 cis |
  d1 |
  c1 |
  bes1 |
  a4-. r2.  |
  a4-- r4  % alternative
  
  ges8-. ges4.-- | 

  r8 des'( ees des) c-. bes4.-- |
  des8( bes des4) des8-. c4.-- |
  r8 des( ees des) \times 2/3 {ees4-- d-- d-- } |
  \times 2/3 {des-- bes-- bes-- } \times 2/3 {bes-- aes-- c-- } |
  
  des2 des |
  des2 c |
  bes4 f'8( d c bes g4) |
  bes4 r2. |

  r4 \times 2/3 {d8( f d} \times 2/3 {f cis f)} r4 |
  r4 \times 2/3 {b,8( f' b,} \times 2/3 {f' bes, f')} r4 |
  r4 \times 2/3 {g,8( bes g} \times 2/3 {bes g bes)} r4 |
  r4 \times 2/3 {g8( bes g} \times 2/3 {bes g bes)} r8 cis8 |

  r8 d8~ d8 b16 b b16 b b b 

}}}   %*********************************

three = \transpose \originpitch \targetpitchthr {\new Voice { 
  \global
  \relative c' {
  \set Staff.instrumentName = #"V3 "
  \set Staff.midiInstrument = \midiInstrThr
  \transposition c' % for MIDI files? to be verified

  %\clef bass %alto
  \clef \clefVThree

  \compressFullBarRests
  R1
  f1 ~ |
  f1 |
  bes,1~ |
  bes2 ~bes4 g8 e' |
  f1 |
  fis1 |
  g2 e~ |
  e4 r2. |
  e4 r4 
  
  des8 c4. |
  
  r8 f aes f ees aes4. |
  aes8 ges aes4 ges8 aes4. |
  r8 des, f ges \times 2/3 {aes4 bes aes} |
  \times 2/3 {g aes g} \times 2/3 {aes ees e} |

  f2 f |
  ges ges |
  g4 d8 f g f d f |
  e4 r2. |

  r4 \times 2/3 {f8 a f} \times 2/3 {a f a} r4 |
  r4 \times 2/3 {f8 a f} \times 2/3 {a f a} r4 |
  r4 \times 2/3 {d,8 g d} \times 2/3 {fis d fis} r4 |
  r4 \times 2/3 {d8 f d} \times 2/3 {e d e} r8 e8 |

  r8 f8~ f8  

}}}   %*********************************

four = \transpose \originpitch \targetpitchfou {\new Voice { 
  \global
  \relative c' {
  \set Staff.instrumentName = #"V4 "
  \set Staff.midiInstrument = \midiInstrFou
  \transposition c' % for MIDI files? to be verified

  \clef bass 

  \compressFullBarRests
  R1 |
  d,4 d des des |
  c c ces \times 2/3 {ces8 f, d'} |
  g4 g ges ges |
  f f e \breathe cis8 a |
  d4 d d d |
  d d d d |
  g f8 d c4 c |
  f4 r2. | % alternative 1
  f2  % alternative 2

  ees8 aes4. |
  des,4 des bes' bes |
  ees, ees aes aes |
  des, des bes' bes |
  ees, ees aes aes |
  des, des bes' bes |
  ees, ees aes aes |
  g g g g |
  c,4 r2. |
  
  d4 d d des |
  c c ces \times 2/3 {ces8 f, d'} |
  g4 g ges ges |
  f f e \breathe cis8 a |
  d4 d d d |
  d d d d |
  g f8 d c4 c |
  f2 r2 

}}}   %**********************************

musicPieceOne = {
  <<
    \context ChordNames { \chordSequence }
    \tag #'score \tag #'v1 \new Staff { << \globalStyle \one >> }
    \tag #'score \tag #'v2 \new Staff { << \globalStyle \two>> }
    \tag #'score \tag #'v3 \new Staff { << \globalStyle \three>> }
    \tag #'score \tag #'v4 \new Staff { << \globalStyle \four>> }
  >>
}


%%% Local Variables:
%%% LilyPond-master-file: "inASentimentalMood_oboeQuartet_scoreAndParts.ly"
%%% End: 
