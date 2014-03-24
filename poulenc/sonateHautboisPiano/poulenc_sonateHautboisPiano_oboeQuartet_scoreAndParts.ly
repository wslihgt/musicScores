
\version "2.16.0"

originpitch = c %c' %bes'% f % c'

targetpitchone = c
targetpitchtwo = c
targetpitchthr = c
targetpitchfou = c

midiInstrOne = "oboe"
midiInstrTwo = "violin"
midiInstrThr = "violin"
midiInstrFou = "cello"

clefVThree = alto % G % 

\include "poulenc_sonateHautboisPiano_notes.ly"

\paper{
  print-all-headers = "true"
}

#(set-global-staff-size 14)

\book{
  \bookOutputSuffix "score"
  \header {
    %instrumentName = ""
    %title = ""
    }
  #(set-global-staff-size 14)
  \bookpart{
    \header{
      subtitle = "I - Elegie"
      }
    \score {
      \new StaffGroup \keepWithTag #'score \musicIElegie
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
      subtitle = "II - Scherzo"
      }
    \score {
      \new StaffGroup \keepWithTag #'score \musicIIScherzo
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
      subtitle = "III - Deploration"
      }
    \score {
      \new StaffGroup \keepWithTag #'score \musicIIIDeploration
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
      subtitle = "I - Elegie"
      }
    \score {
      \new StaffGroup \keepWithTag #'v1 \musicIElegie
      \header{
	instrumentName ="Oboe"
      }
    }
  }
  \bookpart{
    \header{
      subtitle = "II - Scherzo"
      }
    \score {
      \new StaffGroup \keepWithTag #'v1 \musicIIScherzo
      \header{
	instrumentName ="Oboe"
      }
    }
  }
  \bookpart{
    \header{
      subtitle = "III - Deploration"
      }
    \score {
      \new StaffGroup \keepWithTag #'v1 \musicIIIDeploration
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
      subtitle = "I - IElegie"
      }
    \score {
      \new StaffGroup \keepWithTag #'v2 \musicIElegie
      \header{
	instrumentName = "Violin 1"
      }
    }
  }
  \bookpart{
    \header{
      subtitle = "II - Scherzo"
      }
    \score {
      \new StaffGroup \keepWithTag #'v2 \musicIIScherzo
      \header{
	instrumentName = "Violin 1"
      }
    }
  }
  \bookpart{
    \header{
      subtitle = "III - Deploration"
      }
    \score {
      \new StaffGroup \keepWithTag #'v2 \musicIIIDeploration
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
      subtitle = "I - IElegie"
      }
    \score {
      \new StaffGroup \keepWithTag #'v3 \musicIElegie
      \header{
	instrumentName = "Violin 2"
      }
    }
  }
  \bookpart{
    \header{
      subtitle = "II - Scherzo"
      }
    \score {
      \new StaffGroup \keepWithTag #'v3 \musicIIScherzo
      \header{
	instrumentName = "Violin 2"
      }
    }
  }
  \bookpart{
    \header{
      subtitle = "III - Deploration"
      }
    \score {
      \new StaffGroup \keepWithTag #'v3 \musicIIIDeploration
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
      subtitle = "I - Elegie"
      }
    \score {
      \new StaffGroup \keepWithTag #'v4 \musicIElegie
      \header{
	instrumentName = "Cello"
      }
    }
  }
  \bookpart{
    \header{
      subtitle = "II - Scherzo"
      }
    \score {
      \new StaffGroup \keepWithTag #'v4 \musicIIScherzo
      \header{
	instrumentName = "Cello"
      }
    }
  }
  \bookpart{
    \header{
      subtitle = "III - Deploration"
      }
    \score {
      \new StaffGroup \keepWithTag #'v4 \musicIIIDeploration
      \header{
	instrumentName = "Cello"
      }
    }
  }
}

