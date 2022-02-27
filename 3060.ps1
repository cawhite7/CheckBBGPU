$c = @{
Username = 'www.caseywhite@gmail.com'
Password = Unprotect-CmsMessage -Path $env:SystemDrive\Users\cwhite\source\cc6
}

$cred = New-Object System.Management.Automation.PSCredential($c.Username,($c.Password | ConvertTo-SecureString -AsPlainText -Force))


$3060 = ($test = Invoke-WebRequest -UseBasicParsing https://www.bestbuy.com/site/nvidia-geforce-rtx-3060-ti-8gb-gddr6-pci-express-4-0-graphics-card-steel-and-black/6439402.p?skuId=6439402).Content | foreach {$_ -match 'data-button-state="SOLD_OUT"'}

if ($3060 -eq $false) {

    Send-MailMessage -From 'www.caseywhite@gmail.com' -To 'Casey.7@aol.com' -Subject '3060' -Body 'https://www.bestbuy.com/site/nvidia-geforce-rtx-3060-ti-8gb-gddr6-pci-express-4-0-graphics-card-steel-and-black/6439402.p?skuId=6439402' -SmtpServer smtp.gmail.com -Port '587' -UseSsl -Credential $cred

    [console]::Beep(1000,2000)

}

$test.StatusDescription
