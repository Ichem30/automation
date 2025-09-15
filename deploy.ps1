# Script de déploiement pour Windows
Write-Host "Building site..." -ForegroundColor Green
npm run build

Write-Host "Copying files..." -ForegroundColor Green
Copy-Item -Path "dist\*" -Destination "." -Recurse -Force

Write-Host "Adding to git..." -ForegroundColor Green
git add .

Write-Host "Committing changes..." -ForegroundColor Green
git commit -m "Deploy to GitHub Pages"

Write-Host "Pushing to GitHub..." -ForegroundColor Green
git push origin master

Write-Host "Deployment complete!" -ForegroundColor Green
Write-Host "Your site will be available at: https://ichem30.github.io/site" -ForegroundColor Cyan
