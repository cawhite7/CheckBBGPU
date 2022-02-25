$c = @{
Username = 'www.caseywhite@gmail.com'
Password = 'rhgctoptcvrjpzrz'
}

$cred = New-Object System.Management.Automation.PSCredential($c.Username,($c.Password | ConvertTo-SecureString -AsPlainText -Force))


$3080 = ($test = Invoke-WebRequest -UseBasicParsing https://www.bestbuy.com/site/nvidia-geforce-rtx-3080-10gb-gddr6x-pci-express-4-0-graphics-card-titanium-and-black/6429440.p?skuId=6429440).Content | foreach {$_ -match 'data-button-state="SOLD_OUT"'}

if ($3080 -eq $false) {

    Send-MailMessage -From 'www.caseywhite@gmail.com' -To 'Casey.7@aol.com','cpamlenyi@gmail.com' -Subject '3080' -Body 'https://www.bestbuy.com/site/nvidia-geforce-rtx-3080-10gb-gddr6x-pci-express-4-0-graphics-card-titanium-and-black/6429440.p?skuId=6429440' -SmtpServer smtp.gmail.com -Port '587' -UseSsl -Credential $cred

    [console]::Beep(1000,2000)

}

$test.StatusDescription