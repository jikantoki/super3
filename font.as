#module 
	#uselib "gdi32.dll"
	#func AddFontResourceEx "AddFontResourceExA" sptr, int, nullptr
	#func RemoveFontResourceEx "RemoveFontResourceExA" sptr, int, nullptr

	#deffunc addFont str fontFileName
		AddFontResourceEx fontFileName, 0x10
		sendmsg 0xffff, 0x001D, 0, 0
	return

	#deffunc removeFont str fontFileName
		RemoveFontResourceEx fontFileName, 0x10
		sendmsg 0xffff, 0x001D, 0, 0
	return
#global