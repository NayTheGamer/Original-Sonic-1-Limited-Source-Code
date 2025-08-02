SegaJingle_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     SegaJingle_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $02, $0B

	smpsHeaderDAC       SegaJingle_DAC
	smpsHeaderFM        SegaJingle_FM1,	$F4, $16
	smpsHeaderFM        SegaJingle_FM2,	$F4, $11
	smpsHeaderFM        SegaJingle_FM3,	$F4, $12
	smpsHeaderFM        SegaJingle_FM4,	$F4, $13
	smpsHeaderFM        SegaJingle_FM5,	$F4, $17
	smpsHeaderPSG       SegaJingle_PSG1,	$D0, $04, $00, $00
	smpsHeaderPSG       SegaJingle_PSG2,	$D0, $04, $00, $00
	smpsHeaderPSG       SegaJingle_PSG3,	$D0, $04, $00, $00

; FM1 Data
SegaJingle_FM1:
	dc.b	nRst, $0C

SegaJingle_Jump03:
	smpsModSet          $05, $01, $02, $03
	smpsSetvoice        $07
	dc.b	nA5, $04, nC6, nE6, nG6, $0C, nFs6, nFs6, $04, nRst, nG6, $04
	dc.b	nA6, $0C, nG6, nFs6, nG6, $04, nRst, nFs6, $04, nE6, $24, nD6
	dc.b	$04, $04, $04, nE6, $30, nA5, $04, nC6, nE6, nG6, $0C, nFs6
	dc.b	nFs6, $04, nRst, nG6, $04, nA6, $0C, nG6, nFs6, nG6, $04, nRst
	dc.b	nFs6, $04, nE6, $24, $04, nFs6, nG6, nA6, $18, nB6
	smpsSetvoice        $00
	dc.b	nE7, $18, nE7, $04, nD7, nC7, nB6, nC7, nE7, nD7, $0C, $04
	dc.b	nC7, nD7, nB6, $0C, nG6, nE7, $18, $04, nD7, nC7, nB6, nC7
	dc.b	nE7, nD7, $0C, $04, nB6, nD7, nG7, $0C, nD7, nE7, $18, $04
	dc.b	nD7, nC7, nB6, nC7, nE7, nD7, $0C, $04, nC7, nD7, nB6, $0C
	dc.b	nG6, nA6, $30, nA7, $30
	smpsAlterVol        $FF
	smpsSetvoice        $06
	smpsAlterPitch      $F4
	dc.b	nD6, $04, nA5, nD6, nE6, nF6, nD6, nA6, $0C, nF6, $08, nA6
	dc.b	$04, nG6, $0C, $04, nF6, nE6, nD6, $0C, nCs6, $04, nD6, nE6
	dc.b	nD6, nA5, nD6, nE6, nF6, nD6, nG6, $0C, nF6, $08, nE6, $04
	dc.b	nD6, $0C, $04, nCs6, nD6, nE6, $18, nD7, $04, nA6, nD7, nE7
	dc.b	nF7, nD7, nA7, $0C, nF7, $08, nA7, $04, nG7, $0C, $04, nF7
	dc.b	nE7, nD7, $0C, nCs7, $04, nD7, nE7, nF7, $18, $04, nE7, nF7
	dc.b	nG7, nA7, nBb7
	smpsAlterPitch      $0C
	dc.b	nC7, $30
	smpsAlterPitch      $F4
	smpsAlterVol        $01
	smpsAlterPitch      $0C
	smpsJump            SegaJingle_Jump03

; FM3 Data
SegaJingle_FM3:
	smpsPan             panLeft, $00
	dc.b	nRst, $0C

