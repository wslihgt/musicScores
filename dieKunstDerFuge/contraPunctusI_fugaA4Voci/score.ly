
%{ 
	for flute, oboe, clarinet and bassoon (?)

%}

originpitch = g %c' %g %c' %bes'% f % c'
targetpitchone = c'
targetpitchtwo = c'
targetpitchthr = c'
targetpitchfou = c'

midiInstrOne = "flute"
midiInstrTwo = "oboe"
midiInstrThr = "clarinet"
midiInstrFou = "cello"

clefVThree = alto

\include "contrapunctusI_fugaA4Voci.ly"
#(set-global-staff-size 14)
\score {
  \new StaffGroup \keepWithTag #'score \music
  \layout { }
  \midi { }
}


