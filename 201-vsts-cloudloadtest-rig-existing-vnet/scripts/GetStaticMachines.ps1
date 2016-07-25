#Powershell wrapper to list out the configured machines for a VSTS account
param (
    [Parameter(Mandatory=$true)]
    [String]$TeamServicesAccountName,
    [Parameter(Mandatory=$true)]
    [String]$PATToken
)

function GetRestHeaders($patToken)
{
    $restHeaders = New-Object -TypeName "System.Collections.Generic.Dictionary[[String],[String]]"
    $authString = [Convert]::ToBase64String([Text.Encoding]::ASCII.GetBytes([String]::Concat((":", $PATToken))))
    $restHeaders.Add("Authorization", [String]::Concat("Basic ", $authString))
    return $restHeaders
}

$TeamServicesAccountUri = $TeamServicesAccountName -as [System.URI]
if(-not ($TeamServicesAccountUri -ne $null -and $TeamServicesAccountUri.Scheme -match '[http|https]'))
{
	$TeamServicesAccountUri = "https://" + $TeamServicesAccountName + ".vsclt.visualstudio.com"
}

$uri = [String]::Format("{0}/_apis/clt/configuration?include=staticmachines", $TeamServicesAccountUri)
$headers = GetRestHeaders $PATToken

Write-Output "Using TeamServicesAccount Uri as - " $TeamServicesAccountUri

try
{
    $result = Invoke-RestMethod -ContentType "application/json" -UserAgent "VsoLoadTestAgent" -Uri $uri -Headers $headers
    if($result.staticMachines)
	{
        Write-Host        
        $result.staticMachines
        Write-Host
    }
	else
    {
        Write-Error "Could not fetch any machine details, please check the parameters or contact vsoloadtest@microsoft.com"
    }    
} catch {
    # Dig into the exception to get the Response details.
    # Note that value__ is not a typo.
	if($_.Exception.Response)
	{
		Write-Host "StatusCode:" $_.Exception.Response.StatusCode.value__ 
		Write-Host "StatusDescription:" $_.Exception.Response.StatusDescription
	}
	else
	{
		Write-Host "Exception occurred and response is null."
	}
}


