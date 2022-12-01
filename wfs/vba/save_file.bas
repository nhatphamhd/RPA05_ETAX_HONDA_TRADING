Sub Main()

    Dim strFilePath As String
    Application.DisplayAlerts = False
    
    strFilePath = ActiveWorkbook.FullName
    ActiveWorkbook.SaveAs Filename:=strFilePath, _
         FileFormat:=xlOpenXMLWorkbook, CreateBackup:=False
    Application.DisplayAlerts = True
End Sub