SegaJingle_Jump02:
	smpsAlterVol        $04
	smpsSetvoice        $06
	dc.b	nE5, $04, nA5, nC6, nE6, $0C, nD6, nD6, $04, nRst, nE6, $04
	dc.b	nFs6, $0C, nE6, nD6, nE6, $04, nRst, nD6, $04, nC6, $24, nB5
	dc.b	$04, $04, $04, nC6, $30, nE5, $04, nA5, nC6, nE6, $0C, nD6
	dc.b	nD6, $04, nRst, nE6, $04, nFs6, $0C, nE6, nD6, nE6, $04, nRst
	dc.b	nD6, $04, nC6, $24, $04, nD6, nE6, nF6, $18, nG6, nA5, nE5
	dc.b	$0C, nA5, nG5, $18, nD5, $0C, nG5, nA5, $18, nE5, $0C, nA5
	dc.b	nG5, $18, nD6, $0C, nB5, nA5, $18, nE5, $0C, nA5, nG5, $18
	dc.b	nB5, $0C, nG5, nD5, $18, nA5, nD6, $0C, $04, nE6, nD6, nCs6
	dc.b	$18
	smpsAlterVol        $FC
	smpsAlterVol        $FF
	smpsSetvoice        $04
	dc.b	nA4, $04, nD5, nF5
	smpsSetvoice        $03
	dc.b	nA5, $02, nRst, nA5, nRst, nA5, nRst
	smpsSetvoice        $04
	dc.b	nA4, $04, nC5, nF5
	smpsSetvoice        $03
	dc.b	nA5, $02, nRst, nA5, nRst, nA5, nRst
	smpsSetvoice        $04
	dc.b	nB4, $04, nD5, nG5
	smpsSetvoice        $03
	dc.b	nB5, $02, nRst, nB5, nRst, nB5, nRst
	smpsSetvoice        $04
	dc.b	nA4, $04, nCs5, nE5
	smpsSetvoice        $03
	dc.b	nA5, $02, nRst, nA5, nRst, nA5, nRst
	smpsSetvoice        $04
	dc.b	nA4, $04, nD5, nF5
	smpsSetvoice        $03
	dc.b	nA5, $02, nRst, nA5, nRst, nA5, nRst
	smpsSetvoice        $04
	dc.b	nG4, $04, nC5, nE5
	smpsSetvoice        $03
	dc.b	nC6, $02, nRst, nC6, nRst, nC6, nRst
	smpsSetvoice        $04
	dc.b	nBb4, $04, nD5, nF5
	smpsSetvoice        $03
	dc.b	nBb5, $02, nRst, nBb5, nRst, nBb5, nRst, $02, nA5, $18
	smpsSetvoice        $04
	dc.b	nA4, $04, nD5, nF5
	smpsSetvoice        $03
	dc.b	nA5, $02, nRst, nA5, nRst, nA5, nRst
	smpsSetvoice        $04
	dc.b	nA4, $04, nC5, nF5
	smpsSetvoice        $03
	dc.b	nA5, $02, nRst, nA5, nRst, nA5, nRst
	smpsSetvoice        $04
	dc.b	nB4, $04, nD5, nG5
	smpsSetvoice        $03
	dc.b	nB5, $02, nRst, nB5, nRst, nB5, nRst
	smpsSetvoice        $04
	dc.b	nA4, $04, nCs5, nE5
	smpsSetvoice        $03
	dc.b	nA5, $02, nRst, nA5, nRst, nA5, nRst
	smpsSetvoice        $04
	dc.b	nBb4, $04, nD5, nF5
	smpsSetvoice        $03
	dc.b	nBb5, $02, nRst, nBb5, nRst, nBb5, nRst, nBb5, $18
	smpsSetvoice        $04
	dc.b	nE5, $04, nG5, nC6, $04
	smpsSetvoice        $03
	dc.b	nC6, $02, nRst, nC6, nRst, nC6, nRst, nC6, $18
	smpsAlterVol        $01
	smpsJump            SegaJingle_Jump02

; FM2 Data
SegaJingle_FM2:
	smpsSetvoice        $02
	dc.b	nRst, $0C

SegaJingle_Loop00:
	dc.b	nA3, $04, nAb3, nG3, nFs3, nF3, nE3, nEb3, nE3, nF3, nFs3, nG3
	dc.b	nAb3
	smpsLoop            $00, $07, SegaJingle_Loop00
	dc.b	nF3, nE3, nF3, nE3, nF3, nE3, nG3, nF3, nG3, nF3, nG3, nF3
	dc.b	nF3, nF4, nF3, nF4, nF3, nF4, nF3, nF4, nF3, nF4, nF3, nF4
	dc.b	nG3, nG4, nG3, nG4, nG3, nG4, nG3, nG4, nG3, nG4, nG3, nG4
	dc.b	nF3, nF4, nF3, nF4, nF3, nF4, nF3, nF4, nF3, nF4, nF3, nF4
	dc.b	nE3, nE4, nE3, nE4, nE3, nE4, nE3, nE4, nE3, nE4, nE3, nE4
	dc.b	nF3, nF4, nF3, nF4, nF3, nF4, nF3, nF4, nF3, nF4, nF3, nF4
	dc.b	nG3, nG4, nG3, nG4, nG3, nG4, nE3, nE4, nE3, nE4, nE3, nE4
	dc.b	nA3, nA4, nA3, nA4, nA3, nA4, nA3, nA4, nA3, nA4, nA3, nA4
	dc.b	nA3, nA4, nA3, nA4, nA3, nA4, nA4, nA4, nA4, nA4, nA4, nA4
	dc.b	nD4, nD4, nD4, $10, nF4, $04, $04, $10, nG4, $04, $04, $10
	dc.b	nA4, $04, $04, $10, nD4, $04, $04, $10, nC4, $04, $04, $10
	dc.b	nBb3, $04, $04, $04, $04, $04, $04, nA3, $0C, $04, $04, $04
	dc.b	nD4, nD4, nD4, $10, nF4, $04, $04, $10, nG4, $04, $04, $10
	dc.b	nA3, $04, $04, $10, nBb3, $04, nBb4, nBb3, nBb4, nBb3, nBb4, nBb3
	dc.b	nBb4, nBb3, nBb4, nBb3, nBb4, nC4, nC5, nC4, nC5, nC4, nC5, nC4
	dc.b	nC5, nC4, nC5, nC4, nC5
	smpsJump            SegaJingle_Loop00

