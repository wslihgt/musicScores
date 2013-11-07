%%%%% piece.ly
%%%%% (This is the global definitions file)

\version "2.16.0"

\header{
  title = "Brother John"
	composer = "Yusef Lateef"
}

global= {
  \time 3/4
  \key b \minor
  \tempo 4 = 200
  \accidentalStyle "modern-cautionary"
}

Violinone = \new Voice { \relative c''{
  \set Staff.instrumentName = #"Violin 1 "
  \set Staff.midiInstrument = #"oboe"
  \set tieWaitForNote = ##t

  r2. | r2. | r2. | r2. | 
  r2. | r2. | r2. | r2. |


\repeat volta 2 {b2.\segno | fis'2. | e8 fis e4.. a16 | fis2. | 
  \grace { cis8 ~ } d2. | b2. | cis8 d cis2 | } 
\alternative { 
{ \times 2/3 { e8 dis d } cis2 | }
{ b2 r4 \bar "||"  }
}

cis2 d8 e | cis2 d8 e | cis2 b8 ais | cis2 r4 |
cis2 d8 e | fis2 g8 fis | d2 cis8 b | g2 fis4 \bar "||"

b2. | fis'2. | e8 fis e4.. a16 | fis2. | 
\grace { cis8 ~ } d2. | b2. | cis8 d cis2 | b2 r4 \bar "||"

  r4 \times 2/3 {fis'8 d b} \times 2/3 {gis' e b} | \times 2/3 {a' fis cis}\times 2/3 {gis' e b} fis'4 | 
  r4 \times 2/3 {dis8 bis gis} \times 2/3 {e' cis a} | fis'4 r2 |
  r4 \times 2/3 {fis8 d b} \times 2/3 {gis' e b} | \times 2/3 {a' fis cis}\times 2/3 {gis' e b} fis'4 | 
  r4 \times 2/3 {dis8 bis gis} \times 2/3 {e' cis a} | dis4 r2 |

\bar "|." }}   %*********************************
Violintwo = \new Voice { \relative c''{
  \set Staff.instrumentName = #"Violin 2 "
  \set Staff.midiInstrument = #"violin"

  r4. fis4. | gis4 r2 | r4 fis4 gis~ | gis r2 |
  r4. fis4. | gis4 r2 | r4 fis4 gis~ | gis r2 |

\repeat volta 2
{
  r4.\segno fis4. | gis4 r2 | r4 fis4 gis~ | gis r2 |
  r4. fis4. | gis4 r2 | r4 fis4 gis~ | 
}
\alternative{{gis4 r2 |}{gis4 r2 \bar "||" }}

cis2 d8 e | cis2 d8 e | cis2 b8 ais | cis2 r4 |
cis2 d8 e | fis2 g8 fis | d2 cis8 b | g2 fis4 \bar "||"

  r4. fis4. | gis4 r2 | r4 fis4 gis~ | gis r2 |
  r4. fis4. | gis4 r2 | r4 fis4 gis~ | gis4 r2  \bar "||"

  r4 fis gis | a gis fis | r8 dis4. e4 | fis2 r4 |
  r4 fis gis | a gis fis | r8 dis4. e4 | dis2 r4 |

\bar "|." }}   %*********************************
Viola = \new Voice { \relative c' {
  \set Staff.instrumentName = #"Viola "
  \set Staff.midiInstrument = #"viola"
  \clef alto

  r4. d4. | e4 r2 | r4 d4 e~ | e r2 |
  r4. d4. | e4 r2 | r4 d4 e~ | e r2 |

\repeat volta 2
{
  r4.\segno d4. | e4 r2 | r4 d4 e~ | e r2 |
  r4. d4. | e4 r2 | r4 d4 e~ | 
}
\alternative{{e4 r2 |}{e4 r2 \bar "||" }}

cis2 d8 e | cis2 d8 e | cis2 b8 ais | cis2 r4 |
cis2 d8 e | fis2 g8 fis | d2 cis8 b | g2 fis4 \bar "||"

  r4. d4. | e4 r2 | r4 d4 e~ | e r2 |
  r4. d4. | e4 r2 | r4 d4 e~ | e4 r2 \bar "||"

  r4 d e | fis e d | r8 bis4. cis4 | dis2 r4 |
  r4 d e | fis e d | r8 bis4. cis4 | dis2 r4 |

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

cis2 d8 e |cis2 d8 e | cis2 b8 ais | cis2 r4 |
cis2 d8 e | fis2 g8 fis | d2 cis8 b | g2 fis4 \bar "||"

  b,4. fis'4 b8 | d2. | b,4. fis'4 b8 | d4 cis fis, | 
  b,4. fis'4 b8 | d2. | b,4. fis'4 b8 | d'4 cis fis, \bar "||"

  r4 b b | cis b b | r8 gis4. a4 | b2 r4 |
  r4 b b | cis b b | r8 gis4. a4 | gis2 r4 |
  

\bar "|."}}   %**********************************

music = {
  <<
    \tag #'score \tag #'vn1 \new Staff { << \global \Violinone >> }
    \tag #'score \tag #'vn2 \new Staff { << \global \Violintwo>> }
    \tag #'score \tag #'vla \new Staff { << \global \Viola>> }
    \tag #'score \tag #'vlc \new Staff { << \global \Cello>> }
  >>
}
