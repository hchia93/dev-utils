# powershell

Small PowerShell bootstrap scripts for fresh Windows dev boxes.

## Scripts

### `run-elevated-powershell.bat`

Launches an elevated PowerShell window and sets `ExecutionPolicy` to `RemoteSigned` for the `LocalMachine` scope. Useful on a fresh Windows install before running any local `.ps1` scripts.

**Usage**: double-click the `.bat` file, accept the UAC prompt. The elevated PowerShell window will set the policy and wait for Enter before closing.

**What `RemoteSigned` means**: locally-authored scripts can run unsigned; scripts downloaded from the internet must be signed. Good default for most dev workflows.
