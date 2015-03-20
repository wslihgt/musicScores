% Frescobaldi variables:
% -*- output: cantaloop_windQuartet_scoreAndParts-score.pdf

% TRANSPOSITION and MIDI variables
originpitch = c %c' %bes'% f % c'
originpitchOttava = c'' %c' %bes'% f % c'

targetpitchone = c
targetpitchtwo = a
targetpitchthr = d'
targetpitchfou = c

originpitchone = c' %bes %bes'% f % c'
originpitchtwo = c'' %bes' %bes'% f % c'
originpitchthr = c' %bes, %bes'% f % c'
originpitchfou = c' %bes'% f % c'

targetpitch = c'
originpitchFromTarget = c'

midiInstrOne = "V1"
midiInstrTwo = "Vharmo"
midiInstrThr = "bassAlt"
midiInstrFou = "bass"

clefVThree = "bass" %"treble" % "treble"%
clefVFour = "bass" %"treble" % "bass" %

% INCLUDE the musical notes (and any variables further used in the books)
\include "chameleon_fourVoices_notes.ly"

\paper{
  print-all-headers = "true"
}
#(set-global-staff-size 14)

% BOOK FOR THE WHOLE SCORE
% 
%    add as many bookparts as there are pieces in the music
\book{
  \bookOutputSuffix "score_in_C" 
  \header {
    instrumentName = "Title" % ?
    }
  #(set-global-staff-size 14)
  \bookpart{
    \header{
      subtitle = "Score"
      }
    \score {
      \new StaffGroup \keepWithTag #'score \musicPieceOne
      \layout { 
	#(layout-set-staff-size 14)}
      \midi { }
      \header{
	instrumentName ="Quartet"
      }
    }
  }
  % ... other bookparts come here
}

% BOOKS FOR EACH INSTRUMENT
% 
%    for each instrument, we likewise have a book
% 
% TODO: make more automatisms with variables? possible to put more logic?
% 
#(set-global-staff-size 20)%
\book{
  \bookOutputSuffix \midiInstrOne
  #(set-global-staff-size 20)%
  
  \bookpart{
    \header{
      subtitle = \midiInstrOne
      }
    \score {
      \new StaffGroup \keepWithTag #'v1 \musicPieceOne
      \header{
	instrumentName = \midiInstrOne
      }
    }
  }
  % ... other bookparts
}


#(set-global-staff-size 20)%
\book{
  \bookOutputSuffix \midiInstrTwo
  #(set-global-staff-size 20)%
  
  \bookpart{
    \header{
      subtitle = \midiInstrTwo
      }
    \score {
      \new StaffGroup \keepWithTag #'v2 \musicPieceOne
      \header{
	instrumentName = \midiInstrTwo
      }
    }
  }
  % ... other bookparts
}


#(set-global-staff-size 20)%
\book{
  \bookOutputSuffix \midiInstrThr
  #(set-global-staff-size 20)%
  
  \bookpart{
    \header{
      subtitle = \midiInstrThr
      }
    \score {
      \new StaffGroup \keepWithTag #'v3 \musicPieceOne
      \header{
	instrumentName =\midiInstrThr
      }
    }
  }
  % ... other bookparts
}


#(set-global-staff-size 20)%
\book{
  \bookOutputSuffix \midiInstrFou
  #(set-global-staff-size 20)%
  
  \bookpart{
    \header{
      subtitle = \midiInstrFou
      }
    \score {
      \new StaffGroup \keepWithTag #'v4 \musicPieceOne
      \header{
	instrumentName =\midiInstrFou
      }
    }
  }
  % ... other bookparts
}

