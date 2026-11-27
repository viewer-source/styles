#!/bin/sh
# Takes the viewer from its source folder: sh update.sh <path to the viewer's folder>
# Copies the viewer, its editor, the renderers it runs and the base page styles; both are released together, so VERSION
# names the release of viewer-source.github.io with the same date.
set -e
src=$1
# the editor built from its sources first, so a stale editor.js is never copied (needs npm ci in the viewer folder)
if [ -f "$src/editor/build.js" ]; then (cd "$src" && node -e "require.resolve('esbuild')" 2>/dev/null && node editor/build.js >/dev/null) || echo "note: editor/editor.js copied as it is (no esbuild here: npm ci in the viewer folder)"; fi
cp "$src/_includes/atlas-app.html" "$src/_includes/atlas-tags.css" "$src/_includes/meta.html" "$src/_includes/look-lines.css" "$src/_includes/look-view.css" _includes/   # look-*.css: the viewer's own look, Default View's and Default Edit's base
rm -f _includes/atlas-edit.js   # a leftover single-file editor, now in editor/
rm -rf editor && cp -r "$src/editor" editor   # the editor, served at /styles/editor/ (editor= on the include)
rm -rf renderers && for f in yrender/yrender.js converter/cdrender.js converter/cd_edit.js converter/cd_make.js converter/sbgn_edit.js converter/sbml_edit.js converter/sbgnml_read.js converter/graphml_edit.js converter/notation.js layout/layout.js layout/holding.js; do   # the renderers and engines the editor runs or bundles, of the same commit (renderers= on the include)
  mkdir -p "renderers/$(dirname $f)" && cp "$src/renderers/$f" "renderers/$f"
done
cp "$src/sw.js" sw.js   # the page kept for offline, registered at /styles/ (the folder above editor=)
cp "$src/style.scss" .
cp "$src"/_sass/*.scss _sass/
echo 'viewer-source/viewer-source.github.io, the release of the same date' > VERSION
