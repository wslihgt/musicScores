%%%%% bachJS_sonataGmoll_notes.ly
%%%%% 
%%%%% contains the scores with all voices, gathered from different notes
%%%%% from individual instruments.
%%%%% 

\version "2.16.0"

\header{
  title = "Sonata"
  epigraph = "A la memoire de Serge Prokofieff"
  subtitle = "pour hautbois et piano"
  composer = "Francis Poulenc (1962)"
  transcriber = "Je.-Lo. Durrieu"
}

\include "poulenc_sonateHautboisPiano_I_elegie_notes.ly"
\include "poulenc_sonateHautboisPiano_II_scherzo_notes.ly"
\include "poulenc_sonateHautboisPiano_III_deploration_notes.ly"

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
  
globalIElegie = {
  \time 3/4
  \key c \major
  \tempo 4 = 66
  
  s2. * 8
  s2.^\markup{\huge \circle 1}
  s2. * 4
  \time 2/4
  
  s2 
  \time 3/4 
  s2. * 7 
  s2.^\markup{\huge \circle 2}
  
}
  
globalIIScherzo = {
  \time 6/8
  \key c \major
  \tempo 4. = 160

  
  
}
  
globalIIIDeploration = {
  \time 3/4
  \key g \minor
  \tempo 4 = 100
}

oneIElegieVoice = \transpose \originpitch \targetpitchone 
  {
    \new Voice { 
      \relative c''{
	\set Staff.instrumentName = #"V1 "
	\set Staff.midiInstrument = \midiInstrOne
	
	\compressFullBarRests
	\oneIElegie
	
	\bar "|." 
      }
    }
  }
%*********************************

twoIElegieVoice  = \transpose \originpitch \targetpitchtwo {
  \new Voice { 
    \relative c'{
      \set Staff.instrumentName = #"V2 "
      \set Staff.midiInstrument = \midiInstrTwo
      
      \compressFullBarRests
      \twoIElegie
      
      \bar "|." 
    }
  }
}   %*********************************

threeIElegieVoice  = \transpose \originpitch \targetpitchthr {
  \new Voice { 
    \relative c' {
      \set Staff.instrumentName = #"V3 "
      \set Staff.midiInstrument = \midiInstrThr
				%\clef bass %alto
      \clef \clefVThree
      
      \compressFullBarRests
      \threeIElegie
      
      \bar "|." 
    }
  }
}   %*********************************

fourIElegieVoice  = \transpose \originpitch \targetpitchfou {
  \new Voice { 
    \relative c' {
      \set Staff.instrumentName = #"V4 "
      \set Staff.midiInstrument = \midiInstrFou
      \clef bass 
      
      \compressFullBarRests
      \fourIElegie
      
      \bar "|."
    }
  }
}   %**********************************

musicIElegie = {
  <<
    \tag #'score \tag #'v1 \new Staff { 
      << \global \globalIElegie \oneIElegieVoice   >> }
    \tag #'score \tag #'v2 \new Staff { 
      << \global \globalIElegie \twoIElegieVoice  >> }
    \tag #'score \tag #'v3 \new Staff { 
      << \global \globalIElegie \threeIElegieVoice  >> }
    \tag #'score \tag #'v4 \new Staff { 
      << \global \globalIElegie \fourIElegieVoice  >> }
  >>
}

%**********************************
%**********************************

oneIIScherzoVoice = \transpose \originpitch \targetpitchone {
  \new Voice { 
    \relative c''{
      \set Staff.instrumentName = #"V1 "
      \set Staff.midiInstrument = \midiInstrOne
      
      \compressFullBarRests
      
      \oneIIScherzo
      
      \bar "|."
      
    }
  }
}   %*********************************

twoIIScherzoVoice = \transpose \originpitch \targetpitchtwo {
  \new Voice { 
    \relative c'{
      \set Staff.instrumentName = #"V2 "
      \set Staff.midiInstrument = \midiInstrTwo
      
      \compressFullBarRests
      
      \twoIIScherzo
      
      \bar "|."
      
    }
  }
}   %*********************************

