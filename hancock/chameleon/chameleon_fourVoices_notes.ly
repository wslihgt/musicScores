%%%%% piece.ly
%%%%% (This is the global definitions file)

\version "2.18.2"

\header{
  title = "Chameleon"
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
  \bar "||"
  s1 * 16
  \bar "|."
}

harmonies = \chordmode {
  R1 
  \repeat unfold 2 {
    bes1:m7 |
    ees1:7 |
    bes1:m7 |
    ees1:7 |
    bes1:m7 |
    ees1:7 |
    bes1:m7 |
    ees1:7 |
  }
}

global = {
  \time 4/4
  \tempo 4 = 120
  \key bes \minor 
}
  
bassLine = \relative c {
  r2 r8 	g aes a  |
  \repeat unfold 6 {
      bes8. aes'16~ aes8 bes8~ bes c, des d |
      ees8. bes'16~ bes8 des8~ des g,, aes a
  }
  r8 f'' ees4 ees8 des~ des des16 ees |
  des bes aes ees~ ees8 des~ des2| 
  R1 |
  R1
  
}

bassLineTwo = \relative c {
  r2 r4 ees |
  \repeat unfold 6 {
    des8 bes aes16 aes r8    aes16 aes r bes r4 |
    aes8 aes aes16 aes r bes r4 ees 
  }
  r8 f ees4 ees8 des~ des des16 ees |
  des bes aes ees~ ees8 des~ des2| 
  R1 |
  R1
}

melody = \relative c'' {
  R1 |
  \repeat unfold 2 {
    bes16 bes r8 aes16 aes r8 bes16 bes r8 des4 |
    bes4 r4 r4 bes16 aes f aes~ |
    aes8 bes8 r4 r4 r8 des~ |
    des8 ees r4 r4 r4 |
  }
  r8 f ees4 ees8 des~ des des16 ees |
  des bes aes ees~ ees8 des r4 bes'16 aes f aes~ |
  aes8 bes r4 r4 r8 des~ |
    des8 ees r4 r4 r4  |
  r8 f ees4 ees8 des~ des des16 ees |
  des bes aes ees~ ees8 des~ des2| 
  R1 |
  R1
} % harmoZero


harmo = \relative c'' {
  R1 |
  \repeat unfold 2 {
    bes16 bes r8 aes16 aes r8 bes16 bes r8 
      << 
        {aes4 | g4 } 
        {f4 | ees4}
        {des4 | des4 }
      >>  r4 r4 des16 ees des 
      <<
         {aes'16~ | 
          aes8 aes8 r4 r4 r8 bes~ |
          bes8 bes}
         {ees,16~ | 
          ees8 f8 r4 r4 r8 aes~ |
          aes8 g}
         {des16~ | 
          des8 des8 r4 r4 r8 f~ |
          f8 des}
      >>
    r4 r4 r4 |
  }
  r8 f' ees4 ees8 des~ des des16 ees |
  des bes aes ees~ ees8 des r4 des16 ees des 
      <<
         {aes'16~ | 
          aes8 aes8 r4 r4 r8 bes~ |
          bes8 bes}
         {ees,16~ | 
          ees8 f8 r4 r4 r8 aes~ |
          aes8 g}
         {des16~ | 
          des8 des8 r4 r4 r8 f~ |
          f8 des}
      >> r4 r4 r4  |
  r8 f' ees4 ees8 des~ des des16 ees |
  des bes aes ees~ ees8 des~ des2| 
  R1 |
  R1
}

one = \transpose \originpitchone \targetpitch {
  <<
    \new ChordNames {
      \transposition \originpitchFromTarget % for MIDI files? to be verified
      \harmonies
    }
    \new Voice { 
      \global
      \relative c' {
        \set Staff.instrumentName = #"V1 "
        \set Staff.midiInstrument = \midiInstrOne
        \transposition \originpitchone % for MIDI files? to be verified
        {
          \compressFullBarRests
          <<
            \new Voice = "first" {
              \voiceOne \melody
            }
            \new Voice = "second" {
              \voiceTwo
              \repeat volta 2 {  
              }
            }
          >>
        }
      }
    }
  >>
}    %*********************************

two = \transpose \originpitchtwo \targetpitch {
  <<
    \new ChordNames {
      \harmonies
    }
    \new Voice { 
      \global
      \relative c''{
        \set Staff.instrumentName = #"V2 "
        \set Staff.midiInstrument = \midiInstrTwo
        \transposition \originpitchtwo % for MIDI files? to be verified
        {
          \compressFullBarRests
          \new Voice = "first" {
            \voiceOne \transpose c c' {\harmo}
          }
        }
      }
    }
  >>
}   %*********************************

three = \transpose \originpitchthr \targetpitch {
  <<
    \new ChordNames {
      \harmonies
    }
    \new Voice { 
  \global
  \relative c' {
    \set Staff.instrumentName = #"V3 "
    \set Staff.midiInstrument = \midiInstrThr
    \transposition \originpitchthr % for MIDI files? to be verified
    
    %\clef bass %alto
    \clef \clefVThree
    
    \compressFullBarRests
    \repeat volta 2 { 
    }
  }
}>>}   %*********************************

four = \transpose \originpitchfou \targetpitch {
  <<
    \new ChordNames {
      \harmonies
    }
    \new Voice { 
      \global
      \relative c {
      \set Staff.instrumentName = #"V4 "
      \set Staff.midiInstrument = \midiInstrFou
      \transposition \originpitchfou % for MIDI files? to be verified
    
      \clef \clefVFour 
      
      \compressFullBarRests
      \bassLine
      }
    }
  >>
}   %**********************************

musicPieceOne = {
  <<
    %\tag #'score \tag #'chords 
    %\new ChordNames {
    %  \harmonies
    %}
    \tag #'score \tag #'v1 \new Staff { 
      << \globalStyle \structure \one >> }
    \tag #'score \tag #'v2 \new Staff { 
      << \globalStyle \structure \two>> }
    \tag #'score \tag #'v3 \new Staff { 
      << \globalStyle \structure \three>> }
    \tag #'score \tag #'v4 \new Staff { 
      << \globalStyle \structure \four>> }
    
  >>
}


%%% Local Variables:
%%% LilyPond-master-file: "cantaloop_windQuartet_scoreAndParts.ly"
%%% End: 
% -*- master: chameleon_windQuartet_scoreAndParts.ly;
% -*- output: chameleon_windQuartet_scoreAndParts-score.pdf