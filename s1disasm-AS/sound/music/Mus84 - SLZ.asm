Mus8C_Boss2_Header:
    smpsHeaderStartSong 1
    smpsHeaderVoice     Mus8C_Boss2_Voices
    smpsHeaderChan      $01, $00
    smpsHeaderTempo     $01, $03

    smpsHeaderDAC       Mus8C_Boss2_DAC

Mus8C_Boss2_DAC:
    dc.b    $87         ; play BGM sample
    smpsStop

Mus8C_Boss2_Voices: