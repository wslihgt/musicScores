import generateTemplates as gt

def generateOboeQuartet(title='oboe quartet',composer='me',
                        filename=None, outdir=''):
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

    notesly = gt.generateCommonNotesLy(pieceTitle=title, composer=composer)
    
    notesly += ('\n').join(
        [gt.generateNotes(instrument) for instrument in instruments])

    notesly += gt.generateNotesScore(instruments, )
    
    scorely = gt.generateCommonScoreLy(
        targetPitchDic,
        midiInstrDic,
        clefDic,
        staffSize=14, title=title, subtitle='quatuor',
        musicPieceLabel='musicPieceOne',
        noteslyname=filename+'_notes')

    scorely += ('\n').join(
        [gt.generateBook(
            instrumentName=instrument, bookSuffix=instrument,
            tagInScore=instrument) for instrument in instruments])

    
    if filename is not None:
        notesly += gt.generateVariablesEmacs(masterfilename=filename+'_score.ly')
        f = open(outdir+'/'+filename+'_notes.ly', 'w')
        f.writelines(notesly)
        f.close()
        f = open(outdir+'/'+filename+'_score.ly', 'w')
        f.writelines(scorely)
        f.close()
        
    return notesly, scorely
