Sub cut_paste_range(strSheet as string, srtFrom as string, strTo as String)

	Dim ws As Worksheet	
	If strSheet <> "" Then
		ActiveWorkbook.WorkSheets(strSheet).Activate
	End if
    Set ws = ActiveWorkbook.ActiveSheet
    
    ws.Range(srtFrom).Cut Range(strTo)
	

End Sub    