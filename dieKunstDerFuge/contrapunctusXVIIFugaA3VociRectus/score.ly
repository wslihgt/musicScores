
%{ 
	for oboe, clarinet and bassoon (?)

%}

originpitch = c' %c' %g %c' %bes'% f % c'
targetpitchone = c'
targetpitchtwo = d'
targetpitchthr = c'

\header{
    instrument = "Oboe (C), Klarinet (Bb) and Cello (C)"
}

\include "contrapunctusXVII_fugaA3Voci_rectus.ly"
#(set-global-staff-size 14)
\score {
  \new StaffGroup \keepWithTag #'score \music
  \layout { }
  \midi { }
}


