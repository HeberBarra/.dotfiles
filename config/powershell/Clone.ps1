param (
	[Parameter(Mandatory=$true)][string]$RepoUrl,
    [Parameter(Mandatory=$true)][string]$Username,
	[string]$TokenFile="token"
)

$Token = Get-Content $TokenFile
$Repo = ($RepoUrl -split "//")[1].Trim()

$urlWithToken = "https://${Username}:$Token@${Repo}"
git clone $urlWithToken
Clear-History
