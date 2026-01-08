# Makefile compatible on Windows Devices
# Author - Maxx Seminario

.PHONY: all clean update_docs

all: update_docs clean

# Copy all PDFs to docs/ using PowerShell script
update_docs:  
	@powershell -ExecutionPolicy Bypass -File assets/sw/update_docs.ps1

# Clean LaTeX auxiliary files recursively
clean: 
	@powershell -Command "Get-ChildItem -Path lectures,labs -Include *.aux,*.log,*.out,*.toc,*.nav,*.snm,*.fls,*.fdb_latexmk,*.synctex.gz -Recurse -ErrorAction SilentlyContinue | Remove-Item -Force -ErrorAction SilentlyContinue"
	@powershell -Command "Write-Host 'Cleaned LaTeX auxiliary files' -ForegroundColor Green"

# Clean, update docs, and push to GitHub
# Clean, update docs, and push to GitHub
push:  clean update_docs
	@powershell -Command "\
		git add .; \
		$$message = Read-Host 'Enter commit message'; \
		if ($$message) { \
			git commit -m \"$$message\"; \
			$$force = Read-Host 'Force push? (y/n)'; \
			if ($$force -eq 'y') { \
				git push origin main --force; \
				Write-Host 'Force pushed to GitHub!' -ForegroundColor Yellow \
			} else { \
				git push origin main; \
				Write-Host 'Pushed to GitHub!' -ForegroundColor Green \
			} \
		} else { \
			Write-Host 'Commit cancelled - no message provided' -ForegroundColor Red \
		}"