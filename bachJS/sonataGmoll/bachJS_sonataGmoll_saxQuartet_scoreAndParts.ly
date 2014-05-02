
originpitch = f %c' %bes'% f % c'

targetpitchone = a
targetpitchtwo = d % a
targetpitchthr = a %d
targetpitchfou = a'

midiInstrOne = "alto sax"
instrumentTransposeAllegroOne = c'%\targetpitchone % bes'
midiInstrTwo = "soprano sax"
instrumentTransposeAllegroTwo = c'%\targetpitchtwo % ees
midiInstrThr = "alto sax"
instrumentTransposeAllegroThree = c'%\targetpitchthr % bes
midiInstrFou = "baritone sax"
instrumentTransposeAllegroFour = c'%\targetpitchfou % ees,


targetpitchoneAllegro = a
targetpitchtwoAllegro = d % a
targetpitchthrAllegro = a %d
targetpitchfouAllegro = a'

midiInstrAllegroOne = "soprano sax"
midiInstrAllegroTwo = "alto sax"
midiInstrAllegroThr = "tenor sax"
midiInstrAllegroFou = "baritone sax"

targetpitchoneAdagio = d
targetpitchtwoAdagio = a % a
targetpitchthrAdagio = d' %d
targetpitchfouAdagio = a'

midiInstrAdagioOne = "soprano sax"
midiInstrAdagioTwo = "alto sax"
midiInstrAdagioThr = "tenor sax"
midiInstrAdagioFou = "baritone sax"

targetpitchoneAllegroBis = d
targetpitchtwoAllegroBis = a % a
targetpitchthrAllegroBis = d' %d
targetpitchfouAllegroBis = a'

midiInstrAllegroBisOne = "soprano sax"
midiInstrAllegroBisTwo = "alto sax"
midiInstrAllegroBisThr = "tenor sax"
midiInstrAllegroBisFou = "baritone sax"

clefVThree = G % alto % G % 
clefVFour = G

\include "bachJS_sonataGmoll_notes.ly"

\paper{
  print-all-headers = "true"
}

#(set-global-staff-size 14)

\book{
  \bookOutputSuffix "sax-quartet"
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
  \bookOutputSuffix \midiInstrOne % "sopranoSax"
  #(set-global-staff-size 20)%
  
  \bookpart{
    \header{
      subtitle = "I - Allegro"
      }
    \score {
      \new StaffGroup \keepWithTag #'v1 \musicAllegro
      \header{
	instrumentName ="Soprano Sax"
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
	instrumentName ="Soprano Sax"
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
	instrumentName ="Soprano Sax"
      }
    }
  }
}

#(set-global-staff-size 20)%
\book{
  \bookOutputSuffix "altoSax"
  
  \bookpart{
    \header{
      subtitle = "I - Allegro"
      }
    \score {
      \new StaffGroup \keepWithTag #'v2 \musicAllegro
      \header{
	instrumentName = "Alto Sax"
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
	instrumentName = "Alto Sax"
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
	instrumentName = "Alto Sax"
      }
    }
  }
}

#(set-global-staff-size 20)%
\book{
  \bookOutputSuffix "tenorSax"
  
  \bookpart{
    \header{
      subtitle = "I - Allegro"
      }
    \score {
      \new StaffGroup \keepWithTag #'v3 \musicAllegro
      \header{
	instrumentName = "Tenor Sax"
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
	instrumentName = "Tenor Sax"
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
	instrumentName = "Tenor Sax"
      }
    }
  }
}

#(set-global-staff-size 20)%
\book{
  \bookOutputSuffix "baritoneSax"
  
  \bookpart{
    \header{
      subtitle = "I - Allegro"
      }
    \score {
      \new StaffGroup \keepWithTag #'v4 \musicAllegro
      \header{
	instrumentName = "Baritone Sax"
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
	instrumentName = "Baritone Sax"
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
	instrumentName = "Baritone Sax"
      }
    }
  }
}


%{ Uncomment this block when using separate files

%%%%% vn1.ly
%%%%% (This is the Alto Sax part file)

\include "piece.ly"
\score {
  \keepWithTag #'vn1 \music
  \layout { }
}


%%%%% vn2.ly
%%%%% (This is the Tenor Sax part file)

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
%%%%% (This is the Baritone Sax part file)

\include "piece.ly"
\score {
  \keepWithTag #'vlc \music
  \layout { }
}

%}

