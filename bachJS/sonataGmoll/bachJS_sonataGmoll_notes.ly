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

oneAllegroVoice = \transpose \originpitch \targetpitchoneAllegro
  {
    \globalAllegro

    \new Voice { 
      \relative c''{
	\set Staff.instrumentName = #"V1 "
	\set Staff.midiInstrument = \midiInstrAllegroOne
	\transposition \instrumentTransposeAllegroOne

	\compressFullBarRests
	\oneAllegro
	
	\bar "|." 
      }
    }
  }
%*********************************

twoAllegroVoice  = \transpose \originpitch \targetpitchtwoAllegro
{
  \globalAllegro
  \new Voice { 
    \relative c'{
      \set Staff.instrumentName = #"V2 "
      \set Staff.midiInstrument = \midiInstrAllegroTwo
      \transposition \instrumentTransposeAllegroTwo
      
      \compressFullBarRests
      \twoAllegro
      
      \bar "|." 
    }
  }
}   %*********************************

threeAllegroVoice  = \transpose \originpitch \targetpitchthrAllegro 
{
  \globalAllegro
  \new Voice { 
    \relative c' {
      \set Staff.instrumentName = #"V3 "
      \set Staff.midiInstrument = \midiInstrAllegroThr
				%\clef bass %alto
      \transposition \instrumentTransposeAllegroThree

      \clef \clefVThree
      
      \compressFullBarRests
      \threeAllegro
      
      \bar "|." 
    }
  }
}   %*********************************

fourAllegroVoice  = \transpose \originpitch \targetpitchfouAllegro 
{
  \globalAllegro
  \new Voice { 
    \relative c' {
      \set Staff.instrumentName = #"V4 "
      \set Staff.midiInstrument = \midiInstrAllegroFou
      \transposition \instrumentTransposeAllegroFour

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

oneAdagioVoice = \transpose \originpitch \targetpitchoneAdagio {
  \globalAdagio 
  \new Voice { 
    \relative c''{
      \set Staff.instrumentName = #"V1 "
      \set Staff.midiInstrument = \midiInstrAdagioOne
      \transposition c'
      
      \compressFullBarRests
      
      \oneAdagio
      
      \bar "|."
      
    }
  }
}   %*********************************

twoAdagioVoice = \transpose \originpitch \targetpitchtwoAdagio {
  \globalAdagio 
  \new Voice { 
    \relative c'{
      \set Staff.instrumentName = #"V2 "
      \set Staff.midiInstrument = \midiInstrAdagioTwo
      \transposition c'
      
      \compressFullBarRests
      
      \twoAdagio
      
      \bar "|."
      
    }
  }
}   %*********************************

threeAdagioVoice = \transpose \originpitch \targetpitchthrAdagio {
  \globalAdagio 
  \new Voice { 
    \relative c' {
      \set Staff.instrumentName = #"V3 "
      \set Staff.midiInstrument = \midiInstrAdagioThr
				%\clef bass %alto
      \transposition c'
      \clef \clefVThree
      
      \compressFullBarRests
      
      \threeAdagio
      
      \bar "|."

    }
  }
}   %*********************************

fourAdagioVoice = \transpose \originpitch \targetpitchfouAdagio {
  \globalAdagio 
  \new Voice { 
    \relative c' {
      \set Staff.instrumentName = #"V4 "
      \set Staff.midiInstrument = \midiInstrAdagioFou
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

oneAllegroBVoice = \transpose \originpitch \targetpitchoneAllegroBis
  {
    \globalAllegroB 
    \new Voice { 
      \relative c''{
	\set Staff.instrumentName = #"V1 "
	\set Staff.midiInstrument = \midiInstrAllegroBisOne
	\transposition c'
	
	\compressFullBarRests
	\oneAllegroB
	
	\bar "|." 
      }
    }
  }   
%*********************************

twoAllegroBVoice = \transpose \originpitch \targetpitchtwoAllegroBis {
  \globalAllegroB 
  \new Voice { 
    \relative c'{
      \set Staff.instrumentName = #"V2 "
      \set Staff.midiInstrument = \midiInstrAllegroBisTwo
      \transposition c'
      
      \compressFullBarRests
      \twoAllegroB
      
      \bar "|." 
    }
  }
}   %*********************************

threeAllegroBVoice = \transpose \originpitch \targetpitchthrAllegroBis {
  \globalAllegroB 
  \new Voice { 
    \relative c' {
      \set Staff.instrumentName = #"V3 "
      \set Staff.midiInstrument = \midiInstrAllegroBisThr
      \transposition c'
				%\clef bass %alto
      \clef \clefVThree
      
      \compressFullBarRests
      \threeAllegroB
      
      \bar "|." 
    }
  }
}   %*********************************

fourAllegroBVoice = \transpose \originpitch \targetpitchfouAllegroBis {
  \globalAllegroB 
  \new Voice { 
    \relative c' {
      \set Staff.instrumentName = #"V4 "
      \set Staff.midiInstrument = \midiInstrAllegroBisFou
      \transposition c'
      \clef \clefVFour 
      
      \compressFullBarRests
      \fourAllegroB
      
      \bar "|."
    }
  }
}   %**********************************

musicAllegroB = {
  <<
    \tag #'score \tag #'v1 \new Staff { << \global \oneAllegroBVoice >> }
    \tag #'score \tag #'v2 \new Staff { << \global \twoAllegroBVoice>> }
    \tag #'score \tag #'v3 \new Staff { << \global \threeAllegroBVoice>> }
    \tag #'score \tag #'v4 \new Staff { << \global \fourAllegroBVoice>> }
  >>
}

%**********************************
%**********************************

%%% Local Variables:
%%% LilyPond-master-file: "bachJS_sonataGmoll_oboeQuartet_scoreAndParts.ly"
%%% End: 
