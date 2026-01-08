# Makefile compatible on Windows

.PHONY: all clean update_docs

all: update_docs

# Copy all PDFs to docs/ using PowerShell script
update_docs:  
	@powershell -ExecutionPolicy Bypass -File assets/sw/update_docs.ps1

clean: 
	@del /Q lectures\*\*. aux lectures\*\*.log lectures\*\*.out lectures\*\*. toc 2>nul || echo Nothing to clean in lectures
	@del /Q labs\*\*.aux labs\*\*.log labs\*\*.out labs\*\*.toc 2>nul || echo Nothing to clean in labs