# Get the list of all Windows credentials
$credentials = Get-Credential -ListStored

# Loop through each credential and remove it
foreach ($cred in $credentials) {
    $targetName = $cred.TargetName
    $credType = $cred.CredentialType

    Write-Host "Removing credential for: $targetName (Type: $credType)"

    Remove-StoredCredential -Target $targetName -Type $credType
}

Write-Host "All credentials removed."
