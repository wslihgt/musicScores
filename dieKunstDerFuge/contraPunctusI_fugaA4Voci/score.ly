
%{ 
	for flute, oboe, clarinet and bassoon (?)

%}

originpitch = g %c' %g %c' %bes'% f % c'
targetpitchone = c'
targetpitchtwo = c'
targetpitchthr = d'
targetpitchfou = c'

midiInstrOne = "flute"
midiInstrTwo = "oboe"
midiInstrThr = "clarinet"
midiInstrFou = "cello"

clefVThree = G

\include "contrapunctusI_fugaA4Voci.ly"
#(set-global-staff-size 14)
\score {
  \new StaffGroup \keepWithTag #'score \music
  \layout { }
  \midi { }
}

\pageBreak
#(set-global-staff-size 20)
\score {
  \keepWithTag #'v1 \music
  \layout { }
  \header{instrumentName="V 1"}
}


\pageBreak
#(set-global-staff-size 20)
\score {
  \keepWithTag #'v2 \music
  \layout { }
  \header{instrumentName="V 2"}
}

\pageBreak

#(set-global-staff-size 20)
\score {
  \keepWithTag #'v3 \music
  \layout { }
  \header{instrumentName="V 3"}
}

\pageBreak

#(set-global-staff-size 20)
\score {
  \keepWithTag #'v4 \music
  \layout { }
  \header{instrumentName="V 4"}
}



