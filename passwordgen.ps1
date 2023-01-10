$words = Get-Content C:\script\words.txt
Do{
    $w1 = Get-Random -InputObject $words
    $w1 = $w1.Substring(0,1).toupper()+$w1.Substring(1).tolower()
    $w2 = Get-Random -InputObject $words
    $w2 = $w2.Substring(0,1).toupper()+$w2.Substring(1).tolower()
    $num = Get-Random -Maximum 10
    Write-Host -NoNewLine -ForegroundColor Green "Password is "; Write-Host -ForegroundColor Red -BackgroundColor White $w1$num$w2
    $pwd = Write-Output $w1$num$w2
    $pwd | Set-Clipboard
    Write-Output "Password Saved to clipboard you can now paste it any where"
    Write-Output "Press anykey to continue"
    Pause -Prompt "Hit enter to generate another"
}
Until(nul)
