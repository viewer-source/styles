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
  end, a good default, no longer a rule (user, 2026-11-09: to be unlinked when the map window gets its lower separator).
  The space at the bottom (user, 2026-11-09, repeated: "lets not come back to it"): in every style but Default the
  download buttons are 8 px above the bottom of the window, the same distance as the windows from the window's edges,
  and 8 px under the map where the style's gaps are 8 px (`--m2-below-view`). Not 0: buttons on the window's edge look
  cut off (a misreading of 2026-11-09, corrected the same day).
- The picker (`_includes/style-picker.html`) belongs here only: no site gets it.
- A style the user likes goes into viewer-source as a named style only when the user says so.
- Every change is checked on the live page before it counts as done.
- The Compact styles (user, 2026-11-09): Compact is the master. Its rules live in `_includes/compact-base.css`; Compact,
  Compact Grey, Compact Slate and Compact Dark each include it (Jekyll front matter and `{% include compact-base.css %}`)
  and add only colours. A change to the layout or behaviour of any of them is made in `compact-base.css`, for all.
- Reactome Fixed is the master of Reactome Fixed Blue (user, 2026-11-09), the same way: its rules in
  `_includes/reactome-fixed-base.css`, both styles include it, Reactome Fixed Blue adds only colours.
- Default Next (user, 2026-11-09): a copy of Compact, the candidate for the next Default, with no dots on the separator
  above the map. A file of its own (`styles/default-next.css`), not including `compact-base.css`, so Compact
  experiments do not change it; a change is made to it only when the user asks for Default Next.
  Changed on its own since (user, 2026-11-09): the page's length is set by the map column alone (map, name, description,
  references); the list on the left and the panel on the right end where it ends and scroll inside, so a list of
  thousands of maps never makes the page endless.
