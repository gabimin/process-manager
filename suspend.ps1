# List of processes to suspend (replace with the names of the processes you want to suspend)
$ProcessesToSuspend = @(
    "CapturePicker",
    "wsl",
    "msedgewebview2",
    "msedge",
    "chrome",
    "code",
    "ctfmon"
)

# Iterate over the list of processes
foreach ($Process in $ProcessesToSuspend) {
    try {
        # Get the process
        $ProcessObj = Get-Process -Name $Process -ErrorAction SilentlyContinue

        # If the process exists, suspend it
        if ($ProcessObj) {
            Write-Host "Suspending process: $($ProcessObj.ProcessName)"
            Stop-Process -InputObject $ProcessObj
        } else {
            Write-Host "Process not found: $Process"
        }
    }
    catch {
        Write-Host "Error suspending process: $Process`nError: $($_.Exception.Message)"
    }
}

Write-Host "Script finished."