Mus8C_Boss_Header:
    smpsHeaderStartSong 1
    smpsHeaderVoice     Mus8C_Boss_Voices
    smpsHeaderChan      $01, $00
    smpsHeaderTempo     $01, $03

    smpsHeaderDAC       Mus8C_Boss_DAC

Mus8C_Boss_DAC:
    dc.b    $86         ; play BGM sample
    smpsStop

Mus8C_Boss_Voices: