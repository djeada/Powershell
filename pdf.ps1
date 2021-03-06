$path = 'C:\users\Adam\Desktop\New folder'
$wd = New-Object -ComObject Word.Application
Get-ChildItem -Path $path -Include *.doc, *.docx -Recurse |
	ForEach-Object {
		$doc = $wd.Documents.Open($_.Fullname)
		$pdf = $_.FullName -replace $_.Extension, '.pdf'
		$doc.ExportAsFixedFormat($pdf,17,$false,0,3,1,1,0,$false, $false,0,$false, $true)
		$doc.Close()
	}
$wd.Quit()