; FM4 Data
SegaJingle_FM4:
	smpsPan             panRight, $00
	dc.b	nRst, $0C

SegaJingle_Jump01:
	smpsAlterVol        $FD
	smpsAlterVol        $FF
	smpsSetvoice        $03
	dc.b	nRst, $0C, nE5, $02, nRst, nE5, nRst, nE5, nRst, nD5, $18, nRst
	dc.b	$0C, nC5, $02, nRst, nC5, nRst, nC5, nRst, nD5, $18, nRst, $0C
	dc.b	nG5, $02, nRst, nG5, nRst, nG5, nRst, nFs5, $18, nRst, $0C, nG5
	dc.b	$02, nRst, nG5, nRst, nG5, nRst, nFs5, $18, nRst, $0C, nE5, $02
	dc.b	nRst, nE5, nRst, nE5, nRst, nD5, $18, nRst, $0C, nC5, $02, nRst
	dc.b	nC5, nRst, nC5, nRst, nD5, $18, nRst, $0C, nG5, $02, nRst, nG5
	dc.b	nRst, nG5, nRst, nFs5, $18, nRst, $0C, nA5, $02, nRst, nA5, nRst
	dc.b	nA5, nRst, nB5, $18, nA4, $08, nA4, $02, nRst, nA5, nRst, nA5
	dc.b	nRst, nA5, nRst, nA5, $18, nG4, $08, nG4, $02, nRst, nG5, nRst
	dc.b	nG5, nRst, nG5, nRst, nG5, $18, nA4, $08, nA4, $02, nRst, nA5
	dc.b	nRst, nA5, nRst, nA5, nRst, nA5, $18, nG4, $08, nG4, $02, nRst
	dc.b	nG5, nRst, nG5, nRst, nG5, nRst, nG5, $0C, nB5, $02, nRst, nB5
	dc.b	nRst, nB5, nRst, nA4, $08, nA4, $02, nRst, nA5, nRst, nA5, nRst
	dc.b	nA5, nRst, nA5, $18, nG4, $08, nG4, $02, nRst, nG5, nRst, nG5
	dc.b	nRst, nG5, nRst, nB4, $08, nB4, $02, nRst, nB5, nRst, nB5, nRst
	dc.b	nB5, nRst, nA4, $08, nA4, $02, nRst, nA5, nRst, nA5, nRst, nA5
	dc.b	nRst, nA5, $18, nA4, $08, nA4, $02, nRst, nA5, nRst, nA5, nRst
	dc.b	nA5, nRst, nE6, nRst, nE6, nRst, nE6, nRst, nA6, nRst, nA6, nRst
	dc.b	nA6, nRst
	smpsAlterVol        $01
	smpsAlterVol        $FD
	smpsSetvoice        $05
	smpsAlterVol        $F7
	dc.b	nD4, $04, $04, $04
	smpsSetvoice        $03
	smpsAlterVol        $09
	dc.b	nF5, $02, nRst, nF5, nRst, nF5, nRst
	smpsSetvoice        $05
	smpsAlterVol        $F7
	dc.b	nF4, $04, $04, $04
	smpsSetvoice        $03
	smpsAlterVol        $09
	dc.b	nC5, $02, nRst, nC5, nRst, nC5, nRst
	smpsSetvoice        $05
	smpsAlterVol        $F7
	dc.b	nG3, $04, $04, $04
	smpsSetvoice        $03
	smpsAlterVol        $09
	dc.b	nD5, $02, nRst, nD5, nRst, nD5, nRst
	smpsSetvoice        $05
	smpsAlterVol        $F7
	dc.b	nA3, $04, $04, $04
	smpsSetvoice        $03
	smpsAlterVol        $09
	dc.b	nE5, $02, nRst, nE5, nRst, nE5, nRst
	smpsSetvoice        $05
	smpsAlterVol        $F7
	dc.b	nD4, $04, $04, $04
	smpsSetvoice        $03
	smpsAlterVol        $09
	dc.b	nF5, $02, nRst, nF5, nRst, nF5, nRst
	smpsSetvoice        $05
	smpsAlterVol        $F7
	dc.b	nC4, $04, $04, $04
	smpsSetvoice        $03
	smpsAlterVol        $09
	dc.b	nE5, $02, nRst, nE5, nRst, nE5, nRst
	smpsSetvoice        $05
	smpsAlterVol        $F7
	dc.b	nBb3, $04, $04, $04
	smpsSetvoice        $03
	smpsAlterVol        $09
	dc.b	nD5, $02, nRst, nD5, nRst, nD5, nRst, nCs5, $18
	smpsSetvoice        $05
	smpsAlterVol        $F7
	dc.b	nD4, $04, $04, $04
	smpsSetvoice        $03
	smpsAlterVol        $09
	dc.b	nD5, $02, nRst, nD5, nRst, nD5, nRst
	smpsSetvoice        $05
	smpsAlterVol        $F7
	dc.b	nF4, $04, $04, $04
	smpsSetvoice        $03
	smpsAlterVol        $09
	dc.b	nC5, $02, nRst, nC5, nRst, nC5, nRst
	smpsSetvoice        $05
	smpsAlterVol        $F7
	dc.b	nG3, $04, $04, $04
	smpsSetvoice        $03
	smpsAlterVol        $09
	dc.b	nD5, $02, nRst, nD5, nRst, nD5, nRst
	smpsSetvoice        $05
	smpsAlterVol        $F7
	dc.b	nA3, $04, $04, $04
	smpsSetvoice        $03
	smpsAlterVol        $09
	dc.b	nE5, $02, nRst, nE5, nRst, nE5, nRst
	smpsSetvoice        $05
	smpsAlterVol        $F7
	dc.b	nBb3, $04, $04, $04
	smpsSetvoice        $03
	smpsAlterVol        $09
	dc.b	nF5, $02, nRst, nF5, nRst, nF5, nRst, nF5, $18
	smpsSetvoice        $05
	smpsAlterVol        $F7
	dc.b	nC4, $04, $04, $04
	smpsSetvoice        $03
	smpsAlterVol        $09
	dc.b	nE5, $02, nRst, nE5, nRst, nE5, nRst, nE5, $18
	smpsAlterVol        $03
	smpsAlterVol        $03
	smpsJump            SegaJingle_Jump01

