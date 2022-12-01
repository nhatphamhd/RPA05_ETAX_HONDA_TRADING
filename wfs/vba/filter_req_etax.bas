Function Main(optional strCol as string)
	
	if strCol = "" then
    		ActiveSheet.Range("$A$17:$IP$17").AutoFilter Field:=5, Criteria1:="<>0", _
        	Operator:=xlAnd
	else
		ActiveSheet.Range("$A$17:$IP$17").AutoFilter Field:=Cint(strCol), Criteria1:="<>0", _
        	Operator:=xlAnd
	end if

End Function