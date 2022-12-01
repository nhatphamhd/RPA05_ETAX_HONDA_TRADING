'original idea: https://excel.tips.net/T007164_Deleting_Duplicate_Columns.html

Sub Main()
    Dim rngData As Range
    Dim arr1, arr2
    Dim i As Integer, j As Integer, n As Integer

    On Error Resume Next
    Set rngData = ActiveSheet.UsedRange
    If rngData Is Nothing Then Exit Sub

    n = rngData.Columns.Count

    For i = n To 2 Step -1
        For j = i - 1 To 1 Step -1
            If WorksheetFunction.CountA(rngData.Columns(i)) <> 0 And _
              WorksheetFunction.CountA(rngData.Columns(j)) <> 0 Then
                arr1 = rngData.Columns(i)
                arr2 = rngData.Columns(j)
                If AreEqualArr(arr1, arr2) Or arr2(1, 1) = "Parts number" Then
                        rngData.Columns(j).Delete
                End If
            End If
        Next j
    Next i

End Sub

Function AreEqualArr(arr1, arr2) As Boolean
    Dim i As Long, n As Long
    AreEqualArr = False
    For n = LBound(arr1) To UBound(arr1)
        If arr1(n, 1) <> arr2(n, 1) Then
            Exit Function
        End If
    Next n
    AreEqualArr = True
End Function



