"""generateTemplates

generate templates for a music ensemble, as defined by a given file (format to be defined)
"""

def generateCommonScoreLy(targetPitchDic, midiInstrumentDic, clefDic,
                          staffSize=14, title='Title', subtitle='subtitle',
                          musicPieceLabel='musicPieceOne',
                          noteslyname='SWM_notes'):
    """generate common score.ly file
    
    requires the dictionaries for the targetpitch, midisintruments and clef. 
    The keys of these dictionaries should all be the same, and should be the 
    set of instrument labels. The values are, resp., the target pitch, the midi
    instrument for the MIDI rendering and the clef, for the representation.
    """
    targetPitchStr = '\n'.join([
        'targetPitch%s = %s' %(label, targetPitch) for label, targetPitch in targetPitchDic.items()])
    midiInstrStr = '\n'.join([
        'midiInstr%s = "%s"' %(label, instrument) for label, instrument in midiInstrumentDic.items()])
    clefInstrStr = '\n'.join([
        'clef%s = %s' %(label, clef) for label, clef in clefDic.items()])
    commonStr = (
        '%% Automatically generated by generateTemplates.py\n\n' +
        '%% TRANSPOSITION and MIDI variables\n' +
        'originpitch = c %%c\' %%bes\'%% f %% c\'\n\n' +
        targetPitchStr + '\n' +
        midiInstrStr + '\n' +
        clefInstrStr + '\n' +
        '%% INCLUDE the musical notes (and any variables further used in the books)\n' +
        '\\include "%s.ly" %% Put the name of the *_notes.ly\n\n' %noteslyname +
        '\paper{\n' +
        '  print-all-headers = "true"\n' +
        '}\n' +
        '#(set-global-staff-size %d)\n\n' %staffSize +
        '%% BOOK FOR THE WHOLE SCORE\n' +
        '%%\n' + 
        '%%    add as many bookparts as there are pieces in the music\n' +
        '\\book{\n' +
        '  \\bookOutputSuffix "score"\n' +
        '  \\header {\n' +
        '    title = "%s"\n' %title +
        '    }\n' +
        '  #(set-global-staff-size %d)\n' %staffSize +
        '  \\bookpart{\n' +
        '    \\header{\n' +
        '      subtitle = "%s"\n' %subtitle +
        '      }\n' +
        '    \\score {\n' +
        '      \\new StaffGroup \\keepWithTag #\'score \\%s\n' %musicPieceLabel +
        '      \\layout {\n' +
        '	#(layout-set-staff-size %d)}\n' %staffSize +
        '      \\midi { }\n' +
        #'      \\header{\n' +
        #'	instrumentName ="%s"\n' %truc +
        #'      }\n' +
        '    }\n' +
        '  }\n' +
        '  % ... other bookparts come here\n' +
        '}\n\n' +
        '% BOOKS FOR EACH INSTRUMENT\n' +
        '% \n' +
        '%    for each instrument, we likewise have a book\n' +
        '% \n' +
        '% TODO: make more automatisms with variables? possible to put more logic?\n' +
        '    % ')
    return commonStr

def generateCommonNotesLy(pieceTitle='title',
                          composer='me'):
    commonStr = ('\\version "2.18.2"\n' +
                 '\n' +
                 'pieceTitle = "%s"\n' %pieceTitle +
                 'composer = "%s"\n' %composer +
                 '\n' +
                 '\\header{' +
                 '  title = \\pieceTitle\n' +
                 '  composer = \composer\n' +
                 '}\n' +
                 '\n' +
                 'globalStyle = { % Use for various rendering styles that apply to all parts\n' +
                 '  \\accidentalStyle "modern-cautionary"\n' +
                 '}\n' +
                 '\n' +
                 'structure = { % Use to give annotations, mainly, also checking meaure consistency\n' +
                 '  s1^\\markup{\\circle 1} \\breathe |\n' +
                 '  s1 |\n' +
                 '  s1 \\breathe |\n' +
                 '  s1\n' +
                 '  \\bar "||"\n' +
                 '}\n' +
                 '\n' +
                 'global = { % Use for tempo and key changes\n' +
                 '  \\time 2/2\n' +
                 '  \\tempo 2 = 90\n' +
                 '  \\key d \\minor\n' +
                 '}\n'+
                 '\n'
                 )
    return commonStr

def generateBook(staffSize=20,
                 bookSuffix='suffix',
                 bookTitle='title',
                 instrumentName='instrument',
                 tagInScore='instrument',
                 scoreLabel='musicPieceOne',
                 withMidi=False):
    midiStr = ''
    if withMidi:
        midiStr = '\\midi {}\n'
    
    bookStr = ('#(set-global-staff-size %d)%%\n' %(staffSize) +
               '\\book{\n' +
               '  \\bookOutputSuffix %s\n' %(bookSuffix) +
               '  #(set-global-staff-size %d)%%\n' %(staffSize) +
               '\n' +
               '  \\bookpart{\n' +
               '    \\header{\n' +
               '      subtitle = %s\n' %bookTitle +
               '      }\n' +
               '    \\score {\n' +
               '      \\new StaffGroup \\keepWithTag #\'%s \\%s\n' %(
                   tagInScore, scoreLabel) +
               '      \\header{\n' +
               '	instrumentName = %s\n' %instrumentName +
               '      }\n' +
               '    }\n' +
               '  }\n' +
               '  %% ... other bookparts\n' +
               '}\n\n')
    return bookStr

def generateNotes(instrument, optLabel=''):
    notesStr = ('%s%sNotes = \\transpose \\originpitch \\targetPitch%s {\n' %(
        optLabel, instrument, instrument) +
                '  \\new Voice {\n' +
                '    \\global\n' + # this is adding the global generated in generateCommonNotes
                '    \\relative c\'\'{\n' +
                '      \\set Staff.instrumentName = #"%s "\n' %instrument +
                '      \\set Staff.midiInstrument = \midiInstr%s\n' %instrument +
                '      \\transposition c\' %% for MIDI files? to be verified\n' +
                '\n'+
                '      \\clef \\clef%s\n' %instrument +
                '      \\compressFullBarRests\n' +
                '      R1*4 c\n' +
                '\n' +
                '      \\bar "|."\n' + 
                '    }\n' +
                '  }\n' +
                '}\n')
    return notesStr

def generateNotesScore(instruments, optNotesLabel='', scoreLabel='musicPieceOne', scoreTag='score'):
    scoreNotesStr = scoreLabel + ' = {\n  <<\n'
    scoreNotesStr += '\n'.join(
        ['    \\tag #\'%s \\tag #\'%s \\new Staff { << \\globalStyle \\structure \\%s%sNotes >> }' %(
            scoreTag, ins, optNotesLabel, ins) for ins in instruments])
    scoreNotesStr += '\n  >>\n}\n'
    return scoreNotesStr

def generateVariablesEmacs(masterfilename):
    varStr = (
        ' Local Variables\n' +
        ' Lilypond-master-file: "%s"\n' %masterfilename +
        ' End:')
    return varStr

