do {

powershell -File C:\Users\cwhite\Desktop\3060.ps1

Start-Sleep -Seconds 5

powershell -File C:\Users\cwhite\Desktop\3080.ps1

Start-Sleep -Seconds 5

} while ($true)