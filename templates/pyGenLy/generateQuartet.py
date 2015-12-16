import generateTemplates as gt

def generateNotesAndScore(instruments,
                          targetPitchDic,
                          clefDic,
                          midiInstrDic,
                          title='Title',
                          ensemble='Ensemble',
                          composer='me',
                          filename=None, outdir='', withChords=False):
    
    notesly = gt.generateCommonNotesLy(pieceTitle=title, composer=composer)

    if withChords:
        notesly += '\n' + gt.generateChordNotes() + '\n'
        
    notesly += ('\n').join(
        [gt.generateNotes(instrument) for instrument in instruments])

    notesly += gt.generateNotesScore(instruments, withChords=withChords)
    
    scorely = gt.generateCommonScoreLy(
        targetPitchDic,
        midiInstrDic,
        clefDic,
        staffSize=14, title=title, subtitle=ensemble,
        musicPieceLabel='musicPieceOne',
        noteslyname=filename+'_notes')

    scorely += ('\n').join(
        [gt.generateBook(
            instrumentName=instrument, bookSuffix=instrument,
            tagInScore=instrument) for instrument in instruments])

    
    if filename is not None:
        notesly += gt.generateVariablesEmacs(masterfilename=filename+'_score.ly')
        notesly += gt.generateVariablesFrescobaldi(masterfilename=filename+'_score')
        f = open(outdir+'/'+filename+'_notes.ly', 'w')
        f.writelines(notesly)
        f.close()
        f = open(outdir+'/'+filename+'_score.ly', 'w')
        f.writelines(scorely)
        f.close()
        
    return notesly, scorely

def generateOboeQuartet(*args, **kwargs):
    """
    """
    instruments = ('Oboe', 'Violin', 'Alto', 'Cello')
    
    targetPitchDic = {
        'Oboe': 'c', 
        'Violin': 'c', 
        'Alto': 'c', 
        'Cello': 'c', }
    
    clefDic = {
        'Oboe': 'treble', 
        'Violin': 'treble', 
        'Alto': 'alto', 
        'Cello': 'bass', }

    midiInstrDic = {
        'Oboe': 'oboe', 
        'Violin': 'violin', 
        'Alto': 'viola', 
        'Cello': 'cello', }

    return generateNotesAndScore(instruments=instruments,
                                 targetPitchDic=targetPitchDic,
                                 clefDic=clefDic, midiInstrDic=midiInstrDic,
                                 ensemble='quatuor',
                                 **kwargs)
    

def generateWashingMachines(*args, **kwargs):
    """
    """
    instruments = ('Drums', 'Oboe', 'TenorSax', 'Trombone', 'Guitar', 'Piano')
    # target pitch, relative to c':
    targetPitchDic = dict(
        zip(instruments,
            ('c\'', 'c\'', 'd\'\'', 'd\'\'\'', 'c\'', 'c\'')))
    
    clefDic = dict(
        zip(instruments,
            ('drums', 'treble', 'treble', 'treble', 'treble', 'treble')))
    
    midiInstrDic = dict(
        zip(instruments,
            ('synth drum', 'soprano sax', 'tenor sax', 'trombone',
             'electric guitar (jazz)',
             'acoustic grand')))
    
    return generateNotesAndScore(instruments=instruments,
                                 targetPitchDic=targetPitchDic,
                                 clefDic=clefDic, midiInstrDic=midiInstrDic,
                                 ensemble='Wasching Machines',
                                 **kwargs)
    
