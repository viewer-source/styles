# Styles

Public repository: experiments with the look of the atlas viewer, served at https://viewer-source.github.io/styles/
beside the demo, whose maps it shows (baseurl "", so the viewer reads the demo's /index.json, /atlas-data/, /data/).
Names no private repository in files, pages, code comments or commit messages.

- The viewer is a copy, never edited here: `sh update.sh <clone of viewer-source.github.io>`, VERSION names the
  commit. A change the viewer needs (a new setting) is made in viewer-source first, then copied.
- Default (user, 2026-11-08): the first style is the viewer as it is in viewer-source, with no style file. It is
  kept unchanged in this experiment; every experiment is another style beside it. Default's look never changes with
  the experiment (user, 2026-11-09: "default is default so we could compare"; "visuals should not change but useful
  functionalities stay"): a behaviour the user keeps goes into viewer-source for every style, its look (the dots on
  the separators) is a setting a style turns on.
- A new style: a file in `styles/` and its line in `styles.json`. Settings on `:root` first; extra rules prefixed
  with `html ` so they win over the viewer's own rules, which come later in the page.
- Rules for every style (user, 2026-11-09): button sizes stay as in the viewer (a style changes colours, not sizes);
  the style chip has the size of the download buttons; the window with the map list ends where the download buttons
  end (a style that frames the list adds no padding under it).
  No room wasted at the bottom (user, 2026-11-09: "lets not come back to it"): in every style but Default the download
  buttons sit at the bottom of the window (`--m2-below-view`), 8 px under the map where the style's gaps are 8 px.
- The picker (`_includes/style-picker.html`) belongs here only: no site gets it.
- A style the user likes goes into viewer-source as a named style only when the user says so.
- Every change is checked on the live page before it counts as done.