; FM5 Data
SegaJingle_FM5:
	smpsPan             panRight, $00
	smpsAlterNote       $05
	dc.b	nRst, $04
	smpsJump            SegaJingle_FM1

; PSG1 Data
SegaJingle_PSG1:
	dc.b	nRst, $0C

SegaJingle_Jump06:
	dc.b	nRst, $0C, nC5, $02, nRst, nC5, nRst, nC5, nRst, nB4, $18, nRst
	dc.b	$0C, nA4, $02, nRst, nA4, nRst, nA4, nRst, nB4, $18, nRst, $0C
	dc.b	nE5, $02, nRst, nE5, nRst, nE5, nRst, nD5, $18, nRst, $0C, nE5
	dc.b	$02, nRst, nE5, nRst, nE5, nRst, nD5, $18, nRst, $0C, nC5, $02
	dc.b	nRst, nC5, nRst, nC5, nRst, nB4, $18, nRst, $0C, nA4, $02, nRst
	dc.b	nA4, nRst, nA4, nRst, nB4, $18, nRst, $0C, nE5, $02, nRst, nE5
	dc.b	nRst, nE5, nRst, nD5, $18, nRst, $0C, nE5, $02, nRst, nE5, nRst
	dc.b	nE5, nRst, nE5, $18, nE4, $08, nE4, $02, nRst, nE5, nRst, nE5
	dc.b	nRst, nE5, nRst, nE5, $18, nD4, $08, nD4, $02, nRst, nD5, nRst
	dc.b	nD5, nRst, nD5, nRst, nD5, $18, nE5, $08, nE4, $02, nRst, nE5
	dc.b	nRst, nE5, nRst, nE5, nRst, nE5, $18, nD4, $08, nD4, $02, nRst
	dc.b	nD5, nRst, nD5, nRst, nD5, nRst, nD5, $0C, nD5, $02, nRst, nD5
	dc.b	nRst, nD5, nRst, nE4, $08, nE4, $02, nRst, nE5, nRst, nE5, nRst
	dc.b	nE5, nRst, nE5, $18, nD4, $08, nD4, $02, nRst, nD5, nRst, nD5
	dc.b	nRst, nD5, nRst, nD4, $08, nD4, $02, nRst, nD5, nRst, nD5, nRst
	dc.b	nD5, nRst, nE4, $08, nE4, $02, nRst, nE5, nRst, nE5, nRst, nE5
	dc.b	nRst, nE5, $18, nE4, $08, nE4, $02, nRst, nE5, nRst, nE5, nRst
	dc.b	nE5, nRst, nA5, nRst, nA5, nRst, nA5, nRst, nE6, nRst, nE6, nRst
	dc.b	nE6, nRst
	smpsPSGAlterVol     $FF
	smpsPSGvoice        fTone_03
	dc.b	nA4, $04, nD5, nF5, $04, nRst, $0C, nA4, $04, nC5, nF5, $04
	dc.b	nRst, $0C, nB4, $04, nD5, nG5, $04, nRst, $0C, nA4, $04, nCs5
	dc.b	nE5, $04, nRst, $0C, nA4, $04, nD5, nF5, $04, nRst, $0C, nG4
	dc.b	$04, nC5, nE5, $04, nRst, $0C, nBb4, $04, nD5, nF5, $04, nRst
	dc.b	$24, nA4, $04, nD5, nF5, $04, nRst, $0C, nA4, $04, nC5, nF5
	dc.b	$10, nB4, $04, nD5, nG5, $04, nRst, $0C, nA4, $04, nCs5, nE5
	dc.b	$10, nBb4, $04, nD5, nF5, $04, nRst, $24, nE5, $04, nG5, nC6
	dc.b	$04, nRst, $24
	smpsPSGAlterVol     $01
	smpsJump            SegaJingle_Jump06

