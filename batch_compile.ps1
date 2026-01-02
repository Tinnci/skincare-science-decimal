# Find all .typ files in the directory and subdirectories
$typFiles = Get-ChildItem -Recurse -Filter *.typ

Write-Host "Starting batch compilation of $($typFiles.Count) files..." -ForegroundColor Cyan

foreach ($file in $typFiles) {
    $outputPath = $file.FullName.Replace(".typ", ".pdf")
    
    # Check if PDF exists and is newer than the source .typ file
    if (Test-Path $outputPath) {
        $typTime = (Get-Item $file.FullName).LastWriteTime
        $pdfTime = (Get-Item $outputPath).LastWriteTime
        if ($pdfTime -gt $typTime) {
            Write-Host "Skipping: $($file.Name) (Up to date)" -ForegroundColor Gray
            continue
        }
    }

    Write-Host "Compiling: $($file.Name) -> $($file.BaseName).pdf" -ForegroundColor Yellow
    
    # Run typst compile with project root set to current directory
    & typst compile $file.FullName $outputPath --root .
    
    if ($LASTEXITCODE -eq 0) {
        Write-Host "Successfully compiled $($file.Name)" -ForegroundColor Green
    } else {
        Write-Error "Failed to compile $($file.Name)"
    }
}

Write-Host "Batch compilation finished." -ForegroundColor Cyan
