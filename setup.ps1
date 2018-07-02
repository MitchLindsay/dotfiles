Write-Host "Installing Scoop"
iex (new-object net.webclient).downloadstring('https://get.scoop.sh')

Write-Host "Installing Git"
scoop install git

Write-Host "Installing .NET and .NET SDK"
scoop install dotnet dotnet-sdk

Write-Host "Installing Python"
scoop install python

Write-Host "Installing UNIX utilities"
scoop install grep sudo touch which wget

Write-Host "Installing Node, nvm, and Yarn"
scoop install nvm nodejs yarn
