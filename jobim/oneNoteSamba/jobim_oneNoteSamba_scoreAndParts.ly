
originpitch = c %c' %bes'% f % c'

targetpitchone = c
targetpitchtwo = c
targetpitchthr = c
targetpitchfou = c

midiInstrOne = "oboe"
midiInstrTwo = "violin"
midiInstrThr = "viola"
midiInstrFou = "cello"

clefVThree = alto

\include "jobim_oneNoteSamba_notes.ly"

\paper{
  print-all-headers = "true"
}

#(set-global-staff-size 20)

\score {
  \new StaffGroup \keepWithTag #'score \music
  \layout { 
    #(layout-set-staff-size 14)}
  \midi { }
  \header{instrumentName ="Quartet"}
}

\pageBreak

% #(set-global-staff-size 20) %14 
\score {
  \keepWithTag #'v1 \music
  \layout { }
  \header{instrumentName="Oboe/Violin I"}
}

\pageBreak

% #(set-global-staff-size 20) %14 
\score {
  \keepWithTag #'v2 \music
  \layout { }
  \header{instrumentName="Violin II"}
}

\pageBreak

% #(set-global-staff-size 20) %14 
\score {
  \keepWithTag #'v3 \music
  \layout { }
  \header{instrumentName="Viola"}
}


\pageBreak

% #(set-global-staff-size 20) %14 
\score {
  \keepWithTag #'v4 \music
  \layout { }
  \header{instrumentName="Cello"}
}






%{ Uncomment this block when using separate files

%%%%% vn1.ly
%%%%% (This is the Violin 1 part file)

\include "piece.ly"
\score {
  \keepWithTag #'vn1 \music
  \layout { }
}


%%%%% vn2.ly
%%%%% (This is the Violin 2 part file)

\include "piece.ly"
\score {
  \keepWithTag #'vn2 \music
  \layout { }
}


%%%%% vla.ly
%%%%% (This is the Viola part file)

\include "piece.ly"
\score {
  \keepWithTag #'vla \music
  \layout { }
}


%%%%% vlc.ly
%%%%% (This is the Cello part file)

\include "piece.ly"
\score {
  \keepWithTag #'vlc \music
  \layout { }
}

%}

