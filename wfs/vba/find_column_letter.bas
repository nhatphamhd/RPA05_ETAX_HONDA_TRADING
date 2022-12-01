Function findColumnLetter(strFindText As String, intSearchRows As Integer) As String
    ActiveSheet.Rows(intSearchRows).Select
    Dim rng As Range
    
    On Error Resume Next
    Set rng = Cells.Find(What:=strFindText, After:=ActiveCell, LookIn:=xlFormulas2, LookAt:= _
    xlPart, SearchOrder:=xlByRows, SearchDirection:=xlNext, MatchCase:=False _
    , SearchFormat:=False)
    On Error GoTo 0
    
    If Not rng Is Nothing Then
        findColumnLetter = Split(Cells(1, rng.Column).Address, "$")(1)
    Else
        findColumnLetter = ""
    End If

End Function