function readCells (strRng as string) as string
	dim rng as range
	on error resume next
	set rng = ActiveSheet.Range(strRng)
	on error goto 0
	if not rng is nothing then
		readCells = ActiveSheet.Range(strRng)
	else
		readCells = "#ERROR"
	end if
end function