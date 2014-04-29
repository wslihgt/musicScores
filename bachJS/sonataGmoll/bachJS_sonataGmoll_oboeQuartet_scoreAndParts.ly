
originpitch = c %c' %bes'% f % c'

targetpitchone = c
targetpitchtwo = c
targetpitchthr = c
targetpitchfou = c

midiInstrOne = "oboe"
midiInstrTwo = "violin"
midiInstrThr = "violin"
midiInstrFou = "cello"
instrumentTransposeOne = c'%\targetpitchone % bes'
instrumentTransposeTwo = c'%\targetpitchtwo % ees
instrumentTransposeThree = c'%\targetpitchthr % bes
instrumentTransposeFour = c'%\targetpitchfou % ees,

clefVThree = G % alto % G % 
clefVFour = bass

\include "bachJS_sonataGmoll_notes.ly"

\paper{
  print-all-headers = "true"
}

#(set-global-staff-size 14)

\book{
  \bookOutputSuffix "score"
  \header {
    instrumentName = "Sonate en sol mineur "
    %title = "Sonate en sol mineur - J.S. Bach"
    }
  #(set-global-staff-size 14)
  \bookpart{
    \header{
      subtitle = "I - Allegro"
      }
    \score {
      \new StaffGroup \keepWithTag #'score \musicAllegro
      \layout { 
	#(layout-set-staff-size 14)}
      \midi { }
      \header{
	instrumentName ="Quartet"
      }
    }
  }
  \bookpart{
    \header{
      subtitle = "II - Adagio"
      }
    \score {
      \new StaffGroup \keepWithTag #'score \musicAdagio
      \layout { 
	#(layout-set-staff-size 14)}
      \midi { }
      \header{
	instrumentName ="Quartet"
      }
    }
  }
  \bookpart{
    \header{
      subtitle = "III - Allegro"
      }
    \score {
      \new StaffGroup \keepWithTag #'score \musicAllegroB
      \layout { 
	#(layout-set-staff-size 14)}
      \midi { }
      \header{
	instrumentName ="Quartet"
      }
    }
  }
}

#(set-global-staff-size 20)%
\book{
  \bookOutputSuffix "oboe"
  #(set-global-staff-size 20)%
  
  \bookpart{
    \header{
      subtitle = "I - Allegro"
      }
    \score {
      \new StaffGroup \keepWithTag #'v1 \musicAllegro
      \header{
	instrumentName ="Oboe"
      }
    }
  }
  \bookpart{
    \header{
      subtitle = "II - Adagio"
      }
    \score {
      \new StaffGroup \keepWithTag #'v1 \musicAdagio
      \header{
	instrumentName ="Oboe"
      }
    }
  }
  \bookpart{
    \header{
      subtitle = "III - Allegro"
      }
    \score {
      \new StaffGroup \keepWithTag #'v1 \musicAllegroB
      \header{
	instrumentName ="Oboe"
      }
    }
  }
}

#(set-global-staff-size 20)%
\book{
  \bookOutputSuffix "violin1"
  
  \bookpart{
    \header{
      subtitle = "I - Allegro"
      }
    \score {
      \new StaffGroup \keepWithTag #'v2 \musicAllegro
      \header{
	instrumentName = "Violin 1"
      }
    }
  }
  \bookpart{
    \header{
      subtitle = "II - Adagio"
      }
    \score {
      \new StaffGroup \keepWithTag #'v2 \musicAdagio
      \header{
	instrumentName = "Violin 1"
      }
    }
  }
  \bookpart{
    \header{
      subtitle = "III - Allegro"
      }
    \score {
      \new StaffGroup \keepWithTag #'v2 \musicAllegroB
      \header{
	instrumentName = "Violin 1"
      }
    }
  }
}

#(set-global-staff-size 20)%
\book{
  \bookOutputSuffix "violin2"
  
  \bookpart{
    \header{
      subtitle = "I - Allegro"
      }
    \score {
      \new StaffGroup \keepWithTag #'v3 \musicAllegro
      \header{
	instrumentName = "Violin 2"
      }
    }
  }
  \bookpart{
    \header{
      subtitle = "II - Adagio"
      }
    \score {
      \new StaffGroup \keepWithTag #'v3 \musicAdagio
      \header{
	instrumentName = "Violin 2"
      }
    }
  }
  \bookpart{
    \header{
      subtitle = "III - Allegro"
      }
    \score {
      \new StaffGroup \keepWithTag #'v3 \musicAllegroB
      \header{
	instrumentName = "Violin 2"
      }
    }
  }
}

#(set-global-staff-size 20)%
\book{
  \bookOutputSuffix "cello"
  
  \bookpart{
    \header{
      subtitle = "I - Allegro"
      }
    \score {
      \new StaffGroup \keepWithTag #'v4 \musicAllegro
      \header{
	instrumentName = "Cello"
      }
    }
  }
  \bookpart{
    \header{
      subtitle = "II - Adagio"
      }
    \score {
      \new StaffGroup \keepWithTag #'v4 \musicAdagio
      \header{
	instrumentName = "Cello"
      }
    }
  }
  \bookpart{
    \header{
      subtitle = "III - Allegro"
      }
    \score {
      \new StaffGroup \keepWithTag #'v4 \musicAllegroB
      \header{
	instrumentName = "Cello"
      }
    }
  }
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

