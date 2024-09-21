# Windows Processes Manager

This PowerShell scripts allows you to suspend or stop specific processes running on your Windows system. 
This can be useful for temporarily stopping resource-intensive processes or troubleshooting issues.

## Usage

1. **Clone the repository:**

   ```bash
   git clone [https://github.com/gabimin/process-manager.git](https://github.com/gabimin/process-manager.git)
    ```

2. **Edit the script:**

- Open the suspend.ps1 script in a text editor.

- Modify the $ProcessesToSuspend array to include the names of the processes you want to suspend. For example:

```bash
$ProcessesToSuspend = @(
    "chrome",
    "firefox",
    "slack"
)
```
- Likewise with stop.ps1


3. **Run the script as administrator:**

- Open PowerShell as administrator.

- Navigate to the directory where you cloned the repository:

```bash
cd path\to\your\repository
```
- Execute one or both scripts:

```bash
powershell -ExecutionPolicy Bypass -File ./suspend.ps1

powershell -ExecutionPolicy Bypass -File ./stop.ps1

```

### Notes
- Process names: Ensure you use the correct process names. You can use the Get-Process command in PowerShell to verify the names.

```bash
Get-Process
```
- Be cautious when suspending or stopping system processes. Suspending or stopping critical processes can cause instability or system issues.
- Some processes may restart automatically after a while or when you restart your computer.
- Alternatives: There are third-party tools that allow you to manage startup programs more visually and with more options.

**Disclaimer:**

Use these scripts at your own risk. Suspending or stopping processes can have unintended consequences. 
It is recommended to research a process before suspending it.

