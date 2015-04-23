%%%%% piece.ly
%%%%% (This is the global definitions file)

\version "2.17.2"

\header{
  title = "All Blues"
  composer = "Miles Davis"
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
}

structure = {
  s2.^\markup{Intro} |
  s2. * 7 |
  \bar "||"
  s2.^\markup{Riffs}  |
  s2. * 7 |
  \bar "||"
  \repeat volta 2 {
  s2.^\markup{Theme}  |
  s2. * 23 
  \bar "|."
  }
}

global = {
  \time 3/4
  \tempo  4 = 120
  \key g \major
}

chordSeq = \chordmode {
  g2.:7 | % intro
  g:7 |
  g:7 |
  g:7 |
  g2.:7 | % intro
  g:7 |
  g:7 |
  g:7 |
  g:7 | % riffs
  g:7 |
  g:7 |
  g:7 |
  g:7 | % riffs
  g:7 |
  g:7 |
  g:7 |
  g:7 | % melody
  g:7 |
  g:7 |
  g:7 |
  g:7 | % melody
  g:7 |
  g:7 |
  g:7 |
  c:7 |
  c:7 |
  c:7 |
  c:7 |
  g:7 |
  g:7 |
  g:7 |
  g:7 |
  d:7 |
  d:7 |
  ees:7 |
  d:7 |
  g:7 |
  g:7 |
  g:7 |
  g:7
}

leadVoix = \transpose \originpitchone \targetpitchone {\new Voice { 
  \global
  \relative c''{
  \set Staff.instrumentName = #"Lead "
  \set Staff.midiInstrument = \midiInstrOne
  \transposition c' % for MIDI files? to be verified

  \compressFullBarRests
  R2.*8 | % intro
  R2.*8 | % riffs
  
  b2. ~ | % theme
  b2 ~ b8 d, |
  b'2. |
  R2. |
  b2. ~ |
  b2~ b8 d, |
  b'2. |
  R2. |
  
  a2 bes4 |
  c2 d4 |
  c2 bes4 |
  a2 d,4 |
  b'2. ~|
  b2. ~|
  b2. |
  r2 r8 gis |
  a2. |
  a2. |
  bes2. |
  bes2. |
  a2. |
  b2. |
  a2. |
  g2. 
  

\bar "|." }}}   %*********************************

riffParts = \transpose \originpitchtwo \targetpitchtwo {\new Voice { 
  \global
  \relative c'{
  \set Staff.instrumentName = #"Riffs "
  \set Staff.midiInstrument = \midiInstrTwo
  \transposition c' % for MIDI files? to be verified
  \compressFullBarRests
  R2.*8 | % intro
  << % riffs
    {
      d2-- e4-. |
      f2-- e4-. |
      d2-- e4-. |
      f2-- e4-. |
      d2-- e4-. |
      f2-- e4-. |
      d2-- e4-. |
      f2-- e4-. |
    }
    {
      b2-- c4-. |
      d2-- c4-. |
      b2-- c4-. |
      d2-- c4-. |
      b2-- c4-. |
      d2-- c4-. |
      b2-- c4-. |
      d2-- c4-. |
    }
  >>
  << % riffs G 
    {
      d2-- e4-. |
      f2-- e4-. |
      d2-- e4-. |
      f2-- e4-. |
      d2-- e4-. |
      f2-- e4-. |
      d2-- e4-. |
      f2-- e4-. |
    }
    {
      b2-- c4-. |
      d2-- c4-. |
      b2-- c4-. |
      d2-- c4-. |
      b2-- c4-. |
      d2-- c4-. |
      b2-- c4-. |
      d2-- c4-. |
    }
  >>
  << % riffs C then G
    {
      d2-- e4-. |
      f2-- e4-. |
      d2-- e4-. |
      f2-- e4-. |
      d2-- e4-. |
      f2-- e4-. |
      d2-- e4-. |
      f2-- e4-. |
    }
    {
      bes2-- c4-- |
      d2-- c4-- |
      bes2-- c4-- |
      d2-- c4-- |
      b2-- c4-. |
      d2-- c4-. |
      b2-- c4-. |
      d2-- c4-. |
    }
  >>

  R2. |
  <<
    {
      f |
      ges |
      f |
      f |
      g |
      f |
      e
    }
    {
      c |
      d |
      c |
      c | 
      d | 
      c | 
      b |
    }
  >>

\bar "|." }}}   %*********************************

three = \transpose \originpitchthr \targetpitchthr {\new Voice { 
  \global
  \relative c' {
  \set Staff.instrumentName = #"Piano "
  \set Staff.midiInstrument = \midiInstrThr
  \transposition c' % for MIDI files? to be verified

  %\clef bass %alto
  \clef \clefVThree

\compressFullBarRests
  R2.*8 | % intro
  << % riffs
    {
      d2-- e4-. |
      f2-- e4-. |
      d2-- e4-. |
      f2-- e4-. |
      d2-- e4-. |
      f2-- e4-. |
      d2-- e4-. |
      f2-- e4-. |
    }
    {
      b2-- c4-. |
      d2-- c4-. |
      b2-- c4-. |
      d2-- c4-. |
      b2-- c4-. |
      d2-- c4-. |
      b2-- c4-. |
      d2-- c4-. |
    }
  >>
  << % riffs G 
    {
      d2-- e4-. |
      f2-- e4-. |
      d2-- e4-. |
      f2-- e4-. |
      d2-- e4-. |
      f2-- e4-. |
      d2-- e4-. |
      f2-- e4-. |
    }
    {
      b2-- c4-. |
      d2-- c4-. |
      b2-- c4-. |
      d2-- c4-. |
      b2-- c4-. |
      d2-- c4-. |
      b2-- c4-. |
      d2-- c4-. |
    }
  >>
  << % riffs C then G
    {
      d2-- e4-. |
      f2-- e4-. |
      d2-- e4-. |
      f2-- e4-. |
      d2-- e4-. |
      f2-- e4-. |
      d2-- e4-. |
      f2-- e4-. |
    }
    {
      bes2-- c4-- |
      d2-- c4-- |
      bes2-- c4-- |
      d2-- c4-- |
      b2-- c4-. |
      d2-- c4-. |
      b2-- c4-. |
      d2-- c4-. |
    }
  >>

  R2. |
  <<
    {
      f |
      ges |
      f |
      f |
      g |
      f |
      e
    }
    {
      c |
      d |
      c |
      c | 
      d | 
      c | 
      b |
    }
  >>

\bar "|." }}}   %*********************************

bassVox = \transpose \originpitchfou \targetpitchfou {\new Voice { 
  \global
  \relative c {
  \set Staff.instrumentName = #"Bass "
  \set Staff.midiInstrument = \midiInstrFou
  \transposition c' % for MIDI files? to be verified

  \clef bass 
  \compressFullBarRests
  g4. d'8 e d | % intro
  f4. d8 e d |
  g,4. d'8 e d |
  f4. d8 e d |
  g,4. d'8 e d |
  f4. d8 e d |
  g,4. d'8 e d |
  f4. d8 e d |
  g,4. d'8 e d | % riffs
  f4. d8 e d |
  g,4. d'8 e d |
  f4. d8 e d |
  g,4. d'8 e d |
  f4. d8 e d |
  g,4. d'8 e d |
  f4. d8 e d |
  
  g,4. d'8 e d |
  f4. d8 e d |
  g,4. d'8 e d |
  f4. d8 e d |
  g,4. d'8 e d |
  f4. d8 e d |
  g,4. d'8 e d |
  f4. d8 e d |

  c,4. d'8 e d |
  f4. d8 e d |
  c,4. d'8 e d |
  f4. d8 e d |
  g,4. d'8 e d |
  f4. d8 e d |
  g,4. d'8 e d |
  f4. d8 e d |

  d,2. ~ |
  d2. |
  ees |
  d |
  g4. d'8 e d |
  f4. d8 e d |
  g,4. d'8 e d |
  f4. d8 e d |
  

\bar "|."}}}   %**********************************

musicPieceOne = {
  <<
    \tag #'score \tag #'piano \new ChordNames {\chordSeq}
    \tag #'v1 \transpose \originpitchone \targetpitchone {
       \new ChordNames {\chordSeq}}
    \tag #'v2 \transpose \originpitchtwo \targetpitchtwo {
       \new ChordNames {\chordSeq}}
    \tag #'v3 \transpose \originpitchthr \targetpitchthr {
       \new ChordNames {\chordSeq}}
    \tag #'v4 \transpose \originpitchfou \targetpitchfou {
       \new ChordNames {\chordSeq}}
    \tag #'score \tag #'v1 \new Staff { << \globalStyle \structure \leadVoix >> }
    \tag #'score \tag #'v2 \new Staff { << \globalStyle \structure \riffParts>> }
    \tag #'score \tag #'v3 \tag #'piano \new Staff { << \globalStyle \structure \three>> }
    \tag #'score \tag #'v4 \tag #'piano \new Staff { << \globalStyle \structure \bassVox>> }
  >>
}


%%% Local Variables:
%%% LilyPond-master-file: "allBlues_scoreAndParts.ly"
%%% End: 
%%% -*- master: allBlues_windQuartet_scoreAndParts.ly;

