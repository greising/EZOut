function Remove-TypeData
{
    <#
    .Synopsis
        Removes Type information from the current session.
    .Description
        The Remove-TypeData command removes the Typeting data for the current session.                
    #>
    [CmdletBinding(DefaultParameterSetName="ByModule")]
    param(
    # The module containing Typeting inTypeion that should be unloaded.  
    # Since the only modules Remove-TypeData will remove are ones that are not 
    # globally visible, the only way to provide inTypeion to this parameter is to 
    # use the -PassThru parameter of Add-TypeData
    [Parameter(Mandatory=$true,
        ValueFromPipeline=$true,
        ParameterSetName="ByModule")]
    [Management.Automation.PSModuleInfo]
    [ValidateScript({
        if ($TypeModules -notcontains $_) {
            throw "$_ was not added with Add-TypeData"
        }
        return $true
    })]
    $TypeModule,
    
    # The name of the Type module.  If there is only one type name,then 
    # this is the name of the module.
    [Parameter(ParameterSetName='ByModuleName',
        Mandatory=$true,
        ValueFromPipeline=$true)]
    [String]
    $ModuleName
    )    
    
  
    process {
        # Use @() to walk the hashtable first, 
        # so we can modify it within the foreach
        foreach ($kv in @($TypeModules.GetEnumerator())) {
            if ($psCmdlet.ParameterSetName -eq "ByModuleName") {
                if ($kv.Key -eq $ModuleName) {
                    Remove-Module $kv.Key                    
                    $null = $TypeModules.Remove($kv.Key)
                }
            } elseif ($psCmdlet.ParameterSetName -eq "TypeModule") {
                if ($kv.Value -eq $TypeModule) {
                    Remove-Module $kv.Key                    
                    $null = $TypeModules.Remove($kv.Key)                    
                }
            }           
        }
    }    
}
