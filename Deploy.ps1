Connect-PnPOnline -Url https://zergs-admin.sharepoint.com
Apply-PnPProvisioningTemplate -Path ./PnP_TenantDesign.xml

Connect-PnPOnline -Url https://zergs.sharepoint.com/Sites/TestCommunity

Invoke-PnPSiteDesign -Identity $SiteDesign -WebUrl $Url | Tee-Object  -Variable resultSiteDesign *>$null
$resultString = Out-String -InputObject $resultSiteDesign
Write-Host $resultString