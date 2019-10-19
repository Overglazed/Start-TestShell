function Start-TestShell{
  PowerShell -NoExit -NoProfile `
    -Command {
      function prompt {
        Write-Host -NoNewline `
          -ForegroundColor Red `
          "$($pwd.Path.Substring($pwd.Path.LastIndexOf("\"))) TEST";
          return "> "
      }
    }
  
}

Set-Alias -Name sts -Value Start-TestShell