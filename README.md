musicScores: repository with lots of LilyPond stuff

This repository is meant to contain arrangements for various ensemble to 
which I participate, in particular the Washing Machines, where we experiment
with Jazz and Cheese.

Content: 
  * templates: originally a folder to contain templates. Now it's better, 
  it contains a python program to generate templates! With this program,
  one can choose which instruments are to appear, in which key, which 
  tranposition, etc. It's not complete yet (no piano staff support for now).

  * thatSongTitle: for each music piece, there is one folder, sometimes also
  held within a 'composerName' folder, when that makes sense.

For some lilypond excerpts, it may be necessary to install LilyJAZZ, to render
the score into a pseudo-handwritten font (as done by Real Books). There
are places where to download it, one can try the followings:
  * direct download in the forum: http://lilypond.1069038.n5.nabble.com/Pseudo-handwritten-font-td142117.html (http://lilypond.1069038.n5.nabble.com/attachment/142689/1/LilyJAZZ.zip)

  * https://github.com/noteflakes/lyp-lilyjazz.git (although the installation
  of lyp seems to have broken some previous configurations that worked well...)

The scripts either expect LilyJAZZ to be installed where Lilypond can find the
'LilyJAZZ.ily' file, or, most probably, it expects the file to be in the
following folder, relative to the root directory of the working copy: '../LilyJAZZ/'. Hopefully some more sophisticated mechanisms will allow in future to have this a bit better managed (when LilyJAZZ-like modules will be directly included in some Lilypond version? not the case as of 2.18.2.)