; PSG2 Data
SegaJingle_PSG2:
	dc.b	nRst, $06, nRst, $06

SegaJingle_Jump05:
	smpsAlterPitch      $F4
	dc.b	nA5, $04, nC6, nE6, nG6, $0C, nFs6, nFs6, $08, nG6, $04, nA6
	dc.b	$0C, nG6, nFs6, nG6, $04, nRst, nFs6, $04, nE6, $24, nD6, $04
	dc.b	$04, $04, nE6, $30, nA5, $04, nC6, nE6, nG6, $0C, nFs6, nFs6
	dc.b	$08, nG6, $04, nA6, $0C, nG6, nFs6, nG6, $04, nRst, nFs6, $04
	dc.b	nE6, $24, $04, nFs6, nG6, nA6, $18, nB6, nE7, $18, nE7, $04
	dc.b	nD7, nC7, nB6, nC7, nE7, nD7, $0C, $04, nC7, nD7, nB6, $0C
	dc.b	nG6, nE7, $18, $04, nD7, nC7, nB6, nC7, nE7, nD7, $0C, $04
	dc.b	nB6, nD7, nG7, $0C, nD7, nE7, $18, $04, nD7, nC7, nB6, nC7
	dc.b	nE7, nD7, $0C, $04, nC7, nD7, nB6, $0C, nG6, nA6, $30, nA7
	dc.b	$30
	smpsAlterPitch      $F4
	dc.b	nD6, $04, nA5, nD6, nE6, nF6, nD6, nA6, $0C, nF6, $08, nA6
	dc.b	$04, nG6, $0C, $04, nF6, nE6, nD6, $0C, nCs6, $04, nD6, nE6
	dc.b	nD6, nA5, nD6, nE6, nF6, nD6, nG6, $0C, nF6, $08, nE6, $04
	dc.b	nD6, $0C, $04, nCs6, nD6, nE6, $18, nD7, $04, nA6, nD7, nE7
	dc.b	nF7, nD7, nA7, $0C, nF7, $08, nA7, $04, nG7, $0C, $04, nF7
	dc.b	nE7, nD7, $0C, nCs7, $04, nD7, nE7, nF7, $18, $04, nE7, nF7
	dc.b	nG7, nA7, nBb7
	smpsAlterPitch      $0C
	dc.b	nC7, $30
	smpsAlterPitch      $F4
	smpsAlterPitch      $0C
	smpsAlterPitch      $0C
	smpsJump            SegaJingle_Jump05

; PSG3 Data
SegaJingle_PSG3:
	dc.b	nRst, $06, nRst, $06

SegaJingle_Jump04:
	smpsPSGvoice        fTone_03

SegaJingle_Loop01:
	dc.b	nA5, $04, nC6, nE6, nG6, nE6, nC6, nA5, nB5, nD6, nFs6, nD6
	dc.b	nB5
	smpsLoop            $00, $07, SegaJingle_Loop01
	dc.b	nD6, nE6, nA6, nD6, nE6, nA6, nE6, nA6, nB6, nE6, nA6, nB6
	dc.b	nRst, $30, nRst, nRst, nRst, nRst, nRst, nRst, nRst, nRst, nRst, nRst
	dc.b	nRst, nRst, nRst, nRst, nRst
	smpsJump            SegaJingle_Jump04

