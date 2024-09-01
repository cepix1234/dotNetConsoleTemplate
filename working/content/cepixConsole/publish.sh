dotnet publish ./app/cepixConsole.App -r linux-x64 -p:PublishSingleFile=true --self-contained true
dotnet publish ./app/cepixConsole.App -r win-x64 -p:PublishSingleFile=true --self-contained true

ReleasePath="./Release"
ReleaseWinPath="$ReleasePath/Windows"
ReleaseLinuxPath="$ReleasePath/Linux"

if [ ! -d "$ReleasePath" ]; then
  mkdir "$ReleasePath"
  mkdir "$ReleaseWinPath"
  mkdir "$ReleaseLinuxPath"
fi

if [ ! -d "$ReleaseWinPath" ]; then
  mkdir "$ReleaseWinPath"
fi

if [ ! -d "$ReleaseLinuxPath" ]; then
  mkdir "$ReleaseLinuxPath"
fi 

cp ./app/cepixConsole.App/bin/Release/net8.0/win-x64/publish/cepixConsole.App.exe "${ReleaseWinPath}/cepixConsole.exe"
cp ./app/cepixConsole.App/bin/Release/net8.0/linux-x64/publish/cepixConsole.App "${ReleaseLinuxPath}/cepixConsole"

cp ./app/cepixConsole.App/appsettings.json "${ReleaseWinPath}/appsettings.json"
cp ./app/cepixConsole.App/appsettings.json "${ReleaseLinuxPath}/appsettings.json"
