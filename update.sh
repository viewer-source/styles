#!/bin/sh
# Takes the viewer from a clone of viewer-source.github.io: sh update.sh <path to that clone>
# Copies the viewer, its editor, the renderers it runs and the base page styles, and writes VERSION (its repository and commit).
set -e
src=$1
cp "$src/_includes/atlas-app.html" "$src/_includes/atlas-tags.css" "$src/_includes/meta.html" "$src/_includes/look-lines.css" "$src/_includes/look-view.css" _includes/   # look-*.css: the viewer's own look, Default View's and Default Edit's base
rm -f _includes/atlas-edit.js   # the editor before it moved into editor/ (2026-11-13)
rm -rf editor && cp -r "$src/editor" editor   # the editor, served at /styles/editor/ (editor= on the include)
rm -rf renderers && for f in yrender/yrender.js converter/cdrender.js converter/cd_edit.js converter/sbgn_edit.js layout/layout.js; do   # the renderers the editor runs, of the same commit (renderers= on the include)
  mkdir -p "renderers/$(dirname $f)" && cp "$src/renderers/$f" "renderers/$f"
done
cp "$src/style.scss" .
cp "$src"/_sass/*.scss _sass/
git -C "$src" log -1 --format='viewer-source/viewer-source.github.io %h %cs' > VERSION
cat VERSION
