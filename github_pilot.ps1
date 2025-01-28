# Dynamically determine the script's directory
$repoPath = Split-Path -Parent $MyInvocation.MyCommand.Path

# Change to the repository directory
Set-Location -Path $repoPath

# Step 1: Check if the current repository matches the remote
Write-Host "Checking remote repository..." -ForegroundColor Cyan
$remoteUrl = git remote get-url origin
if ($remoteUrl -ne "git@github.com:brianondemand/inceptor_notes.git") {
    Write-Host "The current repository does not match the expected remote." -ForegroundColor Red
    Exit
}

# Step 2: Fetch updates and check if the repo is behind
Write-Host "Fetching updates from remote repository..." -ForegroundColor Cyan
git fetch

# Check if the local branch is behind
$branchStatus = git status | Select-String "Your branch is behind" | Measure-Object
if ($branchStatus.Count -gt 0) {
    Write-Host "The local repository is behind. Pulling updates..." -ForegroundColor Yellow
    git pull
} else {
    Write-Host "The local repository is up-to-date." -ForegroundColor Green
}

# Step 3: Check for local changes
Write-Host "Checking for local changes..." -ForegroundColor Cyan
git status

# Step 4: Add all modified files
Write-Host "Adding all changes to staging area..." -ForegroundColor Cyan
git add .

# Step 5: Commit changes
$commitMessage = "Updates"
Write-Host "Committing changes with message: '$commitMessage'..." -ForegroundColor Cyan
git commit -m $commitMessage

# Step 6: Push changes to the remote repository
Write-Host "Pushing changes to remote repository..." -ForegroundColor Cyan
git push

Write-Host "Script completed successfully!" -ForegroundColor Green
