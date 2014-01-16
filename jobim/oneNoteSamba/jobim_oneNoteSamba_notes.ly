%%%%% piece.ly
%%%%% (This is the global definitions file)

\version "2.16.0"

\header{
  title = "One Note Samba"
	composer = "Antonio Carlos Jobim"
  arranger = "JLD"
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

global= {
  \time 4/4
  % \key d \minor
  \tempo 2 = 100
  \accidentalStyle "modern-cautionary"
  
  % global measure stuff
  \transpose \originpitch \targetpitchone {
  \key bes \major
  s1 
  \bar "||"
  {s1 * 16}
  \bar "||"
  \key bes \minor
  {s1 * 8}
  \bar "||"
  \key bes \major
  {s1 * 16}
  \bar "||"
  {s1 * 40}
  \bar "|."
  }
}

chordSequence = \transpose \originpitch \targetpitchone {
  \chordmode {
    r1 |
    d1:m7 |
    des:7 |
    c:m7 |
    b:7.5- | 
    d1:m7 |
    des:7 |
    c:m7 |
    b:7.5- | 
    f:m7 |
    bes:7 |
    ees:maj7 |
    ees:m6 |
    d1:m7 |
    des:7 |
    c2.:m7 b4:7.5- |
    bes1:6 | 

    ees:m7 |
    aes:7 |
    des:maj7 |
    des:maj7 |
    des:m7 |
    ges:7 |
    ces:maj7 |
    c2:m7.5- b:7.5- |
    
    d1:m7 |
    des:7 |
    c:m7 |
    b:7.5- | 
    d1:m7 |
    des:7 |
    c:m7 |
    b:7.5- | 
    f:m7 |
    bes:7 |
    ees:maj7 |
    aes:7 |
    des:6 |
    c:7 |
    b:maj7 |
    bes:6 |
  }
}

one = \transpose \originpitch \targetpitchone {\new Voice { 
  %\key d \minor
  \relative c'{
  \set Staff.instrumentName = #"V1 "
  \set Staff.midiInstrument = \midiInstrOne

  r2 r8 f4 f8 |
  f4 f8 f8~ f8 f4 f8~ |
  f8 f4. r8 f4 f8 |
  f4 f8 f8~ f8 f4 f8~ |
  f2 r8 f4 f8 |
  f4 f8 f8~ f8 f4 f8~ |
  f8 f4. r8 f4 f8 |
  f4 f8 f8~ f8 f4 f8~ |
  f2 r8 bes4 bes8 |
  bes4 bes8 bes8~ bes8 bes4 bes8~ |
  bes8 bes4. r8 bes4 bes8 |
  bes4 bes8 bes8~ bes8 bes4 bes8~ |
  bes4. r8 r8 f4 f8 |
  f4 f8 f8~ f8 f4 f8~ |
  f8 f4 f8~ f8 f8 f4 | 
  f4 f8 f8~ f8 f4 bes8 | 
  R1 |
  bes8 c des ees des c bes aes |
  ges f ees des c des ees f |
  c4. bes8 r8 c des f |
  c4. bes8 r2 |
  aes'8 bes ces des ces bes aes ges |
  fes ees des ces bes ces des ees |
  bes4. aes8 r8 bes ces ees |
  ges4. f8 r8 f4 f8 |

  f4 f8 f8~ f8 f4 f8~ |
  f8 f4. r8 f4 f8 |
  f4 f8 f8~ f8 f4 f8~ |
  f2 r8 f4 f8 |
  f4 f8 f8~ f8 f4 f8~ |
  f8 f4. r8 f4 f8 |
  f4 f8 f8~ f8 f4 f8~ |
  f2 r8 bes4 bes8 |
  bes4 bes8 bes8~ bes8 bes4 bes8~ |
  bes8 bes4. r8 bes4 bes8 |
  bes4 bes8 bes8~ bes8 bes4 bes8~ |
  bes2 r8 bes4 bes8 |
  bes4 bes8 bes8~ bes8 bes4 bes8~ |
  bes8 bes4 bes8 bes4 bes4~ |
  bes4 bes8 bes8~ bes8 bes4 bes8~|
  bes4 r2.

\compressFullBarRests
}}}   %*********************************

