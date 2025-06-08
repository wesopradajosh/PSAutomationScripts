# This should be changed to the folder with the names of your endpoints in your domain

$endpoints = Get-Content C:\Users\Example\Desktop\Endpoints.txt
$timeStamps = Get-Date

Write-Host "Testing all endpoints connectivity to DC"



for ($i = 0; $i -lt $endpoints.length; $i++) {

        try {
             Test-Connection -ComputerName $endpoints[$i] -Count 1 -ErrorAction Stop
    
                if (Test-Connection -ComputerName $endpoints[$i] -Quiet -Count 1){
    
                    Write-Host $timeStamps "Server has successfully reached" $endpoints[$i] -ForegroundColor Green
    
            }

    

        } catch {

             Write-Host $timeStamps "Failed to connect to" $endpoints[$i] -ForegroundColor Red


        }

}

    
    







