Function ConvertToLetter(iCol As Long) As String
   Dim a As Long
   Dim b As Long
   a = iCol
   ConvertToLetter = ""
   Do While iCol > 0
      a = Int((iCol - 1) / 26)
      b = (iCol - 1) Mod 26
      ConvertToLetter = Chr(b + 65) & ConvertToLetter
      iCol = a
   Loop
End Function