Function findRow(strFindText As String) As string
    ActiveSheet.Cells(1,1).Activate
    Dim rng As Range
    
    On Error Resume Next
    Set rng = Cells.Find(What:=strFindText, After:=ActiveCell, LookIn:=xlValues, LookAt:= _
    xlPart, SearchOrder:=xlByRows, SearchDirection:=xlNext, MatchCase:=True _
    , SearchFormat:=False)
    On Error GoTo 0
    
    If Not rng Is Nothing Then
        findRow= rng.Row
    Else
        findRow= ""
    End If

End Function