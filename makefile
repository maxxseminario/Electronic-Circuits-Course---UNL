# Makefile compatible on Ubuntu Linux (and generally POSIX shells)
# Author - Maxx Seminario
#
# Assumptions:
# - Run from repo root.
# - Uses the bash script version of update_docs (e.g., assets/sw/update_docs.sh).
# - Uses standard Unix tools: find, rm, git.

SHELL := /bin/bash

.PHONY: all clean update_docs push

all: update_docs clean

# Copy all PDFs to docs/ using bash script
update_docs:
	@bash assets/sw/update_docs.sh

# Clean LaTeX auxiliary files recursively (lectures/ and labs/)
clean:
	@find lectures labs assignments multisim -type f \( \
		-name '*.aux' -o -name '*.log' -o -name '*.out' -o -name '*.toc' -o \
		-name '*.nav' -o -name '*.snm' -o -name '*.fls' -o -name '*.fdb_latexmk' -o \
		-name '*.synctex.gz' \
	\) -print -delete 2>/dev/null || true
	@echo "Cleaned LaTeX auxiliary files"

# Clean, update docs, and push to GitHub
push: clean update_docs
	@read -r -p "Enter commit message: " message; \
	if [[ -n "$$message" ]]; then \
		git add .; \
		git commit -m "$$message" || true; \
		read -r -p "Force push? (y/n): " force; \
		if [[ "$$force" == "y" ]]; then \
			git push origin main --force; \
			echo "Force pushed to GitHub!"; \
		else \
			git push origin main; \
			echo "Pushed to GitHub!"; \
		fi; \
	else \
		echo "Commit cancelled - no message provided"; \
	fi