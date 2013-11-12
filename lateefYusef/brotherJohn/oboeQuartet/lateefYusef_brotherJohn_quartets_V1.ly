
\include "lateefYusef_brotherJohn_quartets_parts.ly"

\paper{
  print-all-headers = "true"
}


% #(set-global-staff-size 20) %14 
\score {
  \keepWithTag #'vn1 \music
  \layout { }
  \midi { }
  \header{instrumentName="Brother John, Oboe/Violin"}
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

