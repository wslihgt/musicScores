%%%%% piece.ly
%%%%% (This is the global definitions file)

\version "2.16.0"

\header{title = "Brother John"
	composer = "Yusef Lateef"
  arranger = "jl durrieu (transcription)"
}

global= {
  \time 3/4
  \key b \minor
  \tempo 2. = 80
  \accidentalStyle "modern-cautionary"
}

chordSequence = {
  \chordmode {
    b2.:m | e:7/b | b2.:m | e:7 | 
    b2.:m | e:7 | b2.:m | e:7 | 

    \repeat volta 2 {
      b2.:m | e: | b2.:m | e: | 
      b2.:m | e: | b2.:m | 
    }
      
      \alternative {
	{ e: | }
	{ fis: \bar "||" }
      }

    fis: | b:m/fis | fis:7 | b:m/fis |
    fis: | b:m/fis | fis:7 | fis:7 |

    b2.:m | e:7/b | b2.:m | e:7 | 
    b2.:m | e:7 | b2.:m | fis:

    r4 b2:m | fis2.:/cis | r8 gis4.: a4: | b2.:m |
    r4 b2:m | fis2.:/cis | r8 gis4.: a4: | gis2.: |
    
    % r4 b4:m e:/b | fis:/cis a:/cis b:m | 
  }
}

Violinone = \new Voice { \relative c''{
  \set Staff.instrumentName = #"Violin 1 "
  \set Staff.midiInstrument = #"oboe"
  \set tieWaitForNote = ##t

  r2. | r2. | r2. | r2. | 
  r2. | r2. | r2. | r2. |

\repeat volta 2 {b2.\segno | fis'2. | e8 fis e4. a8 | fis2. | 
  \grace { cis8 ~ } d2. | b2. | cis8 d cis2 | } 
\alternative { 
{ \times 2/3 { e8 dis d } cis2 | }
{ b2 r4 \bar "||"  }
}

cis2 d8 e | cis2 d8 e | cis2 b8 ais | cis2 r4 |
cis2 d8 e | fis2 g8 fis | cis2 b8 ais | g2 fis4 \bar "||"

b2. | fis'2. | e8 fis e4. a8 | fis2. | 
\grace { cis8 ~ } d2. | b2. | cis8 d cis2 | b2 r4 \bar "||"

  r4 \times 2/3 {fis'8 d b} \times 2/3 {gis' e b} | \times 2/3 {a' fis cis}\times 2/3 {gis' e b} fis'4 | 
  r4 \times 2/3 {dis8 bis gis} \times 2/3 {e' cis a} | fis'4 r2 |
  r4 \times 2/3 {fis8 d b} \times 2/3 {gis' e b} | \times 2/3 {a' fis cis}\times 2/3 {gis' e b} fis'4 | 
  r4 \times 2/3 {dis8 bis gis} \times 2/3 {e' cis a} | dis4 r2 |

\bar "|." }}   %*********************************
Violintwo = \new Voice { \relative c''{
  \set Staff.instrumentName = #"Violin 2 "
  \set Staff.midiInstrument = #"violin"

  r2 fis4 | gis2 r4 | r4 fis4 gis~ | gis2 r4 |
  r2 fis4 | gis2 r4 | r4 fis4 gis~ | gis2 r4 |

\repeat volta 2
{
  r2\segno fis4 | gis2 r4 | r4 fis4 gis~ | gis2 r4 |
  r2 fis4 | gis2 r4 | r4 fis4 gis~ | 
}
  \alternative{{gis4 r2 |}{gis4 r2 \bar "||" }}	

cis,2. | d | e | d |
cis    | d | e | r4 ais2 \bar "||"

  r2 fis4 | gis2 r4 | r4 fis4 gis~ | gis2 r4 |
  r2 fis4 | gis2 r4 | r4 fis4 gis~ | gis2 r4 \bar "||"

  r4 fis gis | a gis fis | r8 dis4. e4 | fis2 r4 |
  r4 fis gis | a gis fis | r8 dis4. e4 | dis2 r4 |

  b4. cis | d e | cis a | b2. 

\bar "|." }}   %*********************************
Viola = \new Voice { \relative c' {
  \set Staff.instrumentName = #"Viola "
  \set Staff.midiInstrument = #"viola"
  \clef alto

  r2 d4 | e2 r4 | r4 d4 e~ | e2 r4 |
  r2 d4 | e2 r4 | r4 d4 e~ | e2 r4 |

\repeat volta 2
{
  r2\segno d4 | e2 r4 | r4 d4 e~ | e2 r4 |
  r2 d4 | e2 r4 | r4 d4 e~ | 
}
\alternative{{e2 r4 |}{e2 r4 \bar "||" }}

ais,2. | b | cis | b |
ais   | b | cis | r4 e2 \bar "||"

  r2 d4 | e2 r4 | r4 d4 e~ | e2 r4 |
  r2 d4 | e2 r4 | r4 d4 e~ | e2 r4  \bar "||"


  r4 d e | fis e d | r8 bis4. cis4 | dis2 r4 |
  r4 d e | fis e d | r8 bis4. cis4 | bis2 r4 |

  e4. fis | g a | fis cis | d2. 

\bar "|." }}   %*********************************
Cello = \new Voice { \relative c' {
  \set Staff.instrumentName = #"Cello "
  \set Staff.midiInstrument = #"cello"
  \clef bass

  b,4. fis'4 b8 | d2. | b,4. fis'4 b8 | d4 cis fis, | 
  b,4. fis'4 b8 | d2. | b,4. fis'4 b8 | d4 cis fis, |

\repeat volta 2 
{
  b,4.\segno fis'4 b8 | d2. | b,4. fis'4 b8 | d4 cis fis, | 
  b,4. fis'4 b8 | d2. | b,4. fis'4 b8 | 
}
\alternative{{d4 cis fis, | } {d'4 cis fis, \bar "||"  }}

r4 fis2 | r4 fis2 | r4 fis2 | r4 fis2 | 
r4 fis2 | r4 fis2 | r4 fis2 | r4 fis2 | \bar "||"

  b,4. fis'4 b8 | d2. | b,4. fis'4 b8 | d4 cis fis, | 
  b,4. fis'4 b8 | d2. | b,4. fis'4 b8 | d4 cis fis, \bar "||"

  r4 b b | cis b b | r8 gis4. a4 | b2 r4 |
  r4 b b | cis b b | r8 gis4. a4 | gis2 r4 |
  
  b,4. fis'4 b8 | d2. | b,4. fis'4 b8 | d4 cis fis, | 
  b,2 fis'8 b8 | d2. | b,4. fis'4 b8 | d4 cis fis, 

\bar "|."}}   %**********************************

music = {
  <<
    \context ChordNames { \chordSequence }
    \tag #'score \tag #'vn1 \new Staff { << \global \Violinone >> }
    \tag #'score \tag #'vn2 \new Staff { << \global \Violintwo >> }
    \tag #'score \tag #'vla \new Staff { << \global \Viola >> }
    \tag #'score \tag #'vlc \new Staff { << \global \Cello >> }
  >>
}

%%% Local Variables:
%%% LilyPond-master-file: "lateefYusef_brotherJohn_quartets_score.ly"
%%% End:
