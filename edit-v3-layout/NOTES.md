# Default Edit V3 Layout: what this backup holds

Frozen 2026-11-14 (user: "we need to have something as a fallback version before we start further developing GraphML
editor"; the name: "default edit version ... plus call it maybe layout, because at this point editing covers layout
only"). Default Edit as it was after the independent review of everything since V2 and its fix: the last editor that only
improves a map's layout, before the editor's model is reworked for drawing (adding and deleting nodes, lines, labels).
Editing without a token, the folder and My maps tested by the user before the freeze ("It looks fine").

## Where it is

- Page: https://viewer-source.github.io/styles/edit-v3-layout/ (in the picker: Default Edit V3 Layout, with the kept
  versions, before V2).
- Its own copies, never refreshed by `update.sh`:
  - the viewer and its style bases: `_includes/frozen/edit-v3-layout/` (atlas-app.html, atlas-tags.css,
    default-icon-row-base.css, look-lines.css, look-view.css);
  - the editor: `edit-v3-layout/editor/` (editor.js joined from `src/core.js`, `graphml.js`, `celldesigner.js`, `help.js`);
  - the four renderers it runs: `edit-v3-layout/renderers/` (yrender.js, cdrender.js, cd_edit.js, layout.js);
  - its style: `edit-v3-layout/default-edit.css`.
- Copied from viewer-source.github.io edd77db through this repository's 84006fe. Not in it: the list's right-click menu
  for the reader's maps and groups (viewer b3e6892, styles 34e8a22), pushed by another session minutes after, untested.
- The exact state of everything, code and demo maps together, as branches `keep/default-edit-v3-layout`:
  - viewer-source/viewer-source.github.io at edd77db;
  - viewer-source/styles at 84006fe.
  Branches, as the session's git proxy refuses tags. The branch cleanup deletes only `claude/...` branches, so these
  stay. Nothing is ever pushed to `keep/...`.

## Not frozen: what the page shares with the demo and Default Edit

- The demo's live files: `/index.json`, `/atlas-data/`, `/data/`, `/downloads/` and `/maps/` (the maps it opens and saves
  into), the legend images in `/images/legend/`, and the fonts. If the build's output or the map files change shape
  later, this page can stop working or save wrongly; then check it, turn its saving off, or go back through the branches.
  With a token it saves into the same demo maps as Default Edit: a move made here is a real save to the demo.
- The browser's storage, shared by every page of viewer-source.github.io: the token (`atlas-edit-token`), the kept
  drawings, the drafts, the folder and My maps (IndexedDB `atlas-edit-drafts`, version 3; `atlas-mine`,
  `atlas-mine-group`, `atlas-edit-folder` in localStorage). A later Default Edit that raises the database's version or
  changes a record's shape makes this page fail to read them in that browser (IndexedDB refuses an older version): a
  change there keeps version 3 readable, or this note says from when it is not.

## What the editor does in this state

Purpose: improving the layout of a map by hand, as in yEd. No new items, no deleting, no resizing of nodes (their sizes
are standard); compartments are the exception and resize.

- Everything of V2 (`edit-v2/NOTES.md`: switching, gestures, selection, moving, guides, grid and snap, compartments,
  Snap map to grid and Pack, saving to GitHub with a token, the status line, the how-to, both formats, no Python).
- Added since V2:
  - Editing without a token, three layers: moves kept in this browser (shown after a reload, with Back to the site's
    map and Download the map); a folder on the computer where each kept map is written by itself (Chrome, Edge; never
    over a file this browser did not write); My maps, the reader's own GraphML and CellDesigner maps, added by a file or
    a drop or found in the folder, edited and kept in the browser and folder, never sent to GitHub, the group renamed
    in place, Example maps Shown or Hidden in Settings.
  - Undo and redo keep only what changed (mast cell GraphML: 25 MB in place of 97 MB for 30 steps).
  - CellDesigner: a connection point (ENE) no longer turned into a side (E) after Snap or Pack; a modifier's end at a
    process glyph moves among CellDesigner's six places, a drop on the centre takes the place facing the modifier.
  - The right-click menu, the Downloads tab and the download row give the source file, SVG and PNG as on screen.
  - Default View's look as the viewer's own (look-lines.css, look-view.css); Map colours File and Default only.

## Fixed just before the freeze (review of 2026-11-14)

- A draft or own map could be stored with the previous map's drawing when another map was opened during the first
  redraw of the map just moved (the same for the drawing kept after a GitHub save). Now only the map's own drawing is
  stored, else its text is drawn for it. Not reproducible through the page in six tries before the fix (a guard);
  checked live after it: drafts of a small and a large map kept with their own drawings, no script errors.

## Known limits and issues in this state

- The editor knows nodes and bend points by their position in the file: fine for moving, not for adding or deleting
  (the next work).
- A save that fails (a GitHub error), then leaving and going back, starts from GitHub's version: the moves are dropped
  with no warning left on screen.
- My maps matches a file added again by its name: a different file with the same name replaces the edited map, in the
  browser and in the folder (review finding, left for the user to decide: name only, or name and content).
- If a redraw fails ("Not drawn"), the draft is not written; moves made in the last moment before a reload can be lost
  (the browser's leave warning still asks).
- A node moved and dragged back to exactly where it was can leave "Your earlier changes to this map are shown" with no
  draft behind it, until Back to the site's map (this page visit only).
- With a token, every save stores the kept maps' texts in localStorage, several MB on large maps.
- The drafts' database is opened on any page of the site once a reader has drafts or own maps; the drafts, folder and
  My maps code (about 270 lines) is in the viewer's file, loaded on every viewer page.
- Every map is read ahead for anyone who sees the Edit tab, token or not.
- Pack keeps a complex's centre, so a complex grown by its name's room can overlap a neighbour; a complex name wider
  than the packed complex sticks out.
- The first E right after opening a map can wait about half a second, until the read-ahead is done.
- Not checked in the session that froze it: saving to GitHub with a token (the user's path; the review found it
  unchanged), the folder after a reload (the user tested in Chrome), a saved file reopened in yEd or CellDesigner.

## Checked at the freeze

- The six comparison tests green on viewer 06fa9a9, the renderers unchanged since (cd-compare 308/308, cd-live 2,406 reactions, cd-modifier-spot
  390, cd-snap-redo 22/22, layout-compare 436 runs, yrender-compare 132); Compare renderers green on GitHub for the
  last editor commit before it.
- Independent review of everything from V2 (viewer 0661bd5) to the freeze: the token holder's GitHub path unchanged,
  undo and redo byte-exact over 300 random histories, pages without the Edit tab inert.
- This page live after publishing: see the line in the viewer's handover.

## Going back to it

- To use it: open the page above.
- To make it the working version again: in each repository, take the files from the branch `keep/default-edit-v3-layout`
  into `main` (the viewer: `_includes/`, `editor/`, `renderers/`, `build.py`; the styles: `_includes/`, `editor/`,
  `renderers/`, `styles/`, `styles.json`). The demo's `maps/` only if the maps should go back too: maps saved since
  would be lost.
