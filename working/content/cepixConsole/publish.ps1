dotnet publish .\app\cepixConsole.App -r linux-x64 -p:PublishSingleFile=true --self-contained true
dotnet publish .\app\cepixConsole.App -r win-x64 -p:PublishSingleFile=true --self-contained true

$ReleasePath = ".\Release"
$ReleaseWinPath = "$ReleasePath\Windows"
$ReleaseLinuxPath = "$ReleasePath\Linux"

if(![System.IO.File]::Exists($ReleasePath)) {
    New-Item -ItemType Directory -Force -Path $ReleasePath
    New-Item -ItemType Directory -Force -Path $ReleaseWinPath
    New-Item -ItemType Directory -Force -Path $ReleaseLinuxPath
}

if(![System.IO.File]::Exists($ReleaseWinPath)) {
    New-Item -ItemType Directory -Force -Path $ReleaseWinPath
}

if(![System.IO.File]::Exists($ReleaseLinuxPath)) {
    New-Item -ItemType Directory -Force -Path $ReleaseLinuxPath
}

Copy-Item .\app\cepixConsole.App\bin\Release\net8.0\win-x64\publish\cepixConsole.App.exe $ReleaseWinPath\cepixConsole.exe
Copy-Item .\app\cepixConsole.App\bin\Release\net8.0\win-x64\publish\appsettings.json $ReleaseWinPath\appsettings.json
Copy-Item .\app\cepixConsole.App\bin\Release\net8.0\linux-x64\publish\cepixConsole.App $ReleaseLinuxPath\cepixConsole
Copy-Item .\app\cepixConsole.App\bin\Release\net8.0\linux-x64\publish\appsettings.json $ReleaseLinuxPath\appsettings.json