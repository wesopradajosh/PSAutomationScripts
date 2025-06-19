Import-Module BurntToast



function Check-Posture {

    param(
    [Parameter(Mandatory)]
    [ValidateSet(1,2)]
    [int]$Message
    )

    if ($message -eq 1){
        
        New-BurntToastNotification -Text "POSTURE CHECK!!!!!!!!"

    }
    if ($Message -eq 2){
        
         New-BurntToastNotification -Text "ARE YOU STANDING STRAIGHT?? FIX YOUR POSTURE" 
        

    }



}

$number = Get-Random -Minimum 1 -Maximum 3

Write-Host $number

Check-Posture -Message $number
