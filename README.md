<div align="center">
    <h1>Windows Sandbox Scripts</h1>
</div>

These are my scripts and configs I use for [Windows Sandbox](https://learn.microsoft.com/en-us/windows/security/application-security/application-isolation/windows-sandbox/).

> [!NOTE]
> Enabling this feature requires Windows Pro, Education or Enterprise (you can find your version by pressing <kbd>Win</kbd>+<kbd>R</kbd> and typing `winver`).
> <details>
>    <summary>Enabling Windows Sandbox</summary>
>
>As per Microsoft's documentation:
>
><blockquote>
>Use the search bar on the task bar and type Turn Windows Features on or off to access the Windows Optional Features tool. Select Windows Sandbox and then OK. Restart the computer if you're prompted.
><br><br>
>If the Windows Sandbox option is unavailable, your computer doesn't meet the requirements to run Windows Sandbox. If you think this analysis is incorrect, review the prerequisite list and steps 1 and 2.
></blockquote>
>
>Or via PowerShell (run this as an administrator):
>
>```ps1
>Enable-WindowsOptionalFeature -FeatureName "Containers-DisposableClientVM" -All -Online
>```
></details>

If you want to know how to write these configs yourself, see [Microsoft's guide](https://learn.microsoft.com/en-us/windows/security/application-security/application-isolation/windows-sandbox/windows-sandbox-configure-using-wsb-file).

## What these files are

| File Name | Description |
|-----------|-------------|
| `default.wsb` | Default config I use for running untrusted programs without an Internet connection. |
| `tor.wsb` | Config for running the Tor Browser (you should always run it in a VM as it's full of known exploits and weak sandboxing just like Firefox). It also starts the Tor Browser at boot because why wouldn't you do that? |
| `network.bat` | Script I share to the VM to change its DNS resolver at boot because the default Hyper-V switch can't reach my custom DNS server for some reason. |
