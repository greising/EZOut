@{
    
    WebCommand = @{
        "Write-FormatView" = @{
            HideParameter = "RenamedProperty", "VirtualProperty", "FormatProperty", "Name", "GroupAction", "AsControl", "Width"
            
            FriendlyName = "Write a Format View"
            ContentType = 'text/plain'
            
        }
        "Write-TypeView" = @{
            HideParameter = "CodeProperty", "CodeMethod", "Reserializer"            
            
            FriendlyName = "Write a Type View"
            ContentType = 'text/plain'
        }
        "Write-PropertySet" = @{
            
            
            FriendlyName = "Write a Property Set"
            ContentType = 'text/plain'
        }                        
    }


    Style = @{
        Body = @{       
            "font-family" = "Segoe UI"     
            "font-size" = "1.25em"
            
            "color" = "#F0FFFA"
            "background-color" = "#079C1C"
        }
        'a' = @{
            'color' = '#F0FFFA'
        }        
        'a:hover' = @{
            'text-decoration' ='none'
        }
    }    
    
    AnalyticsId = 'UA-24591838-4'  # Providing an Analytics ID will add an analytics tracker to each page
    
    CommandOrder = "Write-FormatView", "Write-TypeView", "Write-PropertySet"
    
    DomainSchematics = @{
        "Ezout.Start-Automating.com | EzOut.StartAutomating.com | EasyOut.Start-Automating.com | EasyOut.StartAutomating.com" = "Default"
    }
    
    AllowDownload = $true         #-AllowDownload lets the module get downloaded
    
    AddPlusOne = $true            # Adds a Google +1 button to all pages
    
    TwitterId = 'jamesbru'        # Adds a a twitter ID to all pages
    
    GoogleSiteVerification =      # The Google Site Verification lets you use Google WebMaster Tools 
        'JFEJmONZO1y1ucWbdc4m0YODOr4y98C3rGIGzh0wLDg'
    
    BingValidationKey =           # The Bing Validation Key lets you use Bing Webmaster Tools
        '7B94933EC8C374B455E8263FCD4FE5EF'
    
    
    
    Facebook = @{                 # A Facebook App IP Lets you log in with facebook, and adds Like buttons
        AppId = '424980144210380'
    }


    AdSense = @{
        Id = '7086915862223923'
        BottomAdSlot = '6352908833'
    }


    PubCenter = @{
        ApplicationId = "d6dc302f-7599-49c5-b09d-5b3173ed0581"
        BottomAdUnit = "10049444"
    }

    Logo = "/Assets/EZOut_Tile.png"




    Win8 = @{
        Identity = @{
            Name="Start-Automating.EZOut"
            Publisher="CN=3B09501A-BEC0-4A17-8A3D-3DAACB2346F3"
            Version="1.0.0.0"
        }
        Assets = @{
            "splash.png" = "/EZOut_Splash.png"
            "smallTile.png" = "/EZOut_Small.png"
            "wideTile.png" = "/EZOut_Wide.png"
            "storeLogo.png" = "/EZOut_Store.png"
            "squaretile.png" = "/EZOut_Tile.png"
        }
        ServiceUrl = "http://EZOut.start-automating.com"
        LightForegroundText = $true
        Name = "EZOut"
        PublishedUrl = 'http://apps.microsoft.com/windows/app/ezout/559fc6cf-67ad-4a5d-bd1e-79bf0e59d7fc'

    }

    Technet = @{
        Category="Scripting Techniques"
        Subcategory="Displaying Output"
        OperatingSystem="Windows 7", "Windows Server 2008", "Windows Server 2008 R2", "Windows Vista", "Windows XP", "Windows Server 2012", "Windows 8"
        Tag='EZout', 'PowerShell Formatting', 'Start-Automating', 'PowerShell Tools'
        MSLPL=$true
        Summary="
EZOut is a module to take the pain out of PowerShell formatting and types files (PS1XMLs).  With EZOut, you can write simple scripts to do complex formatting, instead of learning a byzantine XML.
"
        Url = 'http://gallery.technet.microsoft.com/EZOut-33ae0fb7'
    }

} 
