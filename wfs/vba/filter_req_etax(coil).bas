Function Main(strText as string, optional strCol as string)
	
	if strCol = "" then
    		ActiveSheet.Range("$A$17:$IP$17").AutoFilter Field:=2, Criteria1:=strText, _
        	Operator:=xlAnd
	else
		ActiveSheet.Range("$A$17:$IP$17").AutoFilter Field:=Cint(strCol), Criteria1:=strText, _
        	Operator:=xlAnd
	end if

End Function