Import-Module -Name Pode -MaximumVersion 2.99.99
Import-Module -Name Pode.Web

Start-PodeServer {

    Add-PodeEndpoint -Address localhost -Port 8080 -Protocol Http
    
    Use-PodeWebTemplates -Title 'Single Page Site' -Theme dark

    Import-PodeWebStylesheet -Url '/style.css'

    Set-PodeWebHomePage -DisplayName "Single Page" -Layouts @(

        New-PodeWebCard -Content @(

            New-PodeWebQuote -Value 'Pode is awesome!' -Source 'Badgerati'

        )      
    ) 
}