Function copy_sheet(strSheet As String, strNewName As String) As String
    'this function clone input sheet into a new sheet. If Ws name is already taken, it will increment the number behind the sheet name
    Dim ws As Worksheet
    Dim boolCheck As Boolean
    Dim intCount As Integer

    intCount = 2
    boolCheck = False
    copy_sheet = strNewName

    

    On Error GoTo 0
    If strSheet <> "" Then
        
        Do
            On Error Resume Next
            'check worksheet is already available?
            Set ws = ActiveWorkbook.Worksheets(copy_sheet)
            On Error GoTo 0
            
            If ws Is Nothing Then
                Exit Do
            Else
                copy_sheet = strNewName & "_" & intCount
                intCount = intCount + 1
                'reset since ws is already checked
                Set ws = Nothing
                
            End If
        Loop While boolCheck = False

    
        ActiveWorkbook.Worksheets(strSheet).Activate
        Set ws = ActiveWorkbook.ActiveSheet
        ws.Copy before:=Sheets(2)
        If copy_sheet = strNewName Then
            ActiveWorkbook.ActiveSheet.Name = strNewName
        Else
            ActiveWorkbook.ActiveSheet.Name = copy_sheet
        End If
    End If



End Function