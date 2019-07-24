Connect-PnPOnline -Url https://contoso-admin.sharepoint.com
Apply-PnPProvisioningTemplate -Path ./PnP_TenantDesign.xml

$script = Get-PnPSiteScript | Where-Object {$_.Title -eq "SPFx Install Script"}
Get-PnPSiteScript -Identity $script.id | Format-List
