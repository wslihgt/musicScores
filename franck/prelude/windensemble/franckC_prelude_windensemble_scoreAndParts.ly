% TRANSPOSITION and MIDI variables

\include "italiano.ly"

originpitch = la, %c' %bes'% f % c'

targetpitchone = do
targetpitchtwo = do
targetpitchthr = do
targetpitchfou = re
targetpitchfiv = do

midiInstrOne = "flute"
midiInstrTwo = "flute"
midiInstrThr = "oboe"
midiInstrFou = "clarinet"
midiInstrFiv = "cello"

labInstrOne = "fluteI"
labInstrTwo = "fluteII"
labInstrThr = "oboe"
labInstrFou = "clarinet"
labInstrFiv = "cello"

clefVThree = G

% INCLUDE the musical notes (and any variables further used in the books)
\include "franckC_prelude_fiveVoices_notes.ly"

\paper{
  print-all-headers = "true"
}
#(set-global-staff-size 14)

% BOOK FOR THE WHOLE SCORE
% 
%    add as many bookparts as there are pieces in the music
\book{
  \bookOutputSuffix "score"
  %\header {
  %  title = "Prélude, Fugue et Variation" % ?
  %  }
  #(set-global-staff-size 14)
  \bookpart{
    %\header{
    %  subtitle = "Sub-piece title"
    %  }
    \score {
      \new StaffGroup \keepWithTag #'score \musicPieceOne
      \layout { 
	#(layout-set-staff-size 14)}
      \midi { }
      \header{
	instrumentName ="Quartet"
	piece = \titlePieceOne
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
  \bookOutputSuffix \labInstrOne
  #(set-global-staff-size 20)%
  
  \bookpart{
    \header{
      subtitle = \titlePieceOne
      }
    \score {
      \new StaffGroup \keepWithTag #'v1 \musicPieceOne
      \header{
	instrumentName = \labInstrOne
      }
    }
  }
  % ... other bookparts
}


#(set-global-staff-size 20)%
\book{
  \bookOutputSuffix \labInstrTwo
  #(set-global-staff-size 20)%
  
  \bookpart{
    \header{
      subtitle = \titlePieceOne
      }
    \score {
      \new StaffGroup \keepWithTag #'v2 \musicPieceOne
      \header{
	instrumentName = \labInstrTwo
      }
    }
  }
  % ... other bookparts
}


#(set-global-staff-size 20)%
\book{
  \bookOutputSuffix \labInstrThr
  #(set-global-staff-size 20)%
  
  \bookpart{
    \header{
      subtitle = \titlePieceOne
      }
    \score {
      \new StaffGroup \keepWithTag #'v3 \musicPieceOne
      \header{
	instrumentName = \labInstrThr
      }
    }
  }
  % ... other bookparts
}


#(set-global-staff-size 20)%
\book{
  \bookOutputSuffix \labInstrFou
  #(set-global-staff-size 20)%
  
  \bookpart{
    \header{
      subtitle = \titlePieceOne
      }
    \score {
      \new StaffGroup \keepWithTag #'v4 \musicPieceOne
      \header{
	instrumentName = \labInstrFou
      }
    }
  }
  % ... other bookparts
}



#(set-global-staff-size 20)%
\book{
  \bookOutputSuffix \labInstrFiv
  #(set-global-staff-size 20)%
  
  \bookpart{
    \header{
      subtitle = \titlePieceOne
      }
    \score {
      \new StaffGroup \keepWithTag #'v5 \musicPieceOne
      \header{
	instrumentName = \labInstrFiv
      }
    }
  }
  % ... other bookparts
}

