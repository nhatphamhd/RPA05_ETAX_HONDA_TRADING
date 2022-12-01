Function findNextEmptyRow(optional strCol as string) As Integer
	if strCol = "" then
    		findNextEmptyRow = ActiveSheet.Cells(ActiveSheet.Rows.Count, "B").End(xlUp).Row + 1
	else
		findNextEmptyRow = ActiveSheet.Cells(ActiveSheet.Rows.Count, strCol).End(xlUp).Row + 1
	end if
End Function