; DAC Data
SegaJingle_DAC:
	dc.b	dLowTimpani, $08, $04, dSnareSC, $0C, dLowTimpani, dSnareSC, $08, dLowTimpani, $04, $08, $04
	dc.b	dSnareSC, $0C, dLowTimpani, dSnareSC, $08, $04, dLowTimpani, $08, $04, dSnareSC, $0C, dLowTimpani
	dc.b	dSnareSC, $04, dSnareSC, dSnareSC, dLowTimpani, $08, $04, dSnareSC, $0C, dLowTimpani, dSnareSC, $04
	dc.b	dSnareSC, dSnareSC, dLowTimpani, $08, $04, dSnareSC, $0C, dLowTimpani, dSnareSC, $08, dLowTimpani, $04
	dc.b	dLowTimpani, $08, $04, dSnareSC, $0C, dLowTimpani, dSnareSC, $08, $04, dLowTimpani, $08, $04
	dc.b	dSnareSC, $0C, dLowTimpani, dSnareSC, $04, dSnareSC, dSnareSC, dLowTimpani, $08, $04, dSnareSC, $04
	dc.b	dSnareSC, dLowTimpani, dSnareSC, dLowTimpani, dSnareSC, dLowTimpani, dSnareSC, dSnareSC, dLowTimpani, $08, $04, dSnareSC
	dc.b	$0C, dLowTimpani, dSnareSC, dLowTimpani, $08, $04, dSnareSC, $0C, dLowTimpani, $04, dLowTimpani, dLowTimpani
	dc.b	dSnareSC, dLowTimpani, $08, dLowTimpani, $08, $04, dSnareSC, $0C, dLowTimpani, dSnareSC, $08, dLowTimpani
	dc.b	$04, dLowTimpani, $08, $04, dSnareSC, $0C, dLowTimpani, $04, $04, $04, dSnareSC, dLowTimpani
	dc.b	$08, dLowTimpani, $08, $04, dSnareSC, $0C, dLowTimpani, dSnareSC, $08, dLowTimpani, $04, dLowTimpani
	dc.b	$08, $04, dSnareSC, dLowTimpani, $08, $0C, dSnareSC, dLowTimpani, $08, $04, dSnareSC, $0C
	dc.b	dLowTimpani, dSnareSC, dLowTimpani, $08, $04, dSnareSC, $08, dLowTimpani, $04, dSnareSC, dLowTimpani, dSnareSC
	dc.b	dSnareSC, dSnareSC, dSnareSC, dLowTimpani, dLowTimpani, dLowTimpani, dSnareSC, dSnareSC, dSnareSC, dLowTimpani, $08, $04
	dc.b	dSnareSC, dSnareSC, dSnareSC, dLowTimpani, dLowTimpani, dLowTimpani, dSnareSC, dSnareSC, dSnareSC, dLowTimpani, $08, $04
	dc.b	dSnareSC, dSnareSC, dSnareSC, dLowTimpani, dLowTimpani, dLowTimpani, dSnareSC, dSnareSC, dSnareSC, dLowTimpani, $08, $04
	dc.b	dSnareSC, dSnareSC, dSnareSC, dLowTimpani, dLowTimpani, dLowTimpani, dSnareSC, dSnareSC, dSnareSC, dSnareSC, dSnareSC, dSnareSC
	dc.b	dSnareSC, dSnareSC, dSnareSC, dLowTimpani, dLowTimpani, dLowTimpani, dSnareSC, dSnareSC, dSnareSC, dLowTimpani, $08, $04
	dc.b	dSnareSC, dSnareSC, dSnareSC, dLowTimpani, dLowTimpani, dLowTimpani, dSnareSC, dSnareSC, dSnareSC, dLowTimpani, $08, $04
	dc.b	dSnareSC, dSnareSC, dSnareSC, dLowTimpani, $08, $04, dSnareSC, dLowTimpani, dSnareSC, dLowTimpani, $08, dLowTimpani
	dc.b	$04, dSnareSC, $08, dLowTimpani, $04, dLowTimpani, $08, dLowTimpani, $04, dSnareSC, $04, dLowTimpani
	dc.b	dSnareSC, dSnareSC, dSnareSC, dLowTimpani, dSnareSC, dSnareSC, dSnareSC

