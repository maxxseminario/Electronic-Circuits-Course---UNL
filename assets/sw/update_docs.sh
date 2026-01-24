#!/usr/bin/env bash
# update_docs.sh - Copy all PDFs from lectures and labs subdirectories to docs/
# Also removes PDFs from docs/ that no longer exist in source directories
# Note: This must be executed from the root of the project (where the makefile is located)

set -euo pipefail

cyan=$'\033[36m'
green=$'\033[32m'
yellow=$'\033[33m'
red=$'\033[31m'
reset=$'\033[0m'

echo "${cyan}Copying PDFs to docs...${reset}"

# Create docs directory if it doesn't exist
if [[ ! -d "docs" ]]; then
  mkdir -p "docs"
  echo "${green}Created docs/ directory${reset}"
fi

declare -A allSourcePdfs=()

copy_pdfs_from_dir() {
  local srcDir="$1"
  local label="$2"

  echo
  echo "${yellow}Searching for ${label} PDFs...${reset}"

  if [[ ! -d "$srcDir" ]]; then
    echo "${yellow} No ${label} directory found (${srcDir})${reset}"
    return 0
  fi

  local count=0

  # Find PDFs recursively; handle spaces safely with -print0.
  while IFS= read -r -d '' pdfPath; do
    local baseName
    baseName="$(basename "$pdfPath")"

    # Copy into docs/ (flat). Note: same-named PDFs from different subdirs will overwrite.
    cp -f "$pdfPath" "docs/"
    echo "${green} Copied:  ${baseName}${reset}"

    allSourcePdfs["$baseName"]=1
    count=$((count + 1))
  done < <(find "$srcDir" -type f -iname '*.pdf' -print0 2>/dev/null || true)

  if [[ $count -gt 0 ]]; then
    echo "${green}Total ${label} PDFs copied:  ${count}${reset}"
  else
    echo "${yellow} No ${label} PDFs found${reset}"
  fi
}

copy_pdfs_from_dir "lectures" "lecture"
copy_pdfs_from_dir "labs" "lab"

# Remove orphaned PDFs from docs/
echo
echo "${yellow}Cleaning up orphaned PDFs from docs/...${reset}"

shopt -s nullglob
docsPdfs=(docs/*.pdf)
shopt -u nullglob

removedCount=0

if [[ ${#docsPdfs[@]} -gt 0 ]]; then
  for docPdf in "${docsPdfs[@]}"; do
    baseName="$(basename "$docPdf")"
    if [[ -z "${allSourcePdfs[$baseName]+x}" ]]; then
      rm -f -- "$docPdf"
      echo "${red}  Removed: ${baseName}${reset}"
      removedCount=$((removedCount + 1))
    fi
  done

  if [[ $removedCount -eq 0 ]]; then
    echo "${green} No orphaned PDFs found${reset}"
  else
    echo "${red}Total orphaned PDFs removed: ${removedCount}${reset}"
  fi
else
  echo "${cyan}  i docs/ directory is empty${reset}"
fi

echo
echo "${cyan}Done!${reset}"