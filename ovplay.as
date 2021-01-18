#regcmd "_hsp3cmdinit@4","ovplay.dll"
#cmd ov_init  $000
#cmd ov_memload	$001
#cmd ov_duplicate	$002
#cmd ov_play	$003
#cmd ov_loop  $004
#cmd ov_bloop $005
#cmd ov_stop	$006
#cmd ov_setvolume	$007
#cmd ov_setpan	$008
#cmd ov_releasebuf $009
#cmd ov_getformat $00A
#cmd ov_getstatus $00B
#cmd ov_memsave $0FE
#cmd ov_finalize $0FF

#const DSBCAPS_LOCSOFTWARE	$00000008
#const DSBCAPS_STICKYFOCUS $00004000
#const DSBCAPS_GLOBALFOCUS	$00008000
#const STREAMINGBUFFER     $00010000

#const global LF_SE		0
#const global LF_BGM	STREAMINGBUFFER
#const global SF_SE		DSBCAPS_STICKYFOCUS
#const global SF_BGM	DSBCAPS_STICKYFOCUS | STREAMINGBUFFER
#const global GF_SE		DSBCAPS_GLOBALFOCUS
#const global GF_BGM	DSBCAPS_GLOBALFOCUS | STREAMINGBUFFER

#module ovplay

#deffunc ov_load str filename, int id, int flags
	mref ret, 64
	exist filename
	if strsize < 0 {
		dialog filename+"‚ª‘¶Ý‚µ‚Ü‚¹‚ñ", 1, "Error"
		ret = 0
		return
	}
	sdim buf, strsize
	bload filename, buf
	ov_memload buf, id, flags
	sdim buf, 0
	return

#deffunc ov_save str filename, int id
	ov_memsave id, buf
	bsave filename, buf
	sdim buf, 0
	return

#defcfunc _ov_getstatus int id
	ov_getstatus id
	return stat
	
#global
