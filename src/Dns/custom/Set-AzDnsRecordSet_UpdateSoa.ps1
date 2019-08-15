<#
.Synopsis
Creates or updates a record set within a DNS zone.
.Description
Creates or updates a record set within a DNS zone.
.Example
To view examples, please use the -Online parameter with Get-Help or navigate to: https://docs.microsoft.com/en-us/powershell/module/az.dns/set-azdnsrecordset
.Outputs
Microsoft.Azure.PowerShell.Cmdlets.Dns.Models.Api20180501.IRecordSet
.Link
https://docs.microsoft.com/en-us/powershell/module/az.dns/set-azdnsrecordset
#>
function Set-AzDnsRecordSet_UpdateSoa {
[OutputType('Microsoft.Azure.PowerShell.Cmdlets.Dns.Models.Api20180501.IRecordSet')]
[CmdletBinding(DefaultParameterSetName='UpdateSoa', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Azure.PowerShell.Cmdlets.Dns.Profile('latest-2019-04-30')]
[Microsoft.Azure.PowerShell.Cmdlets.Dns.Description('Creates or updates a record set within a DNS zone.')]
param(
    [Parameter(Mandatory, HelpMessage='The name of the record set, relative to the name of the zone.')]
    [Alias('RelativeRecordSetName')]
    [Microsoft.Azure.PowerShell.Cmdlets.Dns.Category('Path')]
    [Microsoft.Azure.PowerShell.Cmdlets.Dns.Runtime.Info(SerializedName='relativeRecordSetName', Required, PossibleTypes=([System.String]), Description='The name of the record set, relative to the name of the zone.')]
    [System.String]
    # The name of the record set, relative to the name of the zone.
    ${Name},

    [Parameter(Mandatory, HelpMessage='The name of the resource group.')]
    [Microsoft.Azure.PowerShell.Cmdlets.Dns.Category('Path')]
    [Microsoft.Azure.PowerShell.Cmdlets.Dns.Runtime.Info(SerializedName='resourceGroupName', Required, PossibleTypes=([System.String]), Description='The name of the resource group.')]
    [System.String]
    # The name of the resource group.
    ${ResourceGroupName},

    [Parameter(Mandatory, HelpMessage='Specifies the Azure subscription ID, which uniquely identifies the Microsoft Azure subscription.')]
    [Microsoft.Azure.PowerShell.Cmdlets.Dns.Category('Path')]
    [Microsoft.Azure.PowerShell.Cmdlets.Dns.Runtime.Info(SerializedName='subscriptionId', Required, PossibleTypes=([System.String]), Description='Specifies the Azure subscription ID, which uniquely identifies the Microsoft Azure subscription.')]
    [System.String]
    # Specifies the Azure subscription ID, which uniquely identifies the Microsoft Azure subscription.
    ${SubscriptionId},

    [Parameter(Mandatory, HelpMessage='The name of the DNS zone (without a terminating dot).')]
    [Microsoft.Azure.PowerShell.Cmdlets.Dns.Category('Path')]
    [Microsoft.Azure.PowerShell.Cmdlets.Dns.Runtime.Info(SerializedName='zoneName', Required, PossibleTypes=([System.String]), Description='The name of the DNS zone (without a terminating dot).')]
    [System.String]
    # The name of the DNS zone (without a terminating dot).
    ${ZoneName},

    [Parameter(HelpMessage='The email contact for this SOA record.')]
    [Microsoft.Azure.PowerShell.Cmdlets.Dns.Category('Body')]
    [Microsoft.Azure.PowerShell.Cmdlets.Dns.Runtime.Info(SerializedName='email', PossibleTypes=([System.String]), Description='The email contact for this SOA record.')]
    [System.String]
    # The email contact for this SOA record.
    ${SoaRecordEmail},

    [Parameter(HelpMessage='The expire time for this SOA record.')]
    [Microsoft.Azure.PowerShell.Cmdlets.Dns.Category('Body')]
    [Microsoft.Azure.PowerShell.Cmdlets.Dns.Runtime.Info(SerializedName='expireTime', PossibleTypes=([System.Int64]), Description='The expire time for this SOA record.')]
    [System.Int64]
    # The expire time for this SOA record.
    ${SoaRecordExpireTime},

    [Parameter(HelpMessage='The domain name of the authoritative name server for this SOA record.')]
    [Microsoft.Azure.PowerShell.Cmdlets.Dns.Category('Body')]
    [Microsoft.Azure.PowerShell.Cmdlets.Dns.Runtime.Info(SerializedName='host', PossibleTypes=([System.String]), Description='The domain name of the authoritative name server for this SOA record.')]
    [System.String]
    # The domain name of the authoritative name server for this SOA record.
    ${SoaRecordHost},

    [Parameter(HelpMessage='The minimum value for this SOA record. By convention this is used to determine the negative caching duration.')]
    [Microsoft.Azure.PowerShell.Cmdlets.Dns.Category('Body')]
    [Microsoft.Azure.PowerShell.Cmdlets.Dns.Runtime.Info(SerializedName='minimumTTL', PossibleTypes=([System.Int64]), Description='The minimum value for this SOA record. By convention this is used to determine the negative caching duration.')]
    [System.Int64]
    # The minimum value for this SOA record. By convention this is used to determine the negative caching duration.
    ${SoaRecordMinimumTtl},

    [Parameter(HelpMessage='The refresh value for this SOA record.')]
    [Microsoft.Azure.PowerShell.Cmdlets.Dns.Category('Body')]
    [Microsoft.Azure.PowerShell.Cmdlets.Dns.Runtime.Info(SerializedName='refreshTime', PossibleTypes=([System.Int64]), Description='The refresh value for this SOA record.')]
    [System.Int64]
    # The refresh value for this SOA record.
    ${SoaRecordRefreshTime},

    [Parameter(HelpMessage='The retry time for this SOA record.')]
    [Microsoft.Azure.PowerShell.Cmdlets.Dns.Category('Body')]
    [Microsoft.Azure.PowerShell.Cmdlets.Dns.Runtime.Info(SerializedName='retryTime', PossibleTypes=([System.Int64]), Description='The retry time for this SOA record.')]
    [System.Int64]
    # The retry time for this SOA record.
    ${SoaRecordRetryTime},

    [Parameter(HelpMessage='The serial number for this SOA record.')]
    [Microsoft.Azure.PowerShell.Cmdlets.Dns.Category('Body')]
    [Microsoft.Azure.PowerShell.Cmdlets.Dns.Runtime.Info(SerializedName='serialNumber', PossibleTypes=([System.Int64]), Description='The serial number for this SOA record.')]
    [System.Int64]
    # The serial number for this SOA record.
    ${SoaRecordSerialNumber},

    [Parameter(HelpMessage='The etag of the record set.')]
    [Microsoft.Azure.PowerShell.Cmdlets.Dns.Category('Body')]
    [Microsoft.Azure.PowerShell.Cmdlets.Dns.Runtime.Info(SerializedName='etag', PossibleTypes=([System.String]), Description='The etag of the record set.')]
    [System.String]
    # The etag of the record set.
    ${Etag},

    [Parameter(HelpMessage='The metadata attached to the record set.')]
    [Microsoft.Azure.PowerShell.Cmdlets.Dns.Category('Body')]
    [Microsoft.Azure.PowerShell.Cmdlets.Dns.Runtime.Info(SerializedName='metadata', PossibleTypes=([Microsoft.Azure.PowerShell.Cmdlets.Dns.Models.Api20160401.IRecordSetPropertiesMetadata]), Description='The metadata attached to the record set.')]
    [System.Collections.Hashtable]
    # The metadata attached to the record set.
    ${Metadata},

    [Parameter(HelpMessage='Resource Id.')]
    [Microsoft.Azure.PowerShell.Cmdlets.Dns.Category('Body')]
    [Microsoft.Azure.PowerShell.Cmdlets.Dns.Runtime.Info(SerializedName='id', PossibleTypes=([System.String]), Description='Resource Id.')]
    [System.String]
    # Resource Id.
    ${TargetResourceId},

    [Parameter(HelpMessage='The TTL (time-to-live) of the records in the record set.')]
    [Alias('Ttl')]
    [Microsoft.Azure.PowerShell.Cmdlets.Dns.Category('Body')]
    [Microsoft.Azure.PowerShell.Cmdlets.Dns.Runtime.Info(SerializedName='TTL', PossibleTypes=([System.Int64]), Description='The TTL (time-to-live) of the records in the record set.')]
    [System.Int64]
    # The TTL (time-to-live) of the records in the record set.
    ${TimeToLive},

    [Parameter(HelpMessage='The credentials, account, tenant, and subscription used for communication with Azure.')]
    [Alias('AzureRMContext', 'AzureCredential')]
    [ValidateNotNull()]
    [Microsoft.Azure.PowerShell.Cmdlets.Dns.Category('Azure')]
    [System.Management.Automation.PSObject]
    # The credentials, account, tenant, and subscription used for communication with Azure.
    ${DefaultProfile},

    [Parameter(DontShow, HelpMessage='Wait for .NET debugger to attach')]
    [Microsoft.Azure.PowerShell.Cmdlets.Dns.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow, HelpMessage='SendAsync Pipeline Steps to be appended to the front of the pipeline')]
    [ValidateNotNull()]
    [Microsoft.Azure.PowerShell.Cmdlets.Dns.Category('Runtime')]
    [Microsoft.Azure.PowerShell.Cmdlets.Dns.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow, HelpMessage='SendAsync Pipeline Steps to be prepended to the front of the pipeline')]
    [ValidateNotNull()]
    [Microsoft.Azure.PowerShell.Cmdlets.Dns.Category('Runtime')]
    [Microsoft.Azure.PowerShell.Cmdlets.Dns.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow, HelpMessage='The URI for the proxy server to use')]
    [Microsoft.Azure.PowerShell.Cmdlets.Dns.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow, HelpMessage='Credentials for a proxy server to use for the remote call')]
    [ValidateNotNull()]
    [Microsoft.Azure.PowerShell.Cmdlets.Dns.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow, HelpMessage='Use the default credentials for the proxy')]
    [Microsoft.Azure.PowerShell.Cmdlets.Dns.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

process {
    $PSBoundParameters['IfMatch'] = '*'
    $PSBoundParameters['RecordType'] = [Microsoft.Azure.PowerShell.Cmdlets.Dns.Support.RecordType]::Soa
    Az.Dns.internal\Set-AzDnsRecordSet @PSBoundParameters
}
}
