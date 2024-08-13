Set-Variable HASH_FONT_FILE -Option Constant -Value "6596922AABAF8876BB657C36A47009AC68C388662DB45D4AC05C2536C2F07ADE"

### Font Setup ###
# Based on https://gist.github.com/anthonyeden/0088b07de8951403a643a8485af2709b

$FontFile = "JetBrainsMono.zip"
$TempFolder = "$env:Temp\Fonts"
$Destination = "C:\Windows\Fonts"

If (-not(Test-Path -Path $FontFile -PathType Leaf)) {
    Invoke-WebRequest https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/JetBrainsMono.zip -OutFile JetBrainsMono.zip
} Else {
    Write-Host "Found JetBrainsMono.zip file."
}

If ((Get-FileHash $FontFile).Hash -eq $HASH_FONT_FILE) {
    Write-Host "Fonts file is OK."
} Else {
    Write-Host "Fonts file is corrupt. Terminating..."
    Exit
}

New-Item -Path $TempFolder -Type Directory
Expand-Archive ./JetBrainsMono.zip -DestinationPath $TempFolder -ErrorAction SilentlyContinue

$FontFiles = Get-ChildItem -Path "$TempFolder\*" -Include ('*.fon','*.otf','*.ttc','*.ttf') -Recurse

foreach($Font in $FontFiles) {
    Copy-Item $Font $Destination
    New-ItemProperty -Name $Font.BaseName -Path "HKLM:\Software\Microsoft\Windows NT\CurrentVersion\Fonts" -PropertyType string -Value $Font.name
}

### Oh My Posh Setup ###
$OhMyPoshScript = "oh-my-posh init pwsh --config https://raw.githubusercontent.com/HeberBarra/.dotfiles/main/config/ohmyposh/config.toml | Invoke-Expression"

if (Get-Command winget -ErrorAction SilentlyContinue) {
    winget install JanDeDobbeleer.OhMyPosh -s winget
}

$ProfileFolder = Split-Path $PROFILE -Parent
New-Item -Path $ProfileFolder -Type Directory -ErrorAction SilentlyContinue | Out-Null
New-Item -Path $PROFILE -Type File -ErrorAction SilentlyContinue | Out-Null

if ($null -eq (Get-Content $PROFILE) -or -not((Get-Content $profile).Contains($OhMyPoshScript))) {
    Add-Content -Path $PROFILE -Value $OhMyPoshScript
}


### Windows Terminal Setup ###
$WindowsTerminalConfigFile = "settings.json"
$WindowsTerminalConfigFolder = "$env:LOCALAPPDATA/Packages/Microsoft.WindowsTerminal_8wekyb3d8bbwe/LocalState/"

Remove-Item "$WindowsTerminalConfigFolder/$WindowsTerminalConfigFile" -Force -ErrorAction SilentlyContinue

if (-not(Test-Path $WindowsTerminalConfigFile -PathType Leaf)) {
    Invoke-WebRequest https://raw.githubusercontent.com/HeberBarra/.dotfiles/main/config/powershell/settings.json -OutFile settings.json
}

New-Item -Path $WindowsTerminalConfigFolder -ItemType Directory -ErrorAction SilentlyContinue | Out-Null
Copy-Item $WindowsTerminalConfigFile -Destination $WindowsTerminalConfigFolder
