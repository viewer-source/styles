# Default Edit V4 Layout SBGN Fallback: what this backup holds

Frozen 2026-11-14. Why (user): SBGN-ML editing is a significant change. With it, the editor covers the three formats the
converter works with (GraphML, CellDesigner, SBGN-ML), "all formats we need at the moment", a complete set; and the
full editor (adding and deleting) has not started. "A good place to fix the situation, to remember this state."
V3 Layout Fallback is left as it was: the layout editor before SBGN.

Fallback in a name (user, 2026-11-14): a version the user found mature and trusts as a reference to retrace steps to.
Not every freeze gets it.

## Where it is

- Page: https://viewer-source.github.io/styles/edit-v4-layout-sbgn/ (in the picker: Default Edit V4 Layout SBGN
  Fallback, first of the kept versions).
- Its own copies, never refreshed by `update.sh`:
  - the viewer and its style bases: `_includes/frozen/edit-v4-layout-sbgn/` (atlas-app.html, atlas-tags.css,
    default-icon-row-base.css, look-lines.css, look-view.css);
  - the editor: `edit-v4-layout-sbgn/editor/` (editor.js joined from `src/core.js`, `graphml.js`, `celldesigner.js`,
    `sbgn.js`, `own.js`, `help.js`);
  - the five renderers it runs: `edit-v4-layout-sbgn/renderers/` (yrender.js, cdrender.js, cd_edit.js, sbgn_edit.js,
    layout.js);
  - its style: `edit-v4-layout-sbgn/default-edit.css`.
- Frozen from viewer-source.github.io e63aaf1 (the review's fixes on 9bbd482).
- The exact state of code and demo maps, as branches `keep/default-edit-v4-layout-sbgn` in
  viewer-source/viewer-source.github.io and viewer-source/styles (branches, as the session's git proxy refuses tags;
  the branch cleanup deletes only `claude/...` branches). Nothing is pushed to `keep/...` but a refresh the user asks for.

## Not frozen: what the page shares with the demo and Default Edit

- The demo's live files: `/index.json`, `/atlas-data/`, `/data/`, `/downloads/`, `/maps/` (the maps it opens and saves
  into, the SBGN-ML edited copies in `/maps/sbgn-ml/` included), the legend images and the fonts. If the build's output
  or the map files change shape later, this page can stop working or save wrongly; then check it, turn its saving off,
  or go back through the branches. With a token it saves into the same demo maps as Default Edit.
- The browser's storage, shared by every page of viewer-source.github.io: the token, the kept drawings, the drafts, the
  folder and My maps (IndexedDB `atlas-edit-drafts`, version 3, the same as V3). A later Default Edit that raises the
  database's version makes this page fail to read them in that browser: a change there keeps version 3 readable, or
  this note says from when it is not.

## What the editor does in this state

Purpose: improving a map's layout by hand, as in yEd, in all three formats. No new items, no deleting.

- Everything of V3 Layout Fallback (`edit-v3-layout/NOTES.md`).
- Added since V3:
  - SBGN-ML maps edited, layout only: the external maps and our own group, edited as the converter's GraphML, the moves
    written back into the SBGN-ML file (`sbgn_edit.js`); an edited copy saved to `maps/sbgn-ml/`.
  - Processes and logic gates as one object with their ports (proper SBGN ports, drawn as part of the glyph); Turn
    process in the right-click menu; SBGN-ML's own port places kept through the converter.
  - A line's end moved to another node, by SBGN's rules (a complex, never its members; gate inputs arrowhead-less
    only), in GraphML, SBGN-ML and CellDesigner.
  - Add and Remove bend point on a line, Remove all bend points on empty map space (one undo step).
  - Drawing: lines stop at state variables and units of information, arcs behind their own nodes, 2 px of white before
    catalysis circles and inhibition bars, logic gates facing what they control.
  - The map stays on screen when the left panel moves.

## Fixed just before the freeze (review of 2026-11-14, everything since V3)

- Removing every bend point of an SBGN-ML arc cut from the last line break before them: in a one-line file most of the
  file went (glycogen muscle 95,793 to 14,915 characters), or Remove all bend points failed. Now cut from the tag
  before them; checked on the one-line copy (one arc and all arcs, the result parses).
- CellDesigner: a modifier dropped onto a species the reaction had before an earlier move (its reactant moved away)
  was accepted and then silently put back. The write now judges by the ends as they stand (both twins); checked on two
  maps.
- SBGN-ML attribute values written without XML escaping (an id with & < " made the file malformed): now escaped.

## Known limits and issues in this state

- The editor knows nodes and bend points by their position in the file (adding and deleting is the next work).
- A process with exactly one port in its SBGN-ML file and no arc naming it gets two new ports (three in all).
- Turn moves a modifier's end on a non-square process to a point off its box edge.
- While `sbgn_edit.js` loads for an SBGN-ML map, the previous CellDesigner map's GraphML is what the editor would
  give; no saving path found that reads it.
- A process's ports are computed by a full drawing when their memo is stale (the first Turn after a read-ahead); snapping
  sorts the visible nodes on every move (not measured on dense maps).
- The V3 limits still hold (a failed save then leaving starts from GitHub's version; a draft not written when a redraw
  fails; the token save storing several MB in localStorage).
- Not checked in the session that froze it: saving to GitHub with a token, a saved SBGN-ML file opened in Newt.

## Checked at the freeze

- The ten tests green on viewer e63aaf1: cd-compare 308/308, cd-live 2,406 reactions, cd-modifier-spot 390,
  cd-reconnect 236 moves on 44 maps, cd-snap-redo 22/22, cd-square 788, layout-compare 436, sbgn-edit 426 runs on 142
  maps, sbgn-reconnect 76 moves, yrender-compare 132.
- Independent review of everything from V3 (viewer 12da828) to the freeze: no undo, redo or stuck-editor bugs; a
  multi-step SBGN-ML reconnect round-trips and the converter reads it the same; three bugs, fixed above.
- This page live after publishing: see the line in the viewer's handover.

## Going back to it

- To use it: open the page above.
- To make it the working version again: in each repository, take the files from the branch
  `keep/default-edit-v4-layout-sbgn` into `main` (the viewer: `_includes/`, `editor/`, `renderers/`, `build.py`; the
  styles: `_includes/`, `editor/`, `renderers/`, `styles/`, `styles.json`). The demo's `maps/` only if the maps should
  go back too: maps saved since would be lost.

## Storage changed since the freeze

- None (IndexedDB version 3).
