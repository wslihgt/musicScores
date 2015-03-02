%%%%% piece.ly
%%%%% (This is the global definitions file)

\version "2.18.2"

\header{
  title = "Cantaloop"
	composer = "Herbie Hancock"
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
  s1^\markup{Intro} | %\breathe |
  s1 * 3 \breathe \bar "||" 
  s1 * 12 
  \bar "|."
}

harmonies = \chords {
  f1:m7 |
  f1:m7 |
  f1:m7 |
  f1:m7 |
  f1:m7 |
  f1:m7 |
  f1:m7 |
  f1:m7 |
  des1:m7 |
  des1:m7 |
  des1:m7 |
  des1:m7 |
  d1:m7 |
  d1:m7 |
  d1:m7 |
  d1:m7 |
}

global = {
  \time 4/4
  \tempo 4 = 120
  \key f \minor 
}

bassLine = \relative c {
  \repeat unfold 4 {
    f4. c' ees8 f |
  }
  \repeat unfold 4 {
    f,4. c' ees8 f |
  }
  \repeat unfold 4 {
    des,4. aes' ces8 des |
  }
  \repeat unfold 4 {
    d,4-^ r8 d~ d2 |
  }
}

melody = \relative c' {
  R1 |
  R1 |
  R1 |
  r2 r4 f8 f |
  r4 r8 f aes bes bes4~ |
  bes4~ bes8 aes bes c ees, f |
  R1 |
  r2 r4 f8 f |
  r4 r8 f aes bes bes4~ |
  bes4~ bes8 aes bes ces ees, f |
  R1 |
  r2 c'8 ees c ees |
  s1 |
  r2 c8 ees c ees |
  s1 
  
}

one = \transpose \originpitchone \targetpitch {\new Voice { 
  \global
  \relative c' {
    \set Staff.instrumentName = #"V1 "
    \set Staff.midiInstrument = \midiInstrOne
    \transposition \originpitchone % for MIDI files? to be verified
    {
      \compressFullBarRests
      <<
        \new Voice = "first" {\voiceOne \melody}
        \new Voice = "second" {\voiceTwo
          r8 f8 f4 f4 f8 f8 |
          r8 f8 f4 f4 f8 f8 |
          r8 f8 f4 f4 f8 f8 |
          r8 f8 f4 f4 f8 f8 |
          r8 f8 f4 f4 f8 f8 |
          r8 f8 f4 f4 f8 f8 |
          r8 f8 f4 f4 f8 f8 |
          r8 f8 f4 f4 f8 f8 |
          r8 f8 f4 f4 f8 f8 |
          r8 f8 f4 f4 f8 f8 |
          r8 f8 f4 f4 f8 f8 |
          r8 f8 f4 f4 f8 f8 |
          f4-^ r8 f8~ f2 |
          f4-^ r8 f8~ f2 |
          f4-^ r8 f8~ f2 |
          f4-^ r8 f8~ f2 |
        }
      >>
    }
}
}
}   %*********************************

two = \transpose \originpitchtwo \targetpitch {\new Voice { 
  \global
  \relative c''{
  \set Staff.instrumentName = #"V2 "
  \set Staff.midiInstrument = \midiInstrTwo
  \transposition \originpitchtwo % for MIDI files? to be verified
  {
    \compressFullBarRests
    r8 c d4 ees d8 c
    r8 c d4 ees d8 c
    r8 c d4 ees d8 c
    r8 c d4 ees d8 c
    r8 c d4 ees d8 c
    r8 c d4 ees d8 c
    r8 c d4 ees d8 c
    r8 c d4 ees d8 c
    r8 ces des4 ees des8 ces
    r8 ces des4 ees des8 ces
    r8 ces des4 ees des8 ces
    r8 ces des4 ees des8 ces
    a4-^ r8 a~ a2 | 
    a4-^ r8 a~ a2 | 
    a4-^ r8 a~ a2 | 
    a4-^ r8 a~ a2 | 
  }
}}}   %*********************************

three = \transpose \originpitchthr \targetpitch {\new Voice { 
  \global
  \relative c' {
    \set Staff.instrumentName = #"V3 "
    \set Staff.midiInstrument = \midiInstrThr
    \transposition \originpitchthr % for MIDI files? to be verified
    
    %\clef bass %alto
    \clef \clefVThree
    
    \compressFullBarRests
    r8 aes bes4 c bes8 aes |
    r8 aes bes4 c bes8 aes |
    r8 aes bes4 c bes8 aes |
    r8 aes bes4 c bes8 aes |
    r8 aes bes4 c bes8 aes |
    r8 aes bes4 c bes8 aes |
    r8 aes bes4 c bes8 aes |
    r8 aes bes4 c bes8 aes |
    r8 aes bes4 ces bes8 aes |
    r8 aes bes4 ces bes8 aes |
    r8 aes bes4 ces bes8 aes |
    r8 aes bes4 ces bes8 aes |
    g4-^ r8 g~ g2 | 
    g4-^ r8 g~ g2 | 
    g4-^ r8 g~ g2 | 
    g4-^ r8 g~ g2 | 
  }
}}   %*********************************

four = \transpose \originpitchfou \targetpitch {\new Voice { 
  \global
  \relative c {
  \set Staff.instrumentName = #"V4 "
  \set Staff.midiInstrument = \midiInstrFou
  \transposition \originpitchfou % for MIDI files? to be verified

  \clef \clefVFour 

  \compressFullBarRests
  \bassLine
}}}   %**********************************

musicPieceOne = {
  <<
    \tag #'score \tag #'v1 \new Staff { 
      << \globalStyle \structure \one >> }
    \tag #'score \tag #'v2 \new Staff { 
      << \globalStyle \structure \two>> }
    \tag #'score \tag #'v3 \new Staff { 
      << \globalStyle \structure \three>> }
    \tag #'score \tag #'v4 \new Staff { 
      << \globalStyle \structure \four>> }
    \tag #'score \tag #'chords \new ChordNames {
      \harmonies
    }
  >>
}


%%% Local Variables:
%%% LilyPond-master-file: "cantaloop_windQuartet_scoreAndParts.ly"
%%% End: 
% -*- master: cantaloop_windQuartet_scoreAndParts.ly;
% -*- output: cantaloop_windQuartet_scoreAndParts-score.pdf