# Start-TestShell

This cmdlet speeds up Powershell testing by easily creating new sessions 

Alias `sts`

This can be added to your profile profile. 

```
New-Item -Type file $PROFILE -force
iwr https://raw.githubusercontent.com/Overglazed/Start-TestShell/master/Start-TestShell.ps1 | select -expand Content | Out-File -Append $PROFILE -Force -Encoding utf8
```

# Debugging in Visual Studio

Add the following debug options to the project. 

- Start Action -> Start external program: `<PATH-TO-POWERSHELL>`

- Start Options -> Command line arguments:
```
-NoProfile -NoExit -Command "Import-Module .\assembly.dll"
```
