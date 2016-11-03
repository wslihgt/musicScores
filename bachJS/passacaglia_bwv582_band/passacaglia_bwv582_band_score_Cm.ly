%% Automatically generated by generateTemplates.py

%% TRANSPOSITION and MIDI variables
originPitch = c' %%c' %%bes'%% f %% c'

targetPitchOboe = c'
targetPitchGuitar = c'
targetPitchDrums = c'
targetPitchTrombone = d''
targetPitchViolin = c'
targetPitchTenorSax = d''
targetPitchPiano = c'
originPitchOboe = c'
originPitchGuitar = c'
originPitchDrums = c'
originPitchTrombone = bes,
originPitchViolin = c'
originPitchTenorSax = bes,
originPitchPiano = c'
midiInstrOboe = "soprano sax"
midiInstrGuitar = "electric guitar (jazz)"
midiInstrDrums = "synth drum"
midiInstrTrombone = "trombone"
midiInstrViolin = "violin"
midiInstrTenorSax = "tenor sax"
midiInstrPiano = "acoustic grand"
clefOboe = treble
clefGuitar = treble
clefDrums = drums
clefTrombone = treble
clefViolin = treble
clefTenorSax = treble
clefPiano = treble
%% INCLUDE the musical notes (and any variables further used in the books)
\include "passacaglia_bwv582_band_notes.ly" % Put the name of the *_notes.ly

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
    title = "Passacaglia BWV582"
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
  \bookOutputSuffix Violin
  #(set-global-staff-size 20)%

  \bookpart{
    \header{
      subtitle = \subtitle
      instrument = Violin
      }
    \score {
      \new StaffGroup \keepWithTag #'Violin \musicPieceOne
      \header{
        title = \title
	instrumentName = Violin
      }
    }
  }
  %% ... other bookparts
}


#(set-global-staff-size 20)%
\book{
  \bookOutputSuffix Oboe
  #(set-global-staff-size 20)%

  \bookpart{
    \header{
      subtitle = \subtitle
      instrument = Oboe
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
      subtitle = \subtitle
      instrument = TenorSax
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
      subtitle = \subtitle
      instrument = Trombone
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


