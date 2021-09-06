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