SegaJingle_Jump00:
	dc.b	dLowTimpani, $08, $04, dSnareSC, $0C, dLowTimpani, dSnareSC, $08, dLowTimpani, $04, $08, $04
	dc.b	dSnareSC, $0C, dLowTimpani, dSnareSC, $08, $04, dLowTimpani, $08, $04, dSnareSC, $0C, dLowTimpani
	dc.b	dSnareSC, $04, dSnareSC, dSnareSC, dLowTimpani, $08, $04, dSnareSC, $0C, dLowTimpani, dSnareSC, $04
	dc.b	dSnareSC, dSnareSC, dLowTimpani, $08, $04, dSnareSC, $0C, dLowTimpani, dSnareSC, $08, dLowTimpani, $04
	dc.b	dLowTimpani, $08, $04, dSnareSC, $0C, dLowTimpani, dSnareSC, $08, $04, dLowTimpani, $08, $04
	dc.b	dSnareSC, $0C, dLowTimpani, dSnareSC, $04, dSnareSC, dSnareSC, dLowTimpani, $08, $04, dSnareSC, $04
	dc.b	dSnareSC, dLowTimpani, dSnareSC, dLowTimpani, dSnareSC, dLowTimpani, dSnareSC, dSnareSC, dLowTimpani, $08, $04, dSnareSC
	dc.b	$0C, dLowTimpani, dSnareSC, dLowTimpani, $08, $04, dSnareSC, $0C, dLowTimpani, $04, dLowTimpani, dLowTimpani
	dc.b	dSnareSC, dLowTimpani, $08, dLowTimpani, $08, $04, dSnareSC, $0C, dLowTimpani, dSnareSC, $08, dLowTimpani
	dc.b	$04, dLowTimpani, $08, $04, dSnareSC, $0C, dLowTimpani, $04, $04, $04, dSnareSC, dLowTimpani
	dc.b	$08, dLowTimpani, $08, $04, dSnareSC, $0C, dLowTimpani, dSnareSC, $08, dLowTimpani, $04, dLowTimpani
	dc.b	$08, $04, dSnareSC, dLowTimpani, $08, $0C, dSnareSC, dLowTimpani, $08, $04, dSnareSC, $0C
	dc.b	dLowTimpani, dSnareSC, dLowTimpani, $08, $04, dSnareSC, $08, dLowTimpani, $04, dSnareSC, dLowTimpani, dSnareSC
	dc.b	dSnareSC, dSnareSC, dSnareSC, dLowTimpani, dLowTimpani, dLowTimpani, dSnareSC, dSnareSC, dSnareSC, dLowTimpani, $08, $04
	dc.b	dSnareSC, dSnareSC, dSnareSC, dLowTimpani, dLowTimpani, dLowTimpani, dSnareSC, dSnareSC, dSnareSC, dLowTimpani, $08, $04
	dc.b	dSnareSC, dSnareSC, dSnareSC, dLowTimpani, dLowTimpani, dLowTimpani, dSnareSC, dSnareSC, dSnareSC, dLowTimpani, $08, $04
	dc.b	dSnareSC, dSnareSC, dSnareSC, dLowTimpani, dLowTimpani, dLowTimpani, dSnareSC, dSnareSC, dSnareSC, dSnareSC, dSnareSC, dSnareSC
	dc.b	dSnareSC, dSnareSC, dSnareSC, dLowTimpani, dLowTimpani, dLowTimpani, dSnareSC, dSnareSC, dSnareSC, dLowTimpani, $08, $04
	dc.b	dSnareSC, dSnareSC, dSnareSC, dLowTimpani, dLowTimpani, dLowTimpani, dSnareSC, dSnareSC, dSnareSC, dLowTimpani, $08, $04
	dc.b	dSnareSC, dSnareSC, dSnareSC, dLowTimpani, $08, $04, dSnareSC, dLowTimpani, dSnareSC, dLowTimpani, $08, dLowTimpani
	dc.b	$04, dSnareSC, $08, dLowTimpani, $04, dLowTimpani, $08, dLowTimpani, $04, dSnareSC, $04, dLowTimpani
	dc.b	dSnareSC, dSnareSC, dSnareSC, dLowTimpani, dSnareSC, dSnareSC, dSnareSC
	smpsJump            SegaJingle_Jump00

SegaJingle_Voices:
;	Voice $00
;	$0C
;	$01, $01, $20, $00, 	$1D, $1D, $1D, $1D, 	$06, $02, $06, $02
;	$10, $03, $00, $03, 	$4F, $5F, $AF, $8F, 	$11, $82, $13, $84
	smpsVcAlgorithm     $04
	smpsVcFeedback      $01
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $02, $00, $00
	smpsVcCoarseFreq    $00, $00, $01, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1D, $1D, $1D, $1D
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $02, $06, $02, $06
	smpsVcDecayRate2    $03, $00, $03, $10
	smpsVcDecayLevel    $08, $0A, $05, $04
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $04, $13, $02, $11

;	Voice $01
;	$2C
;	$02, $01, $20, $01, 	$1D, $1D, $1D, $1D, 	$06, $02, $06, $02
;	$10, $03, $00, $03, 	$4F, $5F, $AF, $8F, 	$16, $84, $10, $84
	smpsVcAlgorithm     $04
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $02, $00, $00
	smpsVcCoarseFreq    $01, $00, $01, $02
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1D, $1D, $1D, $1D
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $02, $06, $02, $06
	smpsVcDecayRate2    $03, $00, $03, $10
	smpsVcDecayLevel    $08, $0A, $05, $04
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $04, $10, $04, $16

;	Voice $02
;	$35
;	$01, $31, $70, $00, 	$1F, $1F, $1F, $1F, 	$0F, $0B, $0B, $0B
;	$12, $12, $12, $12, 	$80, $9F, $9F, $9F, 	$13, $82, $82, $82
	smpsVcAlgorithm     $05
	smpsVcFeedback      $06
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $07, $03, $00
	smpsVcCoarseFreq    $00, $00, $01, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0B, $0B, $0B, $0F
	smpsVcDecayRate2    $12, $12, $12, $12
	smpsVcDecayLevel    $09, $09, $09, $08
	smpsVcReleaseRate   $0F, $0F, $0F, $00
	smpsVcTotalLevel    $02, $02, $02, $13

;	Voice $03
;	$3D
;	$01, $62, $03, $21, 	$30, $1F, $13, $26, 	$08, $08, $08, $03
;	$05, $00, $03, $00, 	$0F, $1B, $1B, $1B, 	$1A, $82, $82, $81
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $02, $00, $06, $00
	smpsVcCoarseFreq    $01, $03, $02, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $26, $13, $1F, $30
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $03, $08, $08, $08
	smpsVcDecayRate2    $00, $03, $00, $05
	smpsVcDecayLevel    $01, $01, $01, $00
	smpsVcReleaseRate   $0B, $0B, $0B, $0F
	smpsVcTotalLevel    $01, $02, $02, $1A

;	Voice $04
;	$2C
;	$41, $00, $22, $00, 	$1F, $1F, $1F, $1F, 	$0D, $0C, $0C, $0C
;	$10, $09, $00, $09, 	$4F, $5F, $AF, $8F, 	$13, $84, $15, $84
	smpsVcAlgorithm     $04
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $02, $00, $04
	smpsVcCoarseFreq    $00, $02, $00, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0C, $0C, $0C, $0D
	smpsVcDecayRate2    $09, $00, $09, $10
	smpsVcDecayLevel    $08, $0A, $05, $04
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $04, $15, $04, $13

;	Voice $05
;	$09
;	$00, $35, $01, $02, 	$1F, $1F, $1F, $1F, 	$0F, $1F, $04, $16
;	$10, $28, $00, $0F, 	$3E, $1E, $FF, $0F, 	$05, $1C, $1E, $80
	smpsVcAlgorithm     $01
	smpsVcFeedback      $01
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $03, $00
	smpsVcCoarseFreq    $02, $01, $05, $00
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $16, $04, $1F, $0F
	smpsVcDecayRate2    $0F, $00, $28, $10
	smpsVcDecayLevel    $00, $0F, $01, $03
	smpsVcReleaseRate   $0F, $0F, $0E, $0E
	smpsVcTotalLevel    $00, $1E, $1C, $05

;	Voice $06
;	$04
;	$71, $41, $31, $31, 	$13, $13, $13, $13, 	$00, $00, $00, $00
;	$00, $00, $00, $00, 	$0F, $0F, $0F, $0F, 	$11, $81, $0F, $81
	smpsVcAlgorithm     $04
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $04, $07
	smpsVcCoarseFreq    $01, $01, $01, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $13, $13, $13, $13
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $00, $00
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $00, $00, $00
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $01, $0F, $01, $11

;	Voice $07
;	$00
;	$11, $72, $51, $71, 	$1F, $5F, $1F, $5F, 	$10, $10, $10, $00
;	$00, $00, $00, $00, 	$18, $18, $18, $09, 	$12, $22, $18, $81
	smpsVcAlgorithm     $00
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $07, $05, $07, $01
	smpsVcCoarseFreq    $01, $01, $02, $01
	smpsVcRateScale     $01, $00, $01, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $10, $10, $10
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $01, $01, $01
	smpsVcReleaseRate   $09, $08, $08, $08
	smpsVcTotalLevel    $01, $18, $22, $12

