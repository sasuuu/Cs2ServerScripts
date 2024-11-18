# Cs2ServerScripts
Scripts for running Cs2 server locally

## Prerequisites
You have to setup port forwarding in your router configuration to forward port specified in `server_config.json` file under `ServerPort` element(`27015` by default) using UDP protocol to your local computer which will host Cs2 Server. Here you can find general port forwarding guide: [General Port Forwarding Guide](https://www.noip.com/support/knowledgebase/general-port-forwarding-guide)

## Setup
1. Copy `server.cfg` file to Cs2 cfg folder in Steam Library, eg. `C:\Games\Steam\steamapps\common\Counter-Strike Global Offensive\game\csgo\cfg`.
2. Replace `<SERVER_NAME>`, `<SERVER_RCON_PASSWORD>` and `<SERVER_PASSWORD>` variables in `server.cfg` file.
3. (Optional) Copy `server.ps1` and `server_config.json` to Cs2 win64 folder, eg. `C:\Games\Steam\steamapps\common\Counter-Strike Global Offensive\game\bin\win64`.
4. Replace `<STEAM_GAME_SERVER_LOGIN_TOKEN>` variable with your GSLT in `server_config.json` file, you can create Steam Game Server Login Token(GSLT) here: [Steam Game Server Account Management](https://steamcommunity.com/dev/managegameservers).
5. (Optional) Change `ServerPort` element in `server_config.json` if you want to host Cs2 server with different port than `27015`.

## Run
1. Open powershell
2. Run `server.ps1` file.
    - If you copied `server.ps1` and `server_config.json` files to Cs2 win64 folder, navigate to Cs2 win64 folder and run `server.ps1` script:
    ```
    cd "C:\Games\Steam\steamapps\common\Counter-Strike Global Offensive\game\bin\win64"
    .\server.ps1
    ```
    - If you have `server.ps1` and `server_config.json` files outside Cs2 win64 folder, run `server.ps1` script with optional `SteamLibraryPath` parameter and provide Steam Library folder(`\steamapps\common\Counter-Strike Global Offensive\game\bin\win64` will be added automatically to provided Steam Library folder)
    ```
    .\server.ps1 -SteamLibraryPath "C:\Games\Steam"
    ```
