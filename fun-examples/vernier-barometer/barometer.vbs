Set WshShell = CreateObject("WScript.Shell")
fullname = Wscript.ScriptFullName
Set fileobject = CreateObject("Scripting.FileSystemObject")
Set file = fileobject.GetFile(fullname)
folder = fileobject.GetParentFolderName(file)
WshShell.Run Chr(34) & folder & "\barometer.bat" & Chr(34), 0
Set WshShell = Nothing
