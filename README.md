# Styles

The atlas viewer of [viewer-source](https://viewer-source.github.io) in other looks, at
https://viewer-source.github.io/styles/ (hidden from search engines). It shows the demo's maps.

- Pick a style with the chip in the lower left corner of the map window, or step through them with `[` and `]`.
  The address keeps the choice (`?style=slate`), so a style can be bookmarked or sent.
- A style is one file in `styles/`: it redefines the viewer's settings (colours and corners, the block at the top
  of `_includes/atlas-app.html`) on `:root`, and adds a few rules where a setting is not enough. `styles.json` lists
  the styles in the picker's order.
- The viewer here is a copy: `sh update.sh <clone of viewer-source.github.io>` takes a new one; `VERSION` names its commit.