two = \transpose \originpitch \targetpitchtwo {\new Voice { 
  %\key d \minor
  \relative c''{
  \set Staff.instrumentName = #"V2 "
  \set Staff.midiInstrument = \midiInstrTwo

\compressFullBarRests

  R1 |
  a4 r8 a8~ a8 r8 aes4|
  r4 aes4 r8 aes4. |
  bes4 r8 bes8~ bes8 r8 a4~|
  a4 r4 r2 |
  a4 r8 a8~ a8 r8 aes4|
  r4 aes4 r8 aes4. |
  bes4 r8 bes8~ bes8 r8 a4~|
  a4 r4 r2 |
  aes2~ aes8 aes4 aes8~|%aes4 r8 aes8~ aes8 r8 aes4 |
  aes2 aes2 | %r4 aes4 r8 aes4. |
  bes2~ bes8 bes4. | %bes4 r8 bes8~ bes8 r8 bes4 |
  bes2 r2 | %r4 c4~ c8 bes4. |
  a4 r8 a8~ a8 r8 aes4|
  r4 aes4 r8 aes4. |
  bes4 r8 bes8~ bes8 r8 a4|
  bes4 r8 a8 bes4 r4 |

  r8 bes8 r4 ges8 r8 r4 | 
  c8 r8 r8 aes8 r2 |
  c,8 des ees f ges aes bes c |
  des c bes aes ges f ees des |
  r8 ces'8 r4 aes8 r8 r4 |
  bes8 r4 des8 r2 |
  
  fes,8 ges aes bes ces bes aes ges | 
  f8 ges aes bes dis, f g a | 
  
  a4 r8 a8~ a8 r8 aes4|
  r4 aes4 r8 aes4. |
  bes4 r8 bes8~ bes8 r8 a4~|
  a4 r4 r2 |
  a4 r8 a8~ a8 r8 aes4|
  r4 aes4 r8 aes4. |
  bes4 r8 bes8~ bes8 r8 a4~|
  a4 r4 r2 |
  aes2~ aes8 aes4 aes8~|%aes4 r8 aes8~ aes8 r8 aes4 |
  aes2 aes2 | %r4 aes4 r8 aes4. |
  bes2~ bes8 bes4. | %bes4 r8 bes8~ bes8 r8 bes4 |
  bes2 r2 | %r4 c4~ c8 bes4. |
  r4 aes4 r8 aes4 r8 |% a4 r8 a8~ a8 r8 aes4|
  r8 g4. r4 a4 |% r4 aes4 r8 aes4. |
  r4 ees4 r8 ees4 f8~ |% bes4 r8 bes8~ bes8 r8 a4|
  f4 r2. |
  
  

}}}   %*********************************

three = \transpose \originpitch \targetpitchthr {\new Voice { 
  %\key d \minor
  \relative c' {
  \set Staff.instrumentName = #"V3 "
  \set Staff.midiInstrument = \midiInstrThr
  %\clef bass %alto
  \clef \clefVThree

\compressFullBarRests
  R1 |
  c4 r8 c8~ c8 r8 ces4 |
  r4 ces4 r8 ces4. |
  ees4 r8 ees8~ ees8 r8 ees4~|
  ees4 r4 r2 |
  c4 r8 c8~ c8 r8 ces4 |
  r4 ces4 r8 ces4. |
  ees4 r8 ees8~ ees8 r8 ees4~|
  ees4 r4 r2 |
  ees2~ ees8 ees4 d8~ |
  d2 d2 |
  d2~ d8 d4. |
  c2 r2 |
  c4 r8 c8~ c8 r8 ces4 |
  r4 ces4 r8 ces4. |
  ees4 r8 ees8~ ees8 r8 ees4 |
  d4 r8 ees8 d4 r4 |

  r8 des8 r4 bes8 r8 r4 | 
  aes8 r8 r8 ges8 r2 |
  ees'8 des c bes aes ges f ees | %c8 des ees f ges aes bes c |
  des ees f ges aes bes c des%des c bes aes ges f ees des |
  r8 fes8 r4 fes8 r8 r4 |
  fes8 r8 r8 bes,8 r2 |
  ces2 r4 des4 | %ces:maj7
  c4. b8 r2 | % c2:m7.5- b:7.5-
  
  c4 r8 c8~ c8 r8 ces4 |
  r4 ces4 r8 ces4. |
  ees4 r8 ees8~ ees8 r8 ees4~|
  ees4 r4 r2 |
  c4 r8 c8~ c8 r8 ces4 |
  r4 ces4 r8 ces4. |
  ees4 r8 ees8~ ees8 r8 ees4~|
  ees4 r4 r2 |
  ees2~ ees8 ees4 d8~ |
  d2 d2 |
  d2~ d8 d4. |
  c2 r2 |
  r4 f,4 r8 f4 r8 | %c8~ c8 r8 ces4 |
  r8 e4. r4 e |% r4 ces4 r8 ces4. |
  r4 ees4 r8 ees4 d8~ |% ees4 r8 ees8~ ees8 r8 ees4 |
  d4 r2.  |

}}}   %*********************************

four = \transpose \originpitch \targetpitchfou {\new Voice { 
  %\key d \minor
  \relative c {
  \set Staff.instrumentName = #"V4 "
  \set Staff.midiInstrument = \midiInstrFou
  \clef bass 

\compressFullBarRests
  R1 |
  d2 d |
  des des |
  c c |
  b f'4 f,4 |
  d'2 d |
  des des |
  c c |
  b f'4 f,  |
  f'2 f2 |
  bes, bes |
  ees2 ees |
  ees ges4 ees | 
  d2 d |
  des des |
  c b4 f |
  bes4 r8 f8 bes4 r4|
  
  ees,4 f ges bes |
  aes bes c ees|
  des aes c f, |
  aes des, f ees  |
  des fes aes fes |
  ges aes bes aes |
  ges ees ces bes' |
  ges f ees ces |

  d'2 d |
  des des |
  c c |
  b f'4 f,4 |
  d'2 d |
  des des |
  c c |
  b f'4 f,  |
  f'2 f2 |
  bes, bes |
  ees2 ees |
  ees ges4 ees | 
  des2 des |
  c c |
  ces ces4. bes8~ |
  bes4 r2.

  d4 f8 d8~ d8 f4 des8~ |
  des8 f4 des8 f4 des |
  c4 ees8 c8~ c8 ees4 b8~ |
  b8 ees4 b8 ees4 a, |
  d4 f8 d8~ d8 f4 des8~ |
  des8 f4 des8 f4 des |
  c4 ees8 c8~ c8 ees4 b8~ |
  b8 ees4 b8 ees4-- e4-- |
  f4 aes8 c,8 ~ c8 f4 bes,8~ |
  bes8 d4 bes8 c4-- d-- |
  ees4 g8 ees8~ ees8 g4 ees8~ |
  ees8 ges4 ees8 ges4 ees4 | 
  d4 f8 d8~ d8 f4 des8~ |
  des8 f4 des8 f4 des |
  c4 ees8 b8~ b8  f4 bes8~ |
  bes4 r8 f8 bes4 r4|
  
  ees,4 f ges bes |
  aes bes c ees|
  des aes c f, |
  aes des, f ees  |
  des fes aes fes |
  ges aes bes aes |
  ges ees ces bes' |
  ges f ees ces |


}}}   %**********************************

music = {
  <<
    \context ChordNames { \chordSequence }
    \tag #'score \tag #'v1 \new Staff { << \global \one >> }
    \tag #'score \tag #'v2 \new Staff { << \global \two>> }
    \tag #'score \tag #'v3 \new Staff { << \global \three>> }
    \tag #'score \tag #'v4 \new Staff { << \global \four>> }
  >>
}


%%% Local Variables:
%%% LilyPond-master-file: "jobim_oneNoteSamba_scoreAndParts.ly"
%%% End: 
