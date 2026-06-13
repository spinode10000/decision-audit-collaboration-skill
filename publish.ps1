param(
  [Parameter(Mandatory = $true)]
  [string]$RemoteUrl
)

$ErrorActionPreference = "Stop"

git branch -M main

$existingRemote = git remote get-url origin 2>$null
if ($LASTEXITCODE -eq 0 -and $existingRemote) {
  git remote set-url origin $RemoteUrl
} else {
  git remote add origin $RemoteUrl
}

git push -u origin main
