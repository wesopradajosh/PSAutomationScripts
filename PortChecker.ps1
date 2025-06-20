Write-Host "Script created by Joshua Dimery 2025"
$subnet = "192.168.1"
Write-Host "20: FTP | 21: Telnet | 22: SSH | 25: SMPT | HTTP: 80 "
$port = Read-Host "What ports do you want to scan?" 







foreach ($i in 1..254){
    $ip = "$subnet.$i"
    try{ 
        $p = ping -n 1 -w 200 $ip
            if ($p -match "Reply from") {
                $tcp = New-Object System.Net.Sockets.TcpClient
                $async = $tcp.BeginConnect($ip, $port, $null, $null)
                $wait = $async.AsyncWaitHandle.WaitOne(200, $false)
            
            
          

                 if ($wait -and $tcp.Connected){
            
                    Write-Host "WARNING!: Port $port is open on $ip" -ForegroundColor Yellow
                    $tcp.Close()

                  } else{
        
                     Write-Host "Port $port is closed on $ip" -ForegroundColor Green
        
                   }
           
            
        

           
           } else {
                 Write-Host "Cannot reach IP $ip!" -ForegroundColor Red
           
           }
        
         
       
        }
        
  
    
    catch{
    
        Write-Host "Invalid Address!" -ForegroundColor Red
    
    }
    
   }