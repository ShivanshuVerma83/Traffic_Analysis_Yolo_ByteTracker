# Get the directory where the script is located
$DIR = Split-Path -Parent $MyInvocation.MyCommand.Path

# Check if 'data' directory does not exist and then create it
if (-Not (Test-Path "$DIR\data")) {
    New-Item -ItemType Directory -Path "$DIR\data"
} else {
    Write-Host "'data' directory already exists."
}

# Download the traffic_analysis.mov file from Google Drive
Invoke-WebRequest -Uri "https://drive.google.com/uc?id=1qadBd7lgpediafCpL_yedGjQPk-FLK-W" -OutFile "$DIR\data\traffic_analysis.mov"

# Download the traffic_analysis.pt file from Google Drive
Invoke-WebRequest -Uri "https://drive.google.com/uc?id=1y-IfToCjRXa3ZdC1JpnKRopC7mcQW-5z" -OutFile "$DIR\data\traffic_analysis.pt"