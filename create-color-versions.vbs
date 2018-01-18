'create color versions using actions from Adobe Illustrator
'
'
'
'TO DO: check to see if the app is running
'wait to start processing images until after the application is ready.
'get the file name dynamically from the web app.
'see Adobe scripting guide for more information: 
'http://www.adobe.com/devnet/illustrator/scripting.html

Option Explicit

Dim appRef
Set appRef = CreateObject("Illustrator.Application")
appRef.UserInteractionLevel = -1

Dim logoID
logoID = "C:\test\TEST-Elect-Colle-H-BG-RGB"

Dim fileName
fileName = logoID + ".svg"

Dim saveOptions
Set saveOptions = CreateObject("Illustrator.EPSSaveOptions")
saveOptions.CMYKPostScript = True

Dim saveOptionsPDF
Set saveOptionsPDF = CreateObject("Illustrator.PDFSaveOptions")

'Call the convertColor sub for each color mode
'Each colorMode sent needs to have an associated action in Illustrator
convertColor "BG-CMYK-C"
convertColor "BG-CMYK-U"
convertColor "BG-PMS-110C"
convertColor "BG-PMS-7405U"
convertColor "WG-CMYK-C"
convertColor "WG-CMYK-U"
convertColor "WG-PMS-110C"
convertColor "WG-PMS-7405U"
convertColor "W-CMYK"
convertColor "B-CMYK"

'Close Adobe Illustrator
appRef.Quit

Sub convertColor(colorMode)
	'opens the file
	'runs the conversion actions
	'edits the path/filename
	'saves the file
	'closes the original without saving

	'open the document with Illustrator
	Dim docRef
	Set docRef = appRef.Open(fileName)
	
	'Run the Illustrator action on the active file 
	'Call using the format: (action name, action set)
	'docRef.DoScript (colorMode, "Convert Colors")
	appRef.DoScript colorMode, "Convert Colors"
	
	'Create the new file name by inserting the color mode text
	Dim newFileName
	newFileName = logoID + colorMode + ".eps"
	Dim pdfFileName
	pdfFileName = logoID + colorMode + ".pdf"
	
	'Save the eps and pdf file
	docRef.SaveAs newFileName, saveOptions
	docRef.SaveAs pdfFileName, saveOptionsPDF
	
	'Close the svg file without saving
	docRef.Close	

End Sub
