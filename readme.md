## Create Print Versions from web .svg files 

### Description
Adobe Illustrator Actions Set file that can be installed in the Illustrator actions panel. Expected input is a .svg of the Purdue lockup. All black, gold, and gray colors will be converted to the appropriate CMYK values or spot colors based on which action is called. Anyone with Illustrator CC should be able to use it.

### Instructions for installing the action set:
1. Copy the reference files pms-110c.ai and pms-7405u.ai to the following folder: /users/shared/color-swatches/
1. Open Illustrator CC
1. Select “Window” > “Actions” from the top menu to show the actions panel
1. From the action panel menu, select “load actions”
1. Find and select the .aia file and click “open”
1. The actions will now be available in the actions panel
 
### Instructions for testing the custom action:
1. Open a BG, WG, W, or B .svg file
1. In the action panel, find the “Convert Colors” set at the bottom, and select the color mode you want to output
1. Click the “play” arrow/button at the bottom of the panel
1. The action will run and update the file. There is no save command, save files via an external script or manually after conversion.

The vbs file is an example that runs the script remotely.

## References from Adobe:
* [Adobe Illustrator CC 2017 Scripting Guide](http://www.adobe.com/content/dam/acom/en/devnet/illustrator/pdf/AI_ScriptGd_2017.pdf)
* [Adobe Illustrator CC 2017 Reference: VB Script](http://www.adobe.com/content/dam/acom/en/devnet/illustrator/pdf/Illustrator_VBScript_Reference_2017.pdf)
