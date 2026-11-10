# Styles

Public repository: experiments with the look of the atlas viewer, served at https://viewer-source.github.io/styles/
beside the demo, whose maps it shows (baseurl "", so the viewer reads the demo's /index.json, /atlas-data/, /data/).
Names no private repository in files, pages, code comments or commit messages.

- Names (user, 2026-11-10): the defaults are numbered by version and named by how the map sits on the page, for
  keeping track of their history (long names are fine). The main styles, the Lines family (MINERVA's thin lines, no
  frame round the map): Default is Default Panel (`?style=default-panel`; first in the picker, the address with no
  `?style=`), Default Dark is Default Panel Dark (`?style=default-panel-dark`), Default Wide is Default Lines, the panel
  only while a molecule is open and the map the full width otherwise (`?style=default-lines`; it was Default from
  2026-11-10 until Default Panel took its place the same day, user: the panel more controlled for scrolling, nothing
  moves when an annotation opens, cosy and easier to focus on the diagram, the space freed easily when needed). When the
  Lines family is replaced, its styles become Default Version 3 Lines Panel, ... Lines Panel Dark, ... Lines Wide (user:
  remember it was called Lines). The default before it is Default Version 2 Frame Compact (`?style=default-next`, named
  Default 2026-11-09 to 2026-11-10; it began as a copy of Compact), with Default Version 2 Frame Compact Dark
  (`?style=default-dark`, used by no project, to be deleted later, user) and Default Version 2 Frame Compact List
  (`?style=default-list`, Default List until 2026-11-10: a copy of Version 2 for experiments with the list). The first
  is Default Version 1 Frame Original (`?style=default`). The sections below keep the names each style had when they
  were written: there "Default" and "Default Next" mean Default Version 2 Frame Compact, "Default Dark" its dark
  version, "Default List" its list experiment, "Default Version 1" the original, "Default Lines" Default Wide.
  viewer-source and the sites keep Version 2's look until the user says otherwise.
- Default Panel and Default Panel Dark (user, 2026-11-10; in the picker Default and Default Dark): Default Lines with the panel's column on the
  right always there, 240 px, empty until a molecule is chosen, as in Version 2; Dark in Version 2 Dark's colours. With
  Default the main styles, above the first line. Default's rules live in `_includes/default-lines-base.css` (Default and
  Default Panel include it), Default Panel's in `_includes/default-panel-base.css` (Default Panel and Default Panel
  Dark include it; Dark adds only colours). A change to Default Lines' base reaches all three.
- The viewer is a copy, never edited here: `sh update.sh <clone of viewer-source.github.io>`, VERSION names the
  commit. A change the viewer needs (a new setting) is made in viewer-source first, then copied.
- Default Version 1 (named Default until 2026-11-09, user: kept for comparing later; last in the picker,
  `?style=default`, since Default Next became Default and took the first place and the address with no `?style=`): the
  first style, the viewer as it is in viewer-source, with no style file. When viewer-source takes a new default look
  (Default Next, if the user says), Default Version 1 first gets a style file of its own that keeps today's look, so it
  stays comparable. Done another way (2026-11-09, when viewer-source took Default Next): the page includes the viewer
  with `look="version1"`, which leaves Default Next's block out, so Default Version 1 and every style here keep the
  base they were made on, with no style file.
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
- The picker (`_includes/style-picker.html`) belongs here only: no site gets it. Its button is the same in every style,
  Default Version 1 included (user, 2026-11-09): filled in the style's accent under the pointer and while open, white text.  At rest
  it is quiet, a grey thing almost unseen (MINERVA: the search field's grey); under the pointer and while open it is
  filled in the strong colour of the page's buttons (user, 2026-11-09): a highlight is a strong fill, never a light tint
  or coloured text that appears nowhere else on the page. The main styles, Default, Default Dark and Default Wide (`"main": true` in `styles.json`), come first with a thin line
  under them (user, 2026-11-10: the most developed, each carrying what was learned from the other layouts and styles). Styles kept only for comparing (`"kept": true` in
  `styles.json`: the earlier defaults by version, Default Version 1 Frame Original, then Default Version 2 Frame Compact with
  its Dark and List; user, 2026-11-10: Version 2 moved there) come last, under a thin line in the menu (user, 2026-11-09).
- A style the user likes goes into viewer-source as a named style only when the user says so.
- Every change is checked on the live page before it counts as done.
- The Compact styles (user, 2026-11-09): Compact is the master. Its rules live in `_includes/compact-base.css`; Compact,
  Compact Grey and Compact Slate each include it (Compact Dark removed 2026-11-09, user: Default Dark took its place) (Jekyll front matter and `{% include compact-base.css %}`)
  and add only colours. A change to the layout or behaviour of any of them is made in `compact-base.css`, for all.
- Reactome Fixed is the master of Reactome Fixed Blue (user, 2026-11-09), the same way: its rules in
  `_includes/reactome-fixed-base.css`, both styles include it, Reactome Fixed Blue adds only colours.
- Default Next, named Default in the picker since it became viewer-source's look (user, 2026-11-09; address
  `?style=default-next` kept): a copy of Compact, the candidate for the next Default, with no dots on the separator
  above the map, and since 2026-11-09 none on any separator (user: knowing the areas drag is enough, the dots are
  noisy; the resize pointer shows them). A file of its own (`styles/default-next.css`), not including `compact-base.css`, so Compact
  experiments do not change it; a change is made to it only when the user asks for Default Next.
  Changed on its own since (user, 2026-11-09): the page's length is set by the map column alone (map, name, description,
  references); the list on the left and the panel on the right scroll inside, stay in sight while the page scrolls and
  stop 8 px before its end, so a list of thousands of maps never makes the page endless.
