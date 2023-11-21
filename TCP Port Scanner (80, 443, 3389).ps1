$hostname = "192.168.1.1" #Replace with the IP address or hostname you want to scan.
$ports = 80, 443, 3389 #Replace with the ports you want to scan.

foreach ($port in $ports) {
    $result = Test-NetConnection -ComputerName $hostname -Port $port -InformationLevel "Detailed"
    
    if ($result.TcpTestPass) {
        Write-Host "Port $port is open"
    } else {
        Write-Host "Port $port is closed"
    }
}