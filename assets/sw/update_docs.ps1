# update_docs.ps1 - Copy all PDFs from lectures and labs subdirectories to docs/
# Also removes PDFs from docs/ that no longer exist in source directories
# Note: This must be executed from the root of the project (where the makefile is located)

Write-Host "Copying PDFs to docs..." -ForegroundColor Cyan

# Create docs directory if it doesn't exist
if (-not (Test-Path -Path "docs")) {
    New-Item -ItemType Directory -Path "docs" | Out-Null
    Write-Host "Created docs/ directory" -ForegroundColor Green
}

# Collect all source PDFs
$allSourcePdfs = @()

# Copy lecture PDFs recursively
Write-Host "`nSearching for lecture PDFs..." -ForegroundColor Yellow
$lecturePdfs = Get-ChildItem -Path "lectures" -Filter "*.pdf" -Recurse -ErrorAction SilentlyContinue

if ($lecturePdfs) {
    foreach ($pdf in $lecturePdfs) {
        Copy-Item -Path $pdf.FullName -Destination "docs\" -Force
        Write-Host " Copied:  $($pdf.Name)" -ForegroundColor Green
        $allSourcePdfs += $pdf.Name
    }
    Write-Host "Total lecture PDFs copied:  $($lecturePdfs.Count)" -ForegroundColor Green
} else {
    Write-Host " No lecture PDFs found" -ForegroundColor Yellow
}

# Copy lab PDFs recursively
Write-Host "`nSearching for lab PDFs..." -ForegroundColor Yellow
$labPdfs = Get-ChildItem -Path "labs" -Filter "*.pdf" -Recurse -ErrorAction SilentlyContinue

if ($labPdfs) {
    foreach ($pdf in $labPdfs) {
        Copy-Item -Path $pdf.FullName -Destination "docs\" -Force
        Write-Host " Copied:  $($pdf.Name)" -ForegroundColor Green
        $allSourcePdfs += $pdf.Name
    }
    Write-Host "Total lab PDFs copied:  $($labPdfs.Count)" -ForegroundColor Green
} else {
    Write-Host "  ⚠ No lab PDFs found" -ForegroundColor Yellow
}

# Remove orphaned PDFs from docs/
Write-Host "`nCleaning up orphaned PDFs from docs/..." -ForegroundColor Yellow
$docsPdfs = Get-ChildItem -Path "docs" -Filter "*.pdf" -ErrorAction SilentlyContinue

$removedCount = 0
if ($docsPdfs) {
    foreach ($docPdf in $docsPdfs) {
        if ($allSourcePdfs -notcontains $docPdf.Name) {
            Remove-Item -Path $docPdf.FullName -Force
            Write-Host "  Removed: $($docPdf.Name)" -ForegroundColor Red
            $removedCount++
        }
    }
    
    if ($removedCount -eq 0) {
        Write-Host " No orphaned PDFs found" -ForegroundColor Green
    } else {
        Write-Host "Total orphaned PDFs removed: $removedCount" -ForegroundColor Red
    }
} else {
    Write-Host "  i docs/ directory is empty" -ForegroundColor Cyan
}

Write-Host "`n Done!" -ForegroundColor Cyan