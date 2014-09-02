%%%%% Prelude, FWV30, C. Franck
%%%%% 
%%%%% file with notes 
% 
% origin: mutopia project
% 
% objective: create wind instrument ensemble arrangement.
% 

\version "2.16.0"

% \include "italiano.ly"

e = { \once \override TextScript #'font-name = #"Emmentaler"}
otm = { \once \override TextScript #'extra-offset = #'(0 . -1) }

title = "Prelude, Fugue et Variation, FWV30"
composer = "C. Franck"
arranger = "J.L. Durrieu"



\header{
  title = \title
  composer = \composer
  mutopiatitle = "Prélude"
  mutopiacomposer = "FranckC"
  mutopiaopus = "FWV 30"
  mutopiainstrument = "Organ"
  date = "1862"
  source = "IMSLP"
  style = "Romantic"
  copyright = "Public Domain"
  % maintainer = "Pierre Pouillon"
  maintainer = "P. Pouillon"
  maintainerEmail = "pierre@ssji.net"
  lastupdated = "2007/Mar/08"
  footer = "Mutopia-2008/02/19-936"
  tagline = \markup { 
    \override #'(box-padding . 1.0) 
    \override #'(baseline-skip . 2.7) 
    \box \center-align { 
      \small \line { 
	Sheet music from \with-url #"http://www.MutopiaProject.org" 
	\line { 
	  \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org 
	  \hspace #0.5 } • \hspace #0.5 
	\italic Free to download, with the \italic freedom to distribute, 
	modify and perform. 
      } 
      \line { 
	\small \line { 
	  Typeset using \with-url #"http://www.LilyPond.org" 
	  \line { 
	    \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org 
	  } by \maintainer 
	  \hspace #-1.0 . \hspace #0.5 Reference: \footer 
	} 
      } 
      \line { 
	\teeny \line { 
	  This sheet music has been placed in the public domain by the 
	  typesetter, for details see: \hspace #-0.5 
	  \with-url #"http://creativecommons.org/licenses/publicdomain" 
	  http://creativecommons.org/licenses/publicdomain 
	} 
      }
    }
  }
}

% some things to define in the ..._score.ly file:
%originpitch = c' %c' %bes'% f % c'
%targetpitchone = c'
%targetpitchtwo = c'
%targetpitchthr = c'
%targetpitchfou = c'

%clefVThree = G % alto % bass... 

% midiInstrOne
% midiInstrTwo
% midiInstrThr
% midiInstrFou

globalStyle = {
  \accidentalStyle "modern-cautionary"
}

titlePieceOne = "Prelude"

structurePieceOne = {
  s8 \p s8^\markup{" " \raise #2.0 \bold "Andantino"} s8 s2.|
  %s1 * 9/8 * 49
  s1 * 9/8 * 10
  |%12
  s2. \< s4.
  |%13
  s4 \! s8 \> s4. \! s4.
  | %14
  s4_\markup\italic "dim." s8 s4.^\markup "Poco rall." s4. 
  | %15
  s4.^\markup "a Tempo" s8 s s s4 s8
  | %16 
  s4. \< s2. \!
  | %17
  s1 * 9/8 
  |%18
  s4. \< s2. \!
  | %19
  s1 * 9/8 
  | %20 
  s4. s4 s4  \> s4 \!
  | %21
  s1 * 9/8 * 3
  | %24
  s4. \< s2. \!
  |%25 droite
  s1 * 9/8
  |%26
  s4. \< s2. \!
  | %27
  s1 * 9/8
  | %28
  s8 s8 s s2._\markup\italic "cresc."
  | %29
  s1 * 9/8 
  | %30
  s4. s8_\markup\italic "dim." s4 s4. 
  | %31
  s1 * 9/8
  | %32
  s8_\markup\italic "piu forte" s4  s8 s4\< s8 s4 \!
  | %33
  s4. s4\> s8 s4\! s8
  | %34
  s4. s8\< s4 s8 s4\!
  | %35
  s4. s4\> s8 s4 s8\!
  | %36
  s8 \f s4 s2. 
  | %37
  s1 * 9/8 * 6
  | %43
  s4_\markup\italic "dim." s8 s2 s8 s16 s16^\breathe
  | %44
  s4.\pp s2.
  | %45
  s1 * 9/8 * 3
  | %48
  s4. s8 \< s4\! s8\> s4\!
  | %49
  s4.^\markup "Rall." s2. |
  | %50
  s1 * 9/8
  \bar "|."
}

globalPieceOne = {
  \time 9/8
  \tempo 4. = 60
  \key si \minor 
}

one = \transpose \originpitch \targetpitchone {\new Voice { 
  \globalPieceOne
  \relative do {
  \set Staff.instrumentName = \labInstrOne
  \set Staff.midiInstrument = \midiInstrOne
  \transposition do' % for MIDI files? to be verified

  \compressFullBarRests
  
  re''8--   dod re_\markup{\italic "cantabile"} si4 dod8 re mi fad--
  |%2
  re-- dod re si4 dod8 re mi  fad
				%3
  si-- sol mi dod4 re8 sol-- mi dod
  |%4
  lad4 si8 mi-- dod lad! re-- si sold
  | %5
  si16 lad sold si lad8 dod16 si lad! dod si8 re16 dod si
  re dod mi
  |%6
  re8-> r4 r2. % dod re si4 dod8 re mi fad
  |%7
  R1 * 9/8 * 4
  |%11 droite
  re8-> dod re si4 dod8  re mi fad
  |%12
  re dod re si4 dod8 re mi fad
  |%13
  si sol mi dod4 re8 \otm sol_\markup\italic "espress." mi do
  |%14
  lad4  si8 si' re, si  si' dod, lad!
  | %15
  si4. ~si8 r r r4 r8
  |%16
  fad8 sol4 fad8 lad4 fad8 si4
  |%17
  fad8 dod'4 r2. 
  |%18
  fad,8 si4 fad8 dod'4 fad,8 re'4 
  | %19
  fad,8 mi'4 r2. %  
  |%20
  fad,8 fad' re si2.
  |%21
  fad8 fad' re si2.
  |%22
  sol8 sol' fad mi fad sol fad4 mi8
  |%23
  re4. ~re8 r r r4 r8
  |%24
  la8 sib4 la8 dod4 la8 re4 
  |%25 droite
  la8 mi'4 r4. r4. % sol,! fa! mi re la'4.
  |%26
  la,8 re4 la8 mi'4 la,8 fa'!4
  |%27
  la,8 sol'!4 r4. r4. % sol,! fa! mi re la'4.
  |%28
  la,8 la'8 fa! re2.
  |%29
  la8 la'8 fad! re2.
  |%30
  si8 si' la sold la si la4 sold!8
  |%31
  fad4. ~fad8 r r r4 r8
  |%32
  dod8 re4  dod8 mi4 dod8 fad4 
  |%33
  dod8 si la si4 sold8 la4 fad8
  |%34
  dod' fad4 dod8 sold'4 dod,8 la'4
  |%35
  dod,8 si la si4 sold8 la4 fad8
  |%36
  fad' sold4 fad8 la4 fad8 si4
  |%37
  mi,8 fad4 mi8 sold4 mi8 la4
  |%38
  re,8 mi4 re8 fad4 re8 sold4
  |%39
  dod,8 re  mi dod si la sold4 fad8
  |%40
  si dod re si la sold fad4 mid8
  |%41
  la8 si dod la sold fad re'4 mid,8
  |%42
  la8 si dod la sold fad re'4 mid,8
  |%43
  la si dod la sold fad la sold fad
  |%44
  la sold la fad4 sold!8 la si dod
  |%45
  la sold la fad4 sold!8 la si dod
  |%46
  fad re si sold4 la8 re si sold!
  |%47
  mid4 fad8 fad' la, fad fad' sold, mid!
  |%48
  fad4. ~fad8 la fad fad' sold, mid
  |%49
  fad4. ~fad8 la fad fad' sold, mid
  |%50
  fad2.\fermata r4 r8 
  
}}}   %*********************************

two = \transpose \originpitch \targetpitchtwo {\new Voice { 
  \globalPieceOne
  \relative do {
  \set Staff.instrumentName = \labInstrTwo
  \set Staff.midiInstrument = \midiInstrTwo
  \transposition do' % for MIDI files? to be verified

  \compressFullBarRests
  % R1*4
  r8 fad' ( si) r8 re, (fad si dod re )
  r8 fad, si r re, fad si dod re
  | %3
  r mi, si' r fad si r dod, sol'|
  r re fad r mi fad r re fad 
  |%5
  r dod fad r re fad r mi sol|
  R1 * 9/8 * 5 
  | %10
  r8 fad si r re, fad si dod re |
  r fad, si r re, fad si dod re|
  |%13
  r mi, si' r fad si r do, sol' |
  r re fad r mid sold r mi fad 
  |%15
  r8 fad8 sol r mi fad r re mi 
  | %16 
  R1 * 9/8 
  | %17
  r4 mi8 re dod si fad'4. 
  | %18
  R1 * 9/8 
  | %19 
  r4 mi8 re dod si fad'4. 
  | %20 
  r8 re si r mi si r fad' si,
  |%21
  r re si r mi  si r  fad'~ \e fad~
  |%22
  fad mi re dod  re  mi  r la sol
  | %23
  fad r8 r8 r4. r4.
  | %24 
  r4. r4. r4. 
  |% 25
  r4 sol!8 fa! mi re la'4. 
  | %26 
  r4. r4. r4. 
  | %27
  r4 sol!8 fa! mi re la'4. 
  | % 28
  r8 fa! re r sol re r la' re,
  | % 29
  r fad re r sol re r la' ~la ~ 
  | %30 
  la sol! fad mid fad sold r dod si
  | %31
  la r4 r4. r4. % dod re r si dod r la si 
  | %32
  R1 * 9/8 
  | %33
  la8  sold fad r4. r4. 
  | %34
  R1 * 9/8
  | %35
  la8  sold fad r4. r4. 
  | %36
  R1 * 9/8
  | %37
  mi'8 fad4 mi8 sold4 mi8 la4
  |%38
  re,8 mi4 re8 fad4 re8 sold4
  |%39
  dod,8 re  mi dod si la sold4 fad8
  |%40
  si dod re si la sold fad4 mid8
  |%41
  la8 si dod la sold fad re'4 mid,8
  |%42
  la8 si dod la sold fad re'4 mid,8
  |%43
  R1 * 9/8 * 7
  |%50 
  r2.\fermata r4 r8
}}}   %*********************************

three = \transpose \originpitch \targetpitchthr {\new Voice { 
  \globalPieceOne
  \relative do {
  \set Staff.instrumentName = \labInstrThr
  \set Staff.midiInstrument = \midiInstrThr
  \transposition do' % for MIDI files? to be verified

  %\clef bass %alto
  \clef \clefVThree

  \compressFullBarRests
  %R1 * 9/8 |%   r8 fad' ( si) r8 re, (fad si dod re )
  %R1 * 9/8 % r8 fad, si r re, fad si dod re
  | %3
  %R1 * 9/8 |% r mi, si' r fad si r dod, sol'|
  %R1 * 9/8 |%  r re fad r mi fad r re fad |
  | %5
  R1 * 9/8 * 5 |% r dod fad r re fad r mi sol|
  |%6
  re''8-> dod re si4 dod8 re mi fad
  |%7
  re-> dod re si4 dod8 re mi fad
  |%8
  si-- sold mid  dod4 re8 sold!-- mid! dod
  |%9
  si4 la?8 fad'-- la, fad fad'^- sold, mid
  |%10
  sold16  fad mid sold fad8 la16 sold fad la sold8 si16  lad sold si lad fad
  |%11 droite
  re'8-> dod re si4 dod8  re mi fad
  |%12
  re dod re si4 dod8 re mi fad
  |%13
  si sol mi dod4 re8 \otm sol_\markup\italic "espress." mi do
  |%14
  lad4  si8 si' re, si  si' dod, lad!
  | %15
  si4. ~si8 r r r4 r8
  |%16
  R1 * 9/8
  |%17
  r4 sol8 fad   mi re dod4. 
  |%18
  R1 * 9/8
  |%19
  r4 sol'!8 fad mi re  dod4.
  | %20
  R1 * 9/8 * 3
  | %23
  r8 \e la'8 sib r sol la r fa sol 
  | %24
  R1 * 9/8
  | %25
  r8 dod,!8 sib' la  sol  fa! mi4. 
  |%26
  R1 * 9/8
  |%27
  r4. r8 sol fa!  mi4. 
  | %28 
  R1 * 9/8
  | %29
  la8 la'8 fad! re2.
  | %30 
  R1 * 9/8
  | %31
  r8 dod re r si dod r la si 

  |%32
  R1 * 9/8 % r8_\markup  {Flûte 8 pieds} la' fad r la fad r la fad
  |%33
  r4. r8 sold! mid r fad dod
  |%34
  r re'  dod r mi  dod r fad   dod 
  |%35
  r4. r8 sold! mid r fad dod 
  |%36
  R1 * 9/8 %r8 re' si r re si r re si
  |%37
  R1 * 9/8 %r dod la r dod la r dod la
  | %38
  re'8 mi4 re8 fad4 re8 sold8 sold,! ~  
  | %39
  sold8 fad sold  mi4. ~mi8 \e mid fad~
  | %40
  fad mi! fad re4. ~re8 \e red mid
  |%41 
  r fad mid r dod la' ~la fad sold
  | %42
  r fad mid r dod la' ~la fad sold 
  |%43
  R1 * 9/8 * 7
  |%50 
  r2.\fermata r4 r8

}}}   %*********************************

four = \transpose \originpitch \targetpitchfou {\new Voice { 
  \globalPieceOne
  \relative do' {
  \set Staff.instrumentName = \labInstrFou
  \set Staff.midiInstrument = \midiInstrFou
  \transposition do' % for MIDI files? to be verified
  
  \compressFullBarRests
  % R1 * 9/8 %   r8 fad' ( si) r8 re, (fad si dod re )
  % R1 * 9/8 % r8 fad, si r re, fad si dod re
  % | %3
  % R1 * 9/8 % r mi, si' r fad si r dod, sol'|
  % R1 * 9/8 %  r re fad r mi fad r re fad |
  % | %5
  R1 * 9/8 * 5 % r dod fad r re fad r mi sol|
  r8  fad (si) r re,( fad si dod re)
  |%7
  r fad, si r re, fad si dod re|
  r8 mid, si' r fad si r dod, sold' 
  | %9
  r re fad r dod re r si  dod |
  r la dod r si re r dod mi |
  |%11
  r fad si r re, fad si dod re |
  r fad, si r re, fad si dod re|
  |%13
  r mi, si' r fad si r do, sol' |
  r re fad r mid sold r mi fad |
  |%15
  r8 re si r dod lad r si sol
  |%16
  r re' si r mi dod r fad re |
  |%17
  r8 lad!4 si4. ~si8 lad fad
  |%18
  r8 % \clef bass 
  sold! fad r lad fad r si fad
  |%19
  r dod' sol! fad4 si8 ~si <lad> < fad>~
  |%20
  fad2.~fad4.~
  |%21
  fad2.~fad4 si8~
  |%22
  si4. sol4. la4.~
  | %23
  la8 fad' re re-. mi dod re-. re sib
  | %24
  r fa' re r sol! mi r la fa!
  | %25
  r8 dod!4 re4. ~re8 dod la
  | %26
 r8 si! la r dod! la r re la
  | %27
  r mi' sib la4 re8 ~re <dod> <la>~
  | %28
  la2. ~la4.~
  | %29
  la2. ~la4 re8~
  | %30
  re4. ~re4. dod4.~
  | %31
  dod8 la' fad r8 sold mid r fad re
  |%32
  r8 la' fad r la fad r la fad
  | %33
  dod4. ~dod8 re si r dod la
  | %34
  r la'4 r8 la4 r8 la4
  | % 35
  dod,4. ~dod8 re si r dod la 
  | %36
  r8 re' si r re si r re si
  | %37
  r dod la r dod la r dod la
  | %38
  r si sold r si sold r  si sold
  | %39
  mi r r r4 <dod>8 ~dod si la
  | %40
  re r r r4 <si>8 ~si la sold
  | %41
  r re' si r la dod ~dod si re
  | %42
  r8 re si r la dod ~dod si re 
  |%43
  r8 dod fad r re fad r si, fad'
  | %44
  r dod( fad) r la,( dod fad sold la)
  |%45
  r dod, fad r la, dod fad sold la
  | %46
  r si, fad' r dod fad r sold, re'
  | %47
  r la dod r sid red r si dod
  | %48r %\clef bass 
  r la sold fad4 la8 ~la si sold!
  | %49
  r dod  la fad4 la8 ~la si sold
  | %50
  la2.\fermata r4 r8
}}}   %*********************************



five = \transpose \originpitch \targetpitchfiv {\new Voice { 
  \globalPieceOne
  \relative do {
  \set Staff.instrumentName = \labInstrFiv
  \set Staff.midiInstrument = \midiInstrFiv
  \transposition do' % for MIDI files? to be verified

  \clef bass 

  \compressFullBarRests
  si'2.   ~si4.
  la2. ~la4.
  %3
(sol8) r r fad r r mi r r
   | re r r dod r r si r r |
%5
 fad2. ~ fad4.|
   si'2. ~ si4.|
%7
 la2. ~ la4. (sold8) r r fad r
   r mid r r |
%9
fad r r si, r r dod r r |
   fad,2. ~ fad4.|
 %11
 si'2. ~ si4.| la2. ~ la4.
   %13
 (sol8) r r fad r r mi r r | re r r dod
   r r fad r r |
%15
 <<{r4 r8 si r r si r r}\\{si,2.  ~si4.}>>|
si8 r r si r r si r r|
 %17
 si2. ~si4.
| si8 r r si8 r r si8 r r si2. ~si4.
 %20
 |si4. dod4. re4.
 %21
   si4. dod4. re4.
  | mi4. sib4. la4. 
  |%23
  re2. ~re4. 
  | %24
  re8 r r re8 r r re r r
  | %25
 re2. ~re4.
| re8 r r re8 r r re r r |
 %27
 re2._~re4.
| re4. mi4. fa!4. |
 %29
 re4. mi4. fad4. |
 sol!4. si,4. dod4. |
 %31
 <<{fa4\rest r8 fad r r fad r r}\\{fad,2. ~fad4.}>>

|fad'8 r r mi r r re r r
   %33
|dod2. fad,8 r r
|fad' r r mi r r re r r
 %35
 |dod2. fad,8 r r
 |si' r r la r r sold r r
 %37
 |la r r sold r r fad r r
 |sold r r fad r r mi r r
 %39
 |la,   si4 la8 dod4 la8 re4
 |sold,8 la4 sold!8 si4 sold8 dod4
 %41
 |fad,8 sold4 fad8 la4 fad8 si4
 |fad8 sold4 fad8 la4 fad8 si4
 %43
 |fad2. ~fad8 r r
 |fad'2. ~fad4.
 %45
 |mi2. ~mi4.
 (re8) r r dod r r si r r
 %47
 |la r r sold r r dod r r
 |fad,4. si4. dod4.
 %49
|fad,4. re'4. dod4.
fad,2. \fermata r4 r8

}}}   %**********************************

musicPieceOne = {
  <<
    \tag #'score \tag #'v1 \new Staff { << \globalStyle \structurePieceOne \one >> }
    \tag #'score \tag #'v2 \new Staff { << \globalStyle \structurePieceOne \two>> }
    \tag #'score \tag #'v3 \new Staff { << \globalStyle \structurePieceOne \three>> }
    \tag #'score \tag #'v4 \new Staff { << \globalStyle \structurePieceOne \four>> }
    \tag #'score \tag #'v5 \new Staff { << \globalStyle \structurePieceOne \five>> }
  >>
}


%%% Local Variables:
%%% LilyPond-master-file: "franckC_prelude_windensemble_scoreAndParts.ly"
%%% End: 
