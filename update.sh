#!/bin/sh
# Takes the viewer from its source folder: sh update.sh <path to the viewer's folder>
# Copies the viewer, its editor, the renderers it runs and the base page styles; both are released together, so VERSION
# names the release of viewer-source.github.io with the same date.
set -e
src=$1
cp "$src/_includes/atlas-app.html" "$src/_includes/atlas-tags.css" "$src/_includes/meta.html" "$src/_includes/look-lines.css" "$src/_includes/look-view.css" _includes/   # look-*.css: the viewer's own look, Default View's and Default Edit's base
rm -f _includes/atlas-edit.js   # a leftover single-file editor, now in editor/
rm -rf editor && cp -r "$src/editor" editor   # the editor, served at /styles/editor/ (editor= on the include)
rm -rf renderers && for f in yrender/yrender.js converter/cdrender.js converter/cd_edit.js converter/cd_make.js converter/sbgn_edit.js converter/sbml_edit.js layout/layout.js; do   # the renderers the editor runs, of the same commit (renderers= on the include)
  mkdir -p "renderers/$(dirname $f)" && cp "$src/renderers/$f" "renderers/$f"
done
cp "$src/style.scss" .
cp "$src"/_sass/*.scss _sass/
echo 'viewer-source/viewer-source.github.io, the release of the same date' > VERSION
