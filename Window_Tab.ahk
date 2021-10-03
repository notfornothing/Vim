; Windows 10 虚拟桌面自动切换 
	#^l::
	send #^{right} 
	return 
	#^h::
	send #^{left}
	return 
	
; Windows 窗口
	#h::
	{
	    send #{left}
	    return
	}
	#l::
	{
	    send #{right}
	    return
	}
	#k::
	{
	    send #{up}
	    return
	}
	#j::
	{
	    send #{down}
	    return
	}


	
^n::
send {down}
return

^p::
send {up}
return 

^h::
send {left}
return

^l::
send {right}
return
	
#IFWinActive ahk_exe chrome.exe
	$^l::
		send ^l
	return


#IFWinActive ahk_exe msedge.exe
	$^l::
		send ^l
	return

#IFWinActive ahk_exe Xshell.exe
	$^h::
		send ^h
	return
	
#IFWinActive ahk_exe Xshell.exe
	$^l::
		send ^l
	return