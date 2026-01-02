# Find all .typ files in the directory and subdirectories
$typFiles = Get-ChildItem -Recurse -Filter *.typ

Write-Host "Starting batch compilation of $($typFiles.Count) files..." -ForegroundColor Cyan

foreach ($file in $typFiles) {
    $outputPath = $file.FullName.Replace(".typ", ".pdf")
    Write-Host "Compiling: $($file.Name) -> $($file.BaseName).pdf" -ForegroundColor Yellow
    
    # Run typst compile
    & typst compile $file.FullName $outputPath
    
    if ($LASTEXITCODE -eq 0) {
        Write-Host "Successfully compiled $($file.Name)" -ForegroundColor Green
    } else {
        Write-Error "Failed to compile $($file.Name)"
    }
}

Write-Host "Batch compilation finished." -ForegroundColor Cyan
