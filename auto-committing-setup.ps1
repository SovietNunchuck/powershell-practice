$GitHubUsername = Read-Host "Please enter your GitHub username"
$PracticeRepoDir = Read-Host "Please provide the absolute path to which you would like to clone this repository"
$CommitMessage = 'auto committed from auto-committing-setup.ps1!'

git clone "https://github.com/$GitHubUsername/powershell-practice.git" "$PracticeRepoDir"

Copy-Item $PSCommandPath $PracticeRepoDir

Set-Location $PracticeRepoDir

git add auto-committing-setup.ps1
git commit -m "$CommitMessage"
git push origin master