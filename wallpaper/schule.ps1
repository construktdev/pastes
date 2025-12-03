$Url  = "https://cdn.construkter.de/wallpaper.png"
$Path = "H:\Pictures\wallpaper.png"

Invoke-WebRequest $Url -OutFile $Path

Add-Type @"
using System.Runtime.InteropServices;
public class Wallpaper {
    [DllImport("user32.dll", SetLastError = true)]
    public static extern bool SystemParametersInfo(
        int uAction, int uParam, string lpvParam, int fuWinIni);
}
"@

[Wallpaper]::SystemParametersInfo(20, 0, $Path, 3)
