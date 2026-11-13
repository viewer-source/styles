# Styles

Public repository: experiments with the look of the atlas viewer, served at https://viewer-source.github.io/styles/
beside the demo, whose maps it shows (baseurl "", so the viewer reads the demo's /index.json, /atlas-data/, /data/).
Names no private repository in files, pages, code comments or commit messages.

- Names (user, 2026-11-10): the defaults are numbered by version and named by how the map sits on the page, for
  keeping track of their history (long names are fine). Versions are written V1, V2, V3 (user, 2026-11-10: "Default V1 ...", was "Default Version 1 ..."). The main styles, the Lines family (MINERVA's thin lines, no
  frame round the map): Default is Default Panel (`?style=default-panel`; first in the picker and the address with no
  `?style=` until 2026-11-13, now second: Default Edit took that place), Default Dark is Default Panel Dark (`?style=default-panel-dark`), Default Wide is Default Lines, the panel
  only while a molecule is open and the map the full width otherwise (`?style=default-lines`; it was Default from
  2026-11-10 until Default Panel took its place the same day, user: the panel more controlled for scrolling, nothing
  moves when an annotation opens, cosy and easier to focus on the diagram, the space freed easily when needed). When the
  Lines family is replaced, its styles become Default V3 Lines Right Panel, ... Lines Right Panel Dark, ... Lines Wide (user:
  remember it was called Lines). The default before it is Default V2 Frame Compact (`?style=default-next`, named
  Default 2026-11-09 to 2026-11-10; it began as a copy of Compact), with Default V2 Frame Compact Dark
  (`?style=default-dark`, removed 2026-11-10, user; Default Panel Dark keeps its colours) and Default V2 Frame Compact List
  (`?style=default-list`, Default List until 2026-11-10: a copy of Version 2 for experiments with the list). The first
  is Default V1 Frame Original (`?style=default`). The sections below keep the names each style had when they
  were written: there "Default" and "Default Next" mean Default V2 Frame Compact, "Default Dark" its dark
  version, "Default List" its list experiment, "Default V1" the original, "Default Lines" Default Wide.
  viewer-source and the sites keep Version 2's look until the user says otherwise. Since 2026-11-10 (user: "apply newest
  default to mreg-atlas") Default Panel is in viewer-source as `look="panel"`, a copy of `default-lines-base.css` and
  `default-panel-base.css`: a change to them here is copied there by hand; mreg-atlas uses it, the demo keeps Version 2.
- Default V2 Frame Compact Dots (user, 2026-11-10; `?style=default-next-dots`): Version 2 with Compact's three dots
  (#b4b4b4) on every separator; includes `_includes/default-base.css` and adds only the dots; with the kept styles,
  after Version 2.
- Default Panel and Default Panel Dark (user, 2026-11-10; in the picker Default and Default Dark): Default Lines with the panel's column on the
  right always there, 240 px, empty until a molecule is chosen, as in Version 2; Dark in Version 2 Dark's colours. With
  Default the main styles, above the first line. Default's rules live in `_includes/default-lines-base.css` (Default and
  Default Panel include it), Default Panel's in `_includes/default-panel-base.css` (Default Panel and Default Panel
  Dark include it; Dark adds only colours). A change to Default Lines' base reaches all three.
- A line under the map window in Default (user, 2026-11-11; `styles/default-panel.css`), before the download buttons, in
  the frame colour as the other lines: it marks where the map ends and where its separator is dragged. Default only,
  as asked (Default Downloads had it already); the other Default styles and viewer-source's `look="panel"` take it
  when the user says.
- Removed (user, 2026-11-12): Default Downloads, Default Code Downloads and Default Wide (`styles/default-lines.css`;
  its rules stay in `_includes/default-lines-base.css`, which Default and the others include); their files are in the
  history. The notes below still describe them.
- Names changed (user, 2026-11-12): Default Icon Column is Default Icon Column Legacy, last in the picker with the kept
  versions; Default Icon Row is Default Icons (it holds both, the row on top and the column on the left, by Settings). The
  addresses stay (`?style=default-icon-column`, `?style=default-icon-row`); the notes below keep the old names.
- Default Icon Column (user, 2026-11-11; `?style=default-icon-column`): Default Wide with the viewer's icon column
  (`--m2-icons: 1`, made in viewer-source for it), from MINERVA's but narrower: Search, Maps, Downloads, Open in, Legend (SBGN's PD learner's card in a window over the page, read from the demo's images/legend/, user 2026-11-11), then Settings and Info (in this order, Info last as About on a website, user 2026-11-11; Info and Open in added, user 2026-11-11; Search its own icon and Symbols out until a legend is
  ready, user, 2026-11-11), each opening its window in the list's place, closed by a second click or its cross; annotations on the right, only while a molecule
  is open; no download row, the map window 8 px above the window's bottom with a line under it. The panel floated over the map as a card
  for a while (`--m2-info-float: 1`, user, 2026-11-11), then back to the column on the right the same day (user: "return it"). Later the same day (user: "it should not modify the usable window, a temporary panel", "as with annotation bar on the right") both side windows float over the map: the icon column's windows on the left (`--m2-nav-float: 1`) and the annotations on the right (`--m2-info-float: 1`) as a column as tall as the map window with a line on its left, no card or shadow; the map window keeps the whole width and a small map stays centred in it. Look (user, 2026-11-11): the highlight blue as in Default (grey tried and returned), no light tints under the pointer, no bold (window titles regular), the windows' text soft grey (#5f6368), the buttons in Downloads and Open in the page's download buttons (padding, corners, #777 edge and text) at full width, no site name in the top bar; the icon column goes out of sight with the list when the list's separator is dragged away (or dragged further left once the list is closed), a click on the separator brings both back. Settings (user, 2026-11-11), a gear after Open in: the reader's map size (what 100% is, 75 to 150%), how maps open, and Annotations on the left (as MINERVA, in the list window's place) or right (default), kept in the browser. Named so by the user
  (MINERVA2 weighed: the styles are named by how the map sits, and MINERVA is the colour study). Right after Default in the picker (user, 2026-11-11: the most promising for now; was after Default Downloads).
- Removed (user, 2026-11-13): Default Icons (Default Icon Row, `styles/default-icon-row.css`, in the history). Its rules
  stay in `_includes/default-icon-row-base.css`, now Default Edit's base; the notes below still describe it.
- Order of the picker (user, 2026-11-13: Default Edit "kind of became the main development line for us"): Default first,
  Default Edit second, both `"top": true` in `styles.json`, then a line, then the other main styles, their line, the
  rest and the kept versions as before. Later the same day (user: "move it to the top, making it essentially the
  default, even if it's not named default"): Default Edit first, so `/styles/` with no `?style=` opens it; Default
  second, now at `?style=default-panel`. Names unchanged.
- Default Edit V1 Python (user, 2026-11-13: "do this one as a frozen one so we can come back to it if needed"; `/styles/edit-v1/`,
  `?style=default-edit-v1`, last in the picker with the kept versions): Default Edit frozen as it was before the editor
  moved into its own files and to JavaScript (viewer a6d3018). Its own page with its own copies, never refreshed by
  `update.sh`: the viewer, editor and style bases in `_includes/frozen/edit-v1/`, the Python renderers and layout tools in
  `edit-v1/renderers/` (the editor's paths point there). The picker opens a style with `page` in styles.json on that page
  and goes back to `/styles/` for the others. It saves into the demo's maps as Default Edit does; when the build or the
  map files change, check it still saves cleanly, else turn its saving off. Default Edit itself goes on as the full editor.
- Default Icon Column Legacy as the place to try new icons (user, 2026-11-13): it shows the viewer's Overlays
  candidates, O1 to O9 (O4 and O5 removed, user) before Settings (names on hover); a click does nothing until Overlays is built.
  Legend signs C4 and C5 (user, 2026-11-13: C2 with a line of text beside each square, with and without the line under)
  after the other Legend signs.
- Default Icon Row (user, 2026-11-11; `?style=default-icon-row`): the icon column's windows with the icons as a row of
  tabs at the top of the list's panel (`--m2-icon-row: 1`, made in viewer-source for it), the panel fixed beside the map
  as in Default (user: "lets try as in default"); the top bar for the site's name and navigation (user). Default Wide
  as the base: annotations on the right only while a molecule is open, or on the left as a tab of the panel (Settings);
  a Search tab showing the field with the whole list under it, Maps the list alone (user, 2026-11-11: "search bar
  appear with the list (not just empty long panel)"); no Info tab (user, 2026-11-11: "remove info"; not needed, the
  icons were tried for their number), no Legend for now, no Open in tab (its links at the end of Downloads,
  `--m2-dl-ext: 1`, user the same day), a click on the open tab keeps it, the tabs plain signs, not buttons (user, 2026-11-12: "simply click, not
  highlight", "without highlights, so not button view, so then they could take narrower bar": no fill and no change of colour
  when open or under the pointer (user, asked twice: the darker sign under the pointer taken out), 24 px tabs 12 px apart, the bar 24 px tall), the separator closes the panel. Settings puts the icons on top (the default) or in a column on the left, the same tabs, plain signs and
  behaviour (`--m2-bar-choice: 1`, user 2026-11-12: "vertical vs horizontal"; taken out once the same day, "for another
  style", then added back: "why not"); the row preferred while about five tabs or fewer (user). The way the default could evolve without the vertical column (user, 2026-11-11). Right
  after Default Icon Column.
- Right-click menu (user, 2026-11-12): Default Icons (Default Icon Row) turns on the viewer's menu over the map
  (`--m2-context: 1` in `_includes/default-icon-row-base.css`, so Default Edit has it too); viewer-source's CLAUDE.md
  says what it holds.
- Default Edit (user, 2026-11-12: "lets create a new default edit style"; `?style=default-edit`): Default Icon Row with
  the viewer's Edit tab (`--m2-edit: 1`). Default Icon Row's rules moved into `_includes/default-icon-row-base.css`,
  which both include (Default Icon Row is its master); right after it in the picker.
- Default Code (user, 2026-11-10; `?style=default-panel-code`): Default laid out as Claude Code's app, the list column from
  the top of the window with the site's name in it, white (first linen #f5f4f1, kept as Default Code Linen; user), the top bar and its line over the map
  and the panel only; includes `_includes/default-panel-base.css`; right after Default in the picker (user, 2026-11-10).
- Default Downloads (user, 2026-11-11; `?style=default-panel-downloads`): Default with the viewer's menu (`--m2-menu: 1`)
  as Default Code Downloads, Search and Downloads rows at the top of the list, the map window to 8 px above the window's
  bottom; Default's colours; includes `_includes/default-panel-base.css`; after Default Icon Column in the picker (right after Default until 2026-11-11).
  A line under the map window (in the frame colour), before the page's text (user, 2026-11-11), also in Default Code Downloads.
  Not the new default (user, 2026-11-11): it gains the map about 35 px at a 900 px window while search moves behind a
  click. Ideas kept: only the downloads in the menu, the search field staying; search at the top; downloads in the right
  panel, shown while no molecule is open (as the map's own details), hidden under an annotation (user: too heavy if
  always there).
- Default Downloads Panel (user, 2026-11-11; `?style=default-panel-downloads-panel`): the map's downloads as plain links
  in the panel's column while no molecule is open, in place of the download row. Removed the same day (user: it does
  not work), with its viewer setting; its rules are in the history. Glycolysis (CellDesigner) keeps the official site's
  full download set on the demo, for comparison. Another idea (user, 2026-11-11): downloads on a right click; on phones
  no right click.
- Default Code Downloads (user, 2026-11-10, named Default Code Compact until 2026-11-11, user; `?style=default-panel-code-downloads`,
  the old address opens Default): Default Code with the viewer's menu
  (`--m2-menu: 1`, made in viewer-source for it), as in Claude's app: Search (magnifying glass, shows the search field
  under the rows) and Downloads (download sign, a menu of the map's files) at the top of the list, no search field and no
  download buttons, the map window to 8 px above the window's bottom; Default Code's rules copied; after Default Code.
  Search turns into the field in its own place (user: not below). Grey highlights as Default Linen (#71777c, user). The
  search as a pop-up window, as in Claude, not yet (user).
- Default Code Linen (user, 2026-11-10; `?style=default-panel-code-linen`): an exact copy of Default Code, named after
  its side colour (linen, #f5f4f1); a file of its own, after Default Code; since the same day (user) with Default Linen's grey highlights
  (#71777c, white text).
- Default Dust (user, 2026-11-10; `?style=default-panel-dust`): Default Dark in a lighter tone, good for white text: first a dusty
  warm taupe (#6e655f), then the same day cp108's cool grey (user: "brown is not needed"): page #71777c, list and panel
  #686e73, the chosen map in light grey #dfe2e5 with dark text; includes
  `_includes/default-panel-base.css`, adds only colours; after Default Dark. Removed 2026-11-11 (user); its rules are in the history.
- Default Dust Linen (user, 2026-11-10; `?style=default-panel-dust-linen`): linen #f5f4f1 everywhere but the white map
  window, dark text, the chosen map in Dust's grey #71777c with white text; after Default Dust. Removed 2026-11-11 (user); its rules are in the history.
- Default Linen (user, 2026-11-10; `?style=default-panel-linen`): Default Dust Linen with the linen #f5f4f1 on the left
  column alone (the list and its search field white); top bar, map window and panel white as Default; the chosen map in
  Dust's grey #71777c with white text, as Dust Linen; after Default Dust Linen. Removed 2026-11-11 (user); its rules are in the history.
- The header line (2026-11-10): `default-lines-base.css` sets no margin under the header, so the vertical lines meet
  it on any site, as viewer-source's `look="panel"`; every Default style has it through the base.
- Default Dust Cold (user, 2026-11-10): a cool slate version of Dust, then reversed; removed the same day (user: not liked).
- Default Slate and Default Grey (user, 2026-11-10): Default (Default Panel) in Compact Slate's and Compact Grey's
  colours (those two removed the same day, user), each a little lighter (user: "not too much lighter"; values in each file's comment). They include
  `_includes/default-panel-base.css` and add only colours (Grey also its underlined links); main styles, after Default Dark. Default Grey made a cool grey a touch darker the same day (user: "a bit stronger or colder").
- The viewer is a copy, never edited here: `sh update.sh <clone of viewer-source.github.io>`, VERSION names the
  commit. A change the viewer needs (a new setting) is made in viewer-source first, then copied.
- Default V1 (named Default until 2026-11-09, user: kept for comparing later; last in the picker,
  `?style=default`, since Default Next became Default and took the first place and the address with no `?style=`): the
  first style, the viewer as it is in viewer-source, with no style file. When viewer-source takes a new default look
  (Default Next, if the user says), Default V1 first gets a style file of its own that keeps today's look, so it
  stays comparable. Done another way (2026-11-09, when viewer-source took Default Next): the page includes the viewer
  with `look="version1"`, which leaves Default Next's block out, so Default V1 and every style here keep the
  base they were made on, with no style file.
- Default (user, 2026-11-08): the first style is the viewer as it is in viewer-source, with no style file. It is
  kept unchanged in this experiment; every experiment is another style beside it. Default's look never changes with
  the experiment (user, 2026-11-09: "default is default so we could compare"; "visuals should not change but useful
  functionalities stay"): a behaviour the user keeps goes into viewer-source for every style, its look (the dots on
  the separators) is a setting a style turns on.
- A new style: a file in `styles/` and its line in `styles.json`. Settings on `:root` first; extra rules prefixed
  with `html ` so they win over the viewer's own rules, which come later in the page.
- Rules for every style (user, 2026-11-09): button sizes stay as in the viewer (a style changes colours, not sizes);
  the style chip has the height of the download buttons and, since 2026-11-10 (user), the width of the menu's longest name,
  measured (a name that does not fit after "Style:" ends in an ellipsis); the window with the map list ends where the download buttons
  end, a good default, no longer a rule (user, 2026-11-09: to be unlinked when the map window gets its lower separator).
  The space at the bottom (user, 2026-11-09, repeated: "lets not come back to it"): in every style but Default the
  download buttons are 8 px above the bottom of the window, the same distance as the windows from the window's edges,
  and 8 px under the map where the style's gaps are 8 px (`--m2-below-view`). Not 0: buttons on the window's edge look
  cut off (a misreading of 2026-11-09, corrected the same day).
- The picker (`_includes/style-picker.html`) belongs here only: no site gets it. Its button is the same in every style,
  Default V1 included (user, 2026-11-09): filled in the style's accent under the pointer and while open, white text.  At rest
  it is quiet, a grey thing almost unseen (MINERVA: the search field's grey); under the pointer and while open it is
  filled in the strong colour of the page's buttons (user, 2026-11-09): a highlight is a strong fill, never a light tint
  or coloured text that appears nowhere else on the page. The main styles, Default, Default Dark and Default Wide (`"main": true` in `styles.json`), come first with a thin line
  under them (user, 2026-11-10: the most developed, each carrying what was learned from the other layouts and styles). Styles kept only for comparing (`"kept": true` in
  `styles.json`: the earlier defaults by version, Default V1 Frame Original, then Default V2 Frame Compact with
  its Dark and List; user, 2026-11-10: Version 2 moved there) come last, under a thin line in the menu (user, 2026-11-09).
- A style the user likes goes into viewer-source as a named style only when the user says so.
- Every change is checked on the live page before it counts as done.
- The Compact styles (user, 2026-11-09): Compact, the master, and Compact Grey, Compact Slate, Compact Dark, all removed
  (Compact Dark 2026-11-09; the others 2026-11-10, user, once Default Grey, Default Slate and Default V2 Frame
  Compact Dots kept what was liked in them). Their rules, `_includes/compact-base.css`, are in the history (commit before
  the removal).
- Reactome Scroll is the master of Reactome Scroll Right Panel (user, 2026-11-10; Reactome Scroll Panel for a moment: "panel" alone was not clear): its rules in
  `_includes/reactome-scroll-base.css`, both styles include it; Reactome Scroll Right Panel adds only the panel's window on
  the right, always there, empty until a molecule is chosen (as Default's column).
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
  `_includes/default-base.css`, `styles/default-next.css` (Default) and `styles/default-dark.css` (removed 2026-11-10) included it, Default Dark
  adds only colours. A change to Default's layout or behaviour is made in `default-base.css`, for both; Default List and
  Default Lines stay copies of their own.
- Default Pinned (user, 2026-11-09): Default as it was before it took Compact Dark's scrolling (list and panel pinned in
  sight while the page scrolls). Removed the same day (user): Reactome Scroll and Default List keep that
  behaviour, so it was no longer needed for comparing. Default scrolls as Compact Dark: the page, the list and the
  panel move as one (user: more predictable, a feeling of control), the list and the panel still scroll inside.
- Default List (user, 2026-11-09): Default Next for experiments with the map list, last in the picker (after Default V1, user 2026-11-09). A file of its own
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
- Renderers of its own commit (2026-11-13): `update.sh` copies the four JavaScript renderers the editor runs into
  `renderers/`, and the include's `renderers="/styles/renderers/"` loads them from there, so Default Edit no longer runs
  its copied editor against whatever renderer the demo has at the moment.
- Default Edit V2 JavaScript (user, 2026-11-13: "first fix the problems, and only then create a backup version";
  `/styles/edit-v2/`, `?style=default-edit-v2`, with the kept versions before V1): Default Edit frozen after the review's
  fixes (viewer 0661bd5), the editor in JavaScript. Its own page and copies, never refreshed by `update.sh`: the viewer
  and style bases in `_includes/frozen/edit-v2/`, the editor in `edit-v2/editor/`, the four renderers in
  `edit-v2/renderers/` (`editor=` and `renderers=` on its include). Saves into the demo's maps as Default Edit does: when
  the build or the map files change, check it still saves cleanly, else turn its saving off. The exact state of code and
  maps is also kept as the branch `keep/default-edit-v2` in this repository (15c928c) and in viewer-source.github.io
  (0661bd5); a branch, as the session's git proxy refuses tags; branch-cleanup deletes only `claude/...` branches.
  What it holds, what it shares with the demo, its known limits and how to go back: `edit-v2/NOTES.md`.
