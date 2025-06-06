# Placeholder servers, will make it so the script accesses something like a text file to grab the names of the endpoints
$endpoints = @('PC1', 'PC2', 'PC3', 'SRV1')

Write-Host "Testing all endpoints connectivity to DC"

for ($i = 0; $i -lt $endpoints.length; $i++){

    Test-Connection -ComputerName $endpoints[$i] -Count 1
    
    if (Test-Connection -ComputerName $endpoints[$i] -Quiet -Count 1){
    
       Write-Host "Server has successfully reached " $endpoints[$i] -ForegroundColor Green
    
    }

    else 
    
    {
    
         Write-Host "Server cannot reach " $endpoints[$i] -ForegroundColor Red

    }

    


}
