' CreateShortcut.vbs - Setup script for Open General
'
' currently its only function is to create a desktop shortcut
' possible future enhancements could include:
'	- create start programs folder & shortcut
'	- user interface with options
'	- reset video mode
'	- uninstall
'
Set fso = CreateObject("Scripting.FileSystemObject")
Set fScript = fso.GetFile(WScript.ScriptFullName)
Set WshShell = WScript.CreateObject("WScript.Shell")

' First try to get rid of the "all users" shortcut created by msi installer
strFilename = WshShell.SpecialFolders("AllUsersDesktop") & "\Play Open General.lnk"
If (fso.FileExists(strFilename)) Then
	On Error Resume Next
	fso.DeleteFile(strFilename)
End If

' Now create new shortcut for current user only
strFilename = WshShell.SpecialFolders("Desktop") & "\Play Open General.lnk"
Set oShellLink = WshShell.CreateShortcut(strFilename)
oShellLink.TargetPath = fScript.ParentFolder.Path & "\OpenGen.exe"
oShellLink.Save
