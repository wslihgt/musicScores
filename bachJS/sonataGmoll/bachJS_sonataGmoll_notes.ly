%%%%% bachJS_sonataGmoll_notes.ly
%%%%% 
%%%%% contains the scores with all voices, gathered from different notes
%%%%% from individual instruments.
%%%%% 

\version "2.16.0"

\header{
  title = "Sonate in G-moll"
  subtitle = "Flute and Cemballo"
  composer = "Joh. Seb. Bach"
  transcriber = "Je.-Lo. Durrieu"
}

\include "bachJS_sonataGmoll_allegro_notes.ly"
\include "bachJS_sonataGmoll_adagio_notes.ly"
\include "bachJS_sonataGmoll_allegro2_notes.ly"

% some things to define in the ..._scoreAndParts.ly file:
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

global = {
  \accidentalStyle "modern-cautionary"
}
  
globalAllegro = {
  \time 3/4
  \key g \minor
  \tempo 4 = 100
}
  
globalAdagio = {
  \time 9/8
  \key ees \major
  \tempo 4. = 60
}
  
globalAllegroB = {
  \time 2/4
  \key g \minor
  \tempo 4 = 100
}

oneAllegroVoice = \transpose \originpitch \targetpitchone 
  {
    \globalAllegro

    \new Voice { 
      \relative c''{
	\set Staff.instrumentName = #"V1 "
	\set Staff.midiInstrument = \midiInstrOne
	\transposition \instrumentTransposeOne

	\compressFullBarRests
	\oneAllegro
	
	\bar "|." 
      }
    }
  }
%*********************************

twoAllegroVoice  = \transpose \originpitch \targetpitchtwo 
{
  \globalAllegro
  \new Voice { 
    \relative c'{
      \set Staff.instrumentName = #"V2 "
      \set Staff.midiInstrument = \midiInstrTwo
      \transposition \instrumentTransposeTwo
      
      \compressFullBarRests
      \twoAllegro
      
      \bar "|." 
    }
  }
}   %*********************************

threeAllegroVoice  = \transpose \originpitch \targetpitchthr 
{
  \globalAllegro
  \new Voice { 
    \relative c' {
      \set Staff.instrumentName = #"V3 "
      \set Staff.midiInstrument = \midiInstrThr
				%\clef bass %alto
      \transposition \instrumentTransposeThree

      \clef \clefVThree
      
      \compressFullBarRests
      \threeAllegro
      
      \bar "|." 
    }
  }
}   %*********************************

fourAllegroVoice  = \transpose \originpitch \targetpitchfou 
{
  \globalAllegro
  \new Voice { 
    \relative c' {
      \set Staff.instrumentName = #"V4 "
      \set Staff.midiInstrument = \midiInstrFou
      \transposition \instrumentTransposeFour

      \clef \clefVFour %bass 
      
      \compressFullBarRests
      \fourAllegro
      
      \bar "|."
    }
  }
}   %**********************************

musicAllegro = {
  <<
    \tag #'score \tag #'v1 \new Staff { << \global \oneAllegroVoice  >> }
    \tag #'score \tag #'v2 \new Staff { << \global \twoAllegroVoice >> }
    \tag #'score \tag #'v3 \new Staff { << \global \threeAllegroVoice >> }
    \tag #'score \tag #'v4 \new Staff { << \global \fourAllegroVoice >> }
  >>
}

%**********************************
%**********************************

oneAdagioVoice = \transpose \originpitch \targetpitchone {
  \globalAdagio 
  \new Voice { 
    \relative c''{
      \set Staff.instrumentName = #"V1 "
      \set Staff.midiInstrument = \midiInstrOne
      \transposition c'
      
      \compressFullBarRests
      
      \oneAdagio
      
      \bar "|."
      
    }
  }
}   %*********************************

twoAdagioVoice = \transpose \originpitch \targetpitchtwo {
  \globalAdagio 
  \new Voice { 
    \relative c'{
      \set Staff.instrumentName = #"V2 "
      \set Staff.midiInstrument = \midiInstrTwo
      \transposition c'
      
      \compressFullBarRests
      
      \twoAdagio
      
      \bar "|."
      
    }
  }
}   %*********************************

threeAdagioVoice = \transpose \originpitch \targetpitchthr {
  \globalAdagio 
  \new Voice { 
    \relative c' {
      \set Staff.instrumentName = #"V3 "
      \set Staff.midiInstrument = \midiInstrThr
				%\clef bass %alto
      \transposition c'
      \clef \clefVThree
      
      \compressFullBarRests
      
      \threeAdagio
      
      \bar "|."

    }
  }
}   %*********************************

fourAdagioVoice = \transpose \originpitch \targetpitchfou {
  \globalAdagio 
  \new Voice { 
    \relative c' {
      \set Staff.instrumentName = #"V4 "
      \set Staff.midiInstrument = \midiInstrFou
      \transposition c'
      
      \clef \clefVFour %bass 
      
      \compressFullBarRests
      
      \fourAdagio
      
      \bar "|."
      
    }
  }
}   %**********************************

musicAdagio = {
  <<
    \tag #'score \tag #'v1 \new Staff { << \global \oneAdagioVoice >> }
    \tag #'score \tag #'v2 \tag #'acc \new Staff { << \global \twoAdagioVoice>> }
    \tag #'score \tag #'v3 \tag #'acc \new Staff { << \global \threeAdagioVoice>> }
    \tag #'score \tag #'v4 \tag #'acc \new Staff { << \global \fourAdagioVoice>> }
  >>
}

%**********************************
%**********************************

oneAllegroBVoice = \transpose \originpitch \targetpitchone 
  {
    \new Voice { 
      \relative c''{
	\set Staff.instrumentName = #"V1 "
	\set Staff.midiInstrument = \midiInstrOne
	
	\compressFullBarRests
	\oneAllegroB
	
	\bar "|." 
      }
    }
  }   
%*********************************

twoAllegroBVoice = \transpose \originpitch \targetpitchtwo {
  \new Voice { 
    \relative c'{
      \set Staff.instrumentName = #"V2 "
      \set Staff.midiInstrument = \midiInstrTwo
      
      \compressFullBarRests
      \twoAllegroB
      
      \bar "|." 
    }
  }
}   %*********************************

threeAllegroBVoice = \transpose \originpitch \targetpitchthr {
  \new Voice { 
    \relative c' {
      \set Staff.instrumentName = #"V3 "
      \set Staff.midiInstrument = \midiInstrThr
				%\clef bass %alto
      \clef \clefVThree
      
      \compressFullBarRests
      \threeAllegroB
      
      \bar "|." 
    }
  }
}   %*********************************

fourAllegroBVoice = \transpose \originpitch \targetpitchfou {
  \new Voice { 
    \relative c' {
      \set Staff.instrumentName = #"V4 "
      \set Staff.midiInstrument = \midiInstrFou
      \clef \clefVFour 
      
      \compressFullBarRests
      \fourAllegroB
      
      \bar "|."
    }
  }
}   %**********************************

musicAllegroB = {
  <<
    \tag #'score \tag #'v1 \new Staff { << \global \globalAllegroB \oneAllegroBVoice >> }
    \tag #'score \tag #'v2 \new Staff { << \global \globalAllegroB \twoAllegroBVoice>> }
    \tag #'score \tag #'v3 \new Staff { << \global \globalAllegroB \threeAllegroBVoice>> }
    \tag #'score \tag #'v4 \new Staff { << \global \globalAllegroB \fourAllegroBVoice>> }
  >>
}

%**********************************
%**********************************

%%% Local Variables:
%%% LilyPond-master-file: "bachJS_sonataGmoll_oboeQuartet_scoreAndParts.ly"
%%% End: 
