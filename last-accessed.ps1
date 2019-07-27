$dirs = "C:\users\*"  #Add multiple comma delimited dirs if wanted
#can also run this against a remote host by placing \\HOSTNAME or IP\C$\

foreach ($d in $dirs){
    dir $d -r | %{Get-ItemProperty $_ lastaccesstime,creationtime} | Format-Table | out-file last-access.csv
}
#outputs to local directory
