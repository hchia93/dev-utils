@echo off
REM Launches an elevated PowerShell window and sets ExecutionPolicy to RemoteSigned for LocalMachine.
REM Useful when setting up a fresh Windows dev box before running any local PowerShell scripts.

powershell -NoProfile -Command ^
  "Start-Process powershell -Verb RunAs -ArgumentList '-NoProfile -Command Set-ExecutionPolicy RemoteSigned -Scope LocalMachine -Force; Write-Host ''ExecutionPolicy set to RemoteSigned (LocalMachine)''; Read-Host ''Press Enter to exit'''"