threeIIScherzoVoice = \transpose \originpitch \targetpitchthr {
  \new Voice { 
    \relative c' {
      \set Staff.instrumentName = #"V3 "
      \set Staff.midiInstrument = \midiInstrThr
				%\clef bass %alto
      \clef \clefVThree
      
      \compressFullBarRests
      
      \threeIIScherzo
      
      \bar "|."

    }
  }
}   %*********************************

fourIIScherzoVoice = \transpose \originpitch \targetpitchfou {
  \new Voice { 
    \relative c' {
      \set Staff.instrumentName = #"V4 "
      \set Staff.midiInstrument = \midiInstrFou
      \clef bass 
      
      \compressFullBarRests
      
      \fourIIScherzo
      
      \bar "|."
      
    }
  }
}   %**********************************

musicIIScherzo = {
  <<
    \tag #'score \tag #'v1 \new Staff { 
      << \global \globalIIScherzo \oneIIScherzoVoice >> }
    \tag #'score \tag #'v2 \tag #'acc \new Staff { 
      << \global \globalIIScherzo \twoIIScherzoVoice>> }
    \tag #'score \tag #'v3 \tag #'acc \new Staff { 
      << \global \globalIIScherzo \threeIIScherzoVoice>> }
    \tag #'score \tag #'v4 \tag #'acc \new Staff { 
      << \global \globalIIScherzo \fourIIScherzoVoice>> }
  >>
}

%**********************************
%**********************************

oneIIIDeplorationVoice = \transpose \originpitch \targetpitchone 
  {
    \new Voice { 
      \relative c''{
	\set Staff.instrumentName = #"V1 "
	\set Staff.midiInstrument = \midiInstrOne
	
	\compressFullBarRests
	\oneIIIDeploration
	
	\bar "|." 
      }
    }
  }   
%*********************************

twoIIIDeplorationVoice = \transpose \originpitch \targetpitchtwo {
  \new Voice { 
    \relative c'{
      \set Staff.instrumentName = #"V2 "
      \set Staff.midiInstrument = \midiInstrTwo
      
      \compressFullBarRests
      \twoIIIDeploration
      
      \bar "|." 
    }
  }
}   %*********************************

threeIIIDeplorationVoice = \transpose \originpitch \targetpitchthr {
  \new Voice { 
    \relative c' {
      \set Staff.instrumentName = #"V3 "
      \set Staff.midiInstrument = \midiInstrThr
				%\clef bass %alto
      \clef \clefVThree
      
      \compressFullBarRests
      \threeIIIDeploration
      
      \bar "|." 
    }
  }
}   %*********************************

fourIIIDeplorationVoice = \transpose \originpitch \targetpitchfou {
  \new Voice { 
    \relative c' {
      \set Staff.instrumentName = #"V4 "
      \set Staff.midiInstrument = \midiInstrFou
      \clef bass 
      
      \compressFullBarRests
      \fourIIIDeploration
      
      \bar "|."
    }
  }
}   %**********************************

musicIIIDeploration = {
  <<
    \tag #'score \tag #'v1 \new Staff { << \global \globalIIIDeploration \oneIIIDeplorationVoice >> }
    \tag #'score \tag #'v2 \new Staff { << \global \globalIIIDeploration \twoIIIDeplorationVoice>> }
    \tag #'score \tag #'v3 \new Staff { << \global \globalIIIDeploration \threeIIIDeplorationVoice>> }
    \tag #'score \tag #'v4 \new Staff { << \global \globalIIIDeploration \fourIIIDeplorationVoice>> }
  >>
}

%**********************************
%**********************************

%%% Local Variables:
%%% LilyPond-master-file: "poulenc_sonateHautboisPiano_oboeQuartet_scoreAndParts.ly"
%%% End: 
