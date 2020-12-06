Write-Host "Made by Alienum"
$secret= Read-Host -Prompt 'Input your secret to encrypt'
$Date = Get-Date
$hash=[System.Security.Cryptography.HashAlgorithm]::Create("sha256").ComputeHash([System.Text.Encoding]::UTF8.GetBytes($secret))
$encodedHash = [Convert]::ToBase64String($hash)
Write-Host "Encrypted hash '$encodedHash' on '$Date'"
