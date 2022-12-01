Sub Main(strSheet as string, strNumberFormat as string, optional strRng as String)

	Dim ws As Worksheet
	Dim rng as Range	
	If strSheet <> "" Then
		ActiveWorkbook.WorkSheets(strSheet).Activate
	End if
    	Set ws = ActiveWorkbook.ActiveSheet

	on error resume next
	if strRng = "" then
		set rng = ws.cells
	else
		set rng = ws.range(strRng)
	end if
	on error goto 0
	
	With rng
		.NumberFormat = strNumberFormat
	End With 

End Sub    