Sub format_font_size(strSheet as string, strFont as string, strSize as String)

	Dim ws As Worksheet	
	If strSheet <> "" Then
		ActiveWorkbook.WorkSheets(strSheet).Activate
	End if
    Set ws = ActiveWorkbook.ActiveSheet
	'strRange = "A1:" + ws.Range("A1").SpecialCells(xlCellTypeLastCell).Address
	
    With ws.Cells.Font
    .Name  = strFont 
    .Size = strSize
    End With 

End Sub    