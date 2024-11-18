param ($SteamLibraryPath)
if ($null -eq $SteamLibraryPath) {
    $Cs2FileDirectory = $PSScriptRoot
}
else {
    $Cs2FileDirectory = $SteamLibraryPath + "\steamapps\common\Counter-Strike Global Offensive\game\bin\win64"
}
$ServerConfig = Get-Content "$PSScriptRoot\server_config.json" | Out-String | ConvertFrom-Json
& "$Cs2FileDirectory\cs2.exe" -dedicated +ip 0.0.0.0 -port $ServerConfig.ServerPort +map de_mirage -maxplayers 31 +sv_setsteamaccount $ServerConfig.SteamGSLT +game_mode 1 +game_type 0