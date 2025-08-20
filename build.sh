#!/usr/bin/env bash

# ======================================================
# build.sh - Multipurpose builder for chatgpt-co-creation
# (1) Build Word doc
# (2) Build PDF (via XeLaTeX)
# (3) Build & deploy MkDocs site to GitHub Pages
#
# Requirements:
#   pandoc, xelatex, mkdocs, mkdocs-material, gh CLI (optional)
#
# ======================================================

set -e

MANUSCRIPT_DIR="manuscript"
BUILD_DIR="build"
VERSION=$(cat VERSION.txt)
DATE=$(date +"%Y-%m-%d")

DOCX_OUT="${BUILD_DIR}/draft_v${VERSION}.docx"
PDF_OUT="${BUILD_DIR}/draft_v${VERSION}.pdf"

echo "Building version ${VERSION} — ${DATE}"
mkdir -p "${BUILD_DIR}"

# 1) Build WORD
echo "Creating Word document: $DOCX_OUT"
pandoc ${MANUSCRIPT_DIR}/*.md \
  --resource-path=.:assets \
  --toc --toc-depth=3 \
  --output "${DOCX_OUT}"

# 2) Build PDF
# echo "Creating PDF document:  $PDF_OUT"
# pandoc ${MANUSCRIPT_DIR}/*.md \
#   --pdf-engine=xelatex \
#   --toc --toc-depth=3 \
#   --output "${PDF_OUT}"

#   Optional: auto-increment version number
# IFS='.' read -r MAJOR MINOR PATCH <<< "$VERSION"
# NEW_VERSION="${MAJOR}.${MINOR}.$((PATCH+1))"
# echo $NEW_VERSION > VERSION.txt

# 3) Build + Deploy MkDocs
echo "Building MkDocs site..."
mkdocs build

echo "Deploying to GitHub Pages..."
mkdocs gh-deploy --clean  # pushes HTML site to gh-pages branch

echo "Done! All artifacts are in '${BUILD_DIR}' and website is online."
