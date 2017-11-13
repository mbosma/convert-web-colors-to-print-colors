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

Dim objApp
Set objApp = CreateObject("Illustrator.Application")

Dim fileName
set fileName = "C:\temp\lockup.svg"

'Call the convertColor sub for each color mode
'Each colorMode sent needs to have an associated action in Illustrator
convertColor "BG-CMYK-C"
convertColor "BG-CMYK-U"


Sub convertColor(colorMode)
	'opens the file
	'runs the conversion actions
	'edits the path/filename
	'saves the file
	'closes the original without saving

	'open the document with Illustrator
	Set docRef = objApp.Open(fileName)
	
	'Run the Illustrator action on the active file 
	'Call using the format: (action name, action set)
	docRef.DoScript (colorMode, "Convert Colors")
	
	'Create the new file name by inserting the color mode text
	Dim newFileName
	Set newFileName = Left(filename, Len(fileName)-4) + "-" + colorCode + ".eps"
	
	'Save the eps file
	docRef.SaveAs (newFileName)
	
	'Close the svg file without saving
	docRef.Close

End Sub
