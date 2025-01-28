# Dynamically determine the script's directory
$repoPath = Split-Path -Parent $MyInvocation.MyCommand.Path

# Function for a percentage-based progress bar
function Show-Progress {
    param (
        [string]$Message,
        [int]$Duration = 10
    )
    Write-Host $Message -ForegroundColor Cyan
    for ($i = 1; $i -le $Duration; $i++) {
        $percent = [math]::Floor(($i / $Duration) * 100)
        Write-Host -NoNewline "[$("{0,-3}" -f $percent)%] ["
        Write-Host -NoNewline ("#" * $i) -ForegroundColor Green
        Write-Host -NoNewline ("-" * ($Duration - $i))
        Write-Host -NoNewline "]"
        Start-Sleep -Milliseconds 300
        Write-Host "`r" -NoNewline
    }
    Write-Host ""
}

# Function for bold-like text
function Write-Bold {
    param (
        [string]$Text,
        [string]$Color = "White"
    )
    Write-Host ("[$((($Text).ToUpper()))]") -ForegroundColor $Color
}

# Function to display a large header
function Display-Header {
    param (
        [string]$Title
    )
    $header = @"
██████╗ ██╗██╗  ██╗████████╗██╗  ██╗     ██████╗ ██╗██╗      ██████╗ ████████╗
██╔══██╗██║╚██╗██╔╝╚══██╔══╝██║  ██║    ██╔════╝ ██║██║     ██╔═══██╗╚══██╔══╝
██████╔╝██║ ╚███╔╝    ██║   ███████║    ██║  ███╗██║██║     ██║   ██║   ██║   
██╔═══╝ ██║ ██╔██╗    ██║   ██╔══██║    ██║   ██║██║██║     ██║   ██║   ██║   
██║     ██║██╔╝ ██╗   ██║   ██║  ██║    ╚██████╔╝██║███████╗╚██████╔╝   ██║   
╚═╝     ╚═╝╚═╝  ╚═╝   ╚═╝   ╚═╝  ╚═╝     ╚═════╝ ╚═╝╚══════╝ ╚═════╝    ╚═╝   
"@
    Write-Host $header -ForegroundColor Yellow
    Write-Host ("-" * 80) -ForegroundColor DarkGray
    Write-Host "$Title" -ForegroundColor Green
    Write-Host ("-" * 80) -ForegroundColor DarkGray
}

# Start script execution
Display-Header "Welcome to GITHUB PILOT - Your Sync Assistant"

# Change to the repository directory
Write-Bold "Changing to repository directory" "Green"
Set-Location -Path $repoPath
Show-Progress -Message "Locating repository..."

# Step 1: Check if the current repository matches the remote
Write-Bold "Checking remote repository" "Green"
$remoteUrl = git remote get-url origin
if ($remoteUrl -ne "git@github.com:brianondemand/inceptor_notes.git") {
    Write-Host "ERROR: The current repository does not match the expected remote." -ForegroundColor Red
    Read-Host "Press Enter to exit..."
    Exit
}
Write-Host "Remote repository matches!" -ForegroundColor Green

# Step 2: Fetch updates and check if the repo is behind
Write-Bold "Fetching updates from remote repository" "Green"
Show-Progress -Message "Fetching updates..."
git fetch

# Check if the local branch is behind
$branchStatus = git status | Select-String "Your branch is behind" | Measure-Object
if ($branchStatus.Count -gt 0) {
    Write-Bold "The local repository is behind. Pulling updates..." "Yellow"
    git pull
} else {
    Write-Host "The local repository is up-to-date." -ForegroundColor Green
}

# Step 3: Check for local changes
Write-Bold "Checking for local changes" "Green"
git status

# Step 4: Add all modified files
Write-Bold "Adding all changes to staging area" "Green"
Show-Progress -Message "Staging files..."
git add .

# Step 5: Commit changes
$commitMessage = "Updates"
Write-Bold "Committing changes" "Green"
Show-Progress -Message "Committing files..."
git commit -m $commitMessage

# Step 6: Push changes to the remote repository
Write-Bold "Pushing changes to remote repository" "Green"
Show-Progress -Message "Pushing changes..."
git push

Write-Bold "Script completed successfully!" "Green"

# Keep PowerShell open
Write-Host "Press Enter to close the terminal." -ForegroundColor Yellow
Read-Host