- Default's fade at the list's top edge under the search: removed (user, 2026-11-09: the items looked faded when
  switching), brought back the same day once the list kept the item above the chosen map in sight, and at the bottom edge too.
- Default Dark (user, 2026-11-09): Default in Compact Dark's colours (mid grey page, white map window, light zoom
  buttons). Default is its master, as Compact is of the Compact styles: Default's rules live in
  `_includes/default-base.css`, `styles/default-next.css` (Default) and `styles/default-dark.css` include it, Default Dark
  adds only colours. A change to Default's layout or behaviour is made in `default-base.css`, for both; Default List and
  Default Lines stay copies of their own.
- Default Pinned (user, 2026-11-09): Default as it was before it took Compact Dark's scrolling (list and panel pinned in
  sight while the page scrolls). Removed the same day (user): Reactome Scroll and Default List keep that
  behaviour, so it was no longer needed for comparing. Default scrolls as Compact Dark: the page, the list and the
  panel move as one (user: more predictable, a feeling of control), the list and the panel still scroll inside.
- Default List (user, 2026-11-09): Default Next for experiments with the map list, last in the picker (after Default Version 1, user 2026-11-09). A file of its own
  (`styles/default-list.css`, a copy of Default Next with its rules at the end): the list flat, group names as
  headings, their maps flush under them with no indent (the indent wasted room for long names); each group's name
  under a thin light grey line, at 15 px (maps 14), half bold: Semibold (600) in the system font (San Francisco, Segoe UI), as Helvetica
  Neue's Medium looked almost regular on the Mac; 6 px above the line and under it, under the
  name the same space as between two maps (user, 2026-11-09: chosen from option sheets: white
  rectangle, then line above; 14 to 17 px; bold too heavy). The list fades at its bottom edge too, as under the search. A second line under each
  group's name was tried and removed (user, 2026-11-09): only the line above.
- Default Lines (user, 2026-11-09): Default Next with MINERVA's separators: the map without frame or gaps, one thin
  line under the top bar, between the list and the map, between the map and the panel. A file of its own
  (`styles/default-lines.css`, a copy of Default Next with those rules at its end). No dots, and nothing under the
  pointer (user, 2026-11-09: the blue 2 px line on hover removed, "just there by default"). The download buttons 4 px
  above the window's bottom (`--m2-below-view: 42px`, user 2026-11-09: lower), the one exception to the 8 px rule above:
  with no frame round the map, the 8 px kept no edge in line. The panel on the right is as wide as the list by default, 240 px (user, 2026-11-09; was 300). Scrolls as Default since 2026-11-10 (user: the whole page, not the windows; was pinned as Default Pinned). Taken by the expo atlas (user, 2026-11-09: "to try lines
  for a change"). Kept for comparison only (user, 2026-11-09: split into pieces, "squarey",
  instead of a viewer window in the middle; not the direction taken).
