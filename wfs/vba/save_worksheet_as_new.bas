Function Main(strSheetName As String, strFilename As String) As String
    Dim Links As Variant
    Dim wb As Workbook

        ActiveWorkbook.CheckCompatibility = False
        Application.DisplayAlerts = False
        Application.EnableEvents = False

    With ActiveWorkbook
        Sheets(strSheetName).Select
        Sheets(strSheetName).Copy


    End With
    Application.Wait (Now) + TimeValue("00:00:03")

    Set wb = ActiveWorkbook
    wb.SaveAs Filename:=strFilename _
        , FileFormat:=xlOpenXMLWorkbook, CreateBackup:=False
    Links = wb.LinkSources(Type:=xlLinkTypeExcelLinks)
    If IsEmpty(Links) = False Then
        For i = 1 To UBound(Links)
            wb.BreakLink _
                Name:=Links(i), _
                Type:=xlLinkTypeExcelLinks
        Next i
    End If
    wb.UpdateLinks = xlUpdateLinksNever
    wb.Save

    'close saved workbook
        wb.Close
    
        Application.DisplayAlerts = True
        Application.EnableEvents = True

    Main = "Success"
End Function