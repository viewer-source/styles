# Default Edit V2 JavaScript: what this backup holds

Frozen 2026-11-13 (user: "first fix the problems, and only then create a backup version"; "keep some notes so we know
quite certainly what is in that backup"). Default Edit as it was after the review of the whole viewer and its fixes,
the last state before the editor's model is reworked for drawing (adding and deleting nodes, lines, labels).

## Where it is

- Page: https://viewer-source.github.io/styles/edit-v2/ (in the picker: Default Edit V2 JavaScript, with the kept
  versions, before V1).
- Its own copies, never refreshed by `update.sh`:
  - the viewer and its style bases: `_includes/frozen/edit-v2/` (atlas-app.html, atlas-tags.css,
    default-icon-row-base.css, default-lines-base.css);
  - the editor: `edit-v2/editor/` (editor.js joined from `src/core.js`, `graphml.js`, `celldesigner.js`, `help.js`);
  - the four renderers it runs: `edit-v2/renderers/` (yrender.js, cdrender.js, cd_edit.js, layout.js);
  - its style: `edit-v2/default-edit.css`.
- The exact state of everything, code and demo maps together, as branches `keep/default-edit-v2`:
  - viewer-source/viewer-source.github.io at 0661bd5 (2026-11-13 16:21 UTC);
  - viewer-source/styles at 15c928c (2026-11-13 16:28 UTC), where this page was added.
  Branches, as the session's git proxy refused tags. The branch cleanup deletes only `claude/...` branches, so these stay.
  A branch can be moved by a push to it: nothing is ever pushed to `keep/...`.

## Not frozen: what the page shares with the demo

The page reads the demo's live files: `/index.json`, `/atlas-data/`, `/data/`, `/downloads/` and `/maps/` (the maps it
opens and saves into), the legend images in `/images/legend/`, and the fonts. If the build's output or the map files
change shape later, this page can stop working or save wrongly; then check it, turn its saving off, or go back through
the branches. It saves into the same demo maps as Default Edit: a move made here is a real save to the demo.

## What the editor does in this state

Purpose: improving the layout of a map by hand, as in yEd. No new items, no deleting, no resizing of nodes (their sizes
are standard); compartments are the exception and resize.

- Switching: the Edit tab (pencil) is the switch, E as a key; any other tab ends editing. Opens in about 25-130 ms on
  the demo maps (measured 2026-11-13; up to about 360 ms on the mast cell CellDesigner map), on the picture as it is,
  nothing jumps. Every map is read ahead in the background, nearest first, at the lowest priority.
- Gestures as in view mode: two fingers, the wheel and a pinch zoom; a drag on empty space or on an item not selected
  moves the map. A click selects, a drag on what is selected moves it; Shift with a drag selects an area, Shift with a
  click adds.
- Selection as in yEd: a node in light grey with eight handles; a line drawn in blue #1437ff with squares on its bend
  points and ends. Select all (Ctrl or Cmd A).
- Moving: drag, or arrow keys by 1 (Shift 10). Lines are drawn in full while they move. A line grabbed anywhere and
  dragged makes a new bend point; on CellDesigner maps also Add anchor point in the right-click menu, removed by Delete
  or the menu.
- Guides as yEd's snap lines: bends snapping level or upright; nodes lining up by centre, side, equal gaps.
- Grid and Snap to grid (the magnet): nodes on 8, bends on 4; Alt held, no snapping.
- Compartments: resized by their edge or handles, never smaller than what they hold; they grow by themselves when
  something is moved past their margin.
- Layout tools, each one undo step: Snap map to grid (the dotted square: complexes packed, rows and columns kept) and
  Pack (the complex selected, or every complex).
- Undo and redo (Ctrl or Cmd Z, Y), up to 200 steps, each the whole text of the map.
- Saving: by itself 3 s after the last change, to the site's repository through a GitHub token pasted once in the Edit
  window (kept in that browser only); never overwrites a file changed on GitHub meanwhile. Ctrl or Cmd S saves at once.
  After a save the edited drawing stays on screen, across a reload too, until the site's build catches up.
- Status line: warnings only, in red; the save messages (Saving, Saved) in grey while the editor is developed.
- How-to: the "?" after the tools (or the ? key) opens it over the map.
- Both formats: yEd GraphML, and CellDesigner maps edited in CellDesigner's own model (the process glyph not selectable,
  bend points only from the user, connection points kept), written back changing only the numbers that moved. No
  negative places: a map with any is shifted right or down by whole grid blocks on its first save.
- No Python: every renderer and layout tool runs in JavaScript, the same output as the Python versions byte for byte
  (checked by the workflow Compare renderers).

## Fixed just before the freeze (review of 2026-11-13)

- Leaving the Edit window while the editor was still opening left edit mode on with autosave armed (4 of 6 tries before,
  0 of 6 after); also a GitHub recheck's reopen and quick map switches.
- The styles copy ran its editor against the demo's current renderers; now each copy loads its own (`renderers=` on the
  include).
- A drawing kept for reload could silently not be stored when the browser's storage was full; now this map's drawing is
  stored alone, else none (an older one is never shown).
- A map's old version is let go from the viewer's cache when a new one arrives.
- Python renderers and build-only files are no longer published.

## Known limits and issues in this state

- The editor knows nodes and bend points by their position in the file, which is fine for moving but not for adding
  or deleting (the next work).
- Undo keeps a whole copy of the map's text per step: on the 1.6 MB mast cell GraphML 200 steps could reach about 320 MB.
- Every map is read ahead for anyone who sees the Edit tab, token or not (about 17 MB after a minute idle on the demo).
- A save that fails (a GitHub error), then leaving and going back, starts from GitHub's version: the moves are dropped
  with no warning left on screen.
- Pack keeps a complex's centre, so a complex grown by its name's room can overlap a neighbour; a complex name wider
  than the packed complex sticks out (the layout skill's Pack does not count the name's width).
- The first E right after opening a map can wait about half a second, until the read-ahead is done.
- On CellDesigner maps, after Snap map to grid or Pack resized a node, the next move, undo or redo wrote a connection
  point between the five (ENE) back as the nearest side (E). Found and fixed in Default Edit after the freeze
  (2026-11-13); this backup still has it.
- Not checked in the session that froze it: saving to GitHub (needs the token), the storage-full fallback (runs only
  after a save), and a saved file reopened in yEd or CellDesigner (only the user can check that).

## Checked at the freeze (live, 2026-11-13, headless)

- This page: on the mast cell (CellDesigner), Glycolysis (GraphML) and SREBP (CellDesigner) maps, entering edit, select
  all with arrow keys, undo back to the start, Snap map to grid and Pack; editor and renderers loaded from this page's
  own folders; no script errors.
- Default Edit at the same commit: the same on SREBP, Glycolysis GraphML and the mast cell GraphML; a new map version
  arriving is fetched and shown; no script errors.
- The workflows Build atlas and Compare renderers green on the commits before the freeze.

## Going back to it

- To use it: open the page above.
- To make it the working version again: in each repository, take the files from the branch `keep/default-edit-v2` into
  `main` (the viewer: `_includes/`, `editor/`, `renderers/`, `build.py`; the styles: `_includes/`, `editor/`,
  `renderers/`, `styles/`, `styles.json`). The demo's `maps/` only if the maps should go back too: maps saved since
  would be lost.
