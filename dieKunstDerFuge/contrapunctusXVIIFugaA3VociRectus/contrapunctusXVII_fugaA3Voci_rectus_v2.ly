originpitch = d' %c' %bes'% f % c'
targetpitchone = c'
%targetpitchtwo = d'
targetpitchtwo = c'
targetpitchthr = c'

\include "contrapunctusXVII_fugaA3Voci_rectus.ly"

%\header{instrument = "Klarinet (Bb)"}
\header{instrument = "Klarinet (C)"}

#(set-global-staff-size 20) %14 
\score {
  \keepWithTag #'v2 \music
  \layout { }
}

