# List of processes to stop (replace with the names of the processes you want to stop)
$ProcessesToStop = @(
    "CapturePicker",
    "wsl",
    "msedgewebview2",
    "msedge",
    "chrome",
    "code",
    "ctfmon"
)

# Iterate over the list of processes
foreach ($Process in $ProcessesToStop) {
    try {
        # Get the process
        $ProcessObj = Get-Process -Name $Process -ErrorAction SilentlyContinue

        # If the process exists, stop it
        if ($ProcessObj) {
            foreach ($proc in $ProcessObj) {
                Write-Host "Stopping process: $($proc.ProcessName)"
                Stop-Process -InputObject $proc -Force
            }
        } else {
            Write-Host "Process not found: $Process"
        }
    }
    catch {
        Write-Host "Error stopping process: $Process`nError: $($_.Exception.Message)"
    }
}

Write-Host "Script finished."