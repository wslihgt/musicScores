%% Automatically generated by generateTemplates.py

%% TRANSPOSITION and MIDI variables
originPitch = c %%c' %%bes'%% f %% c'

targetPitchOboe = c
targetPitchGuitar = c
targetPitchDrums = c
targetPitchTrombone = d'
targetPitchTenorSax = d'
targetPitchPiano = c
midiInstrOboe = "soprano sax"
midiInstrGuitar = "electric guitar (jazz)"
midiInstrDrums = "synth drum"
midiInstrTrombone = "trombone"
midiInstrTenorSax = "tenor sax"
midiInstrPiano = "acoustic grand"
clefOboe = treble
clefGuitar = treble
clefDrums = drums
clefTrombone = treble
clefTenorSax = treble
clefPiano = treble
%% INCLUDE the musical notes (and any variables further used in the books)
\include "aNightInTunisia_notes.ly" % Put the name of the *_notes.ly

\paper{
  print-all-headers = "true"
}
#(set-global-staff-size 14)

%% BOOK FOR THE WHOLE SCORE
%%
%%    add as many bookparts as there are pieces in the music
\book{
  \bookOutputSuffix "score"
  \header {
    title = "A Night In Tunisia"
    }
  #(set-global-staff-size 14)
  \bookpart{
    \header{
      subtitle = "Wasching Machines"
      }
    \score {
      \new StaffGroup \keepWithTag #'score \musicPieceOne
      \layout {
	#(layout-set-staff-size 14)}
      \midi { }
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
  \bookOutputSuffix Oboe
  #(set-global-staff-size 20)%

  \bookpart{
    \header{
      subtitle = title
      }
    \score {
      \new StaffGroup \keepWithTag #'Oboe \musicPieceOne
      \header{
	instrumentName = Oboe
      }
    }
  }
  %% ... other bookparts
}


#(set-global-staff-size 20)%
\book{
  \bookOutputSuffix TenorSax
  #(set-global-staff-size 20)%

  \bookpart{
    \header{
      subtitle = title
      }
    \score {
      \new StaffGroup \keepWithTag #'TenorSax \musicPieceOne
      \header{
	instrumentName = TenorSax
      }
    }
  }
  %% ... other bookparts
}


#(set-global-staff-size 20)%
\book{
  \bookOutputSuffix Trombone
  #(set-global-staff-size 20)%

  \bookpart{
    \header{
      subtitle = title
      }
    \score {
      \new StaffGroup \keepWithTag #'Trombone \musicPieceOne
      \header{
	instrumentName = Trombone
      }
    }
  }
  %% ... other bookparts
}


#(set-global-staff-size 19)%
\book{
  \bookOutputSuffix Guitar
  #(set-global-staff-size 19)%

  \bookpart{
    \header{
      subtitle = title
      }
    \score {
      \new StaffGroup \keepWithTag #'Guitar \musicPieceOne
      \header{
	instrumentName = Guitar
      }
    }
  }
  %% ... other bookparts
}


#(set-global-staff-size 20)%
\book{
  \bookOutputSuffix Piano
  #(set-global-staff-size 20)%

  \bookpart{
    \header{
      subtitle = title
      }
    \score {
      \new StaffGroup \keepWithTag #'Piano \musicPieceOne
      \header{
	instrumentName = Piano
      }
    }
  }
  %% ... other bookparts
}


#(set-global-staff-size 18)%
\book{
  \bookOutputSuffix Drums
  #(set-global-staff-size 18)%

  \bookpart{
    \header{
      subtitle = title
      }
    \score {
      \new StaffGroup \keepWithTag #'Drums \musicPieceOne
      \header{
	instrumentName = Drums
      }
    }
  }
  %% ... other bookparts
}

