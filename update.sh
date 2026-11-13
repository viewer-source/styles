#!/bin/sh
# Takes the viewer from a clone of viewer-source.github.io: sh update.sh <path to that clone>
# Copies the viewer, its editor and the base page styles, and writes VERSION (its repository and commit).
set -e
src=$1
cp "$src/_includes/atlas-app.html" "$src/_includes/atlas-tags.css" "$src/_includes/meta.html" _includes/
rm -f _includes/atlas-edit.js   # the editor before it moved into editor/ (2026-11-13)
rm -rf editor && cp -r "$src/editor" editor   # the editor, served at /styles/editor/ (editor= on the include)
cp "$src/style.scss" .
cp "$src"/_sass/*.scss _sass/
git -C "$src" log -1 --format='viewer-source/viewer-source.github.io %h %cs' > VERSION
cat VERSION
