# set execution policy
Set-ExecutionPolicy RemoteSigned

# make VirtualBox VM interface cleaner by disabling the statusbar and menubar
# TODO: consider keeping the menubar
"C:\Program Files\Oracle\VirtualBox\VBoxManage.exe" setextradata global GUI/Customizations noMenuBar,noStatusBar

# disable UAC
# TODO: consider designing a new GUI rather than disabling the UAC
# TODO: read the details on the addtional actions this command performs and note them here (https://social.technet.microsoft.com/Forums/en-US/6854f6d9-c8c0-4881-828a-b80192490177/disabling-the-uac-using-powershell?forum=ITCG)
Set-ItemProperty -Path �HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\System� -Name �ConsentPromptBehaviorAdmin� -Value �0�; Set-ItemProperty -Path �HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\System� -Name �ConsentPromptBehaviorUser� -Value �0�; Set-ItemProperty -Path �HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\System� -Name �EnableLUA� -Value �1�; Set-ItemProperty -Path �HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\System� -Name �PromptOnSecureDesktop� -Value �0�

# enable WSL
# TODO: check if this is the correct command
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux
