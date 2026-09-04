# FlowPeek Homebrew tap

```sh
brew install --cask flowpeek/tap/flowpeek
```

FlowPeek is a native macOS menu-bar app that recognizes Mermaid source in the current selection —
or on the clipboard, for apps whose selection cannot be read — and previews it in a Quick Look-style
panel. Source: [FlowPeek/flowpeek](https://github.com/FlowPeek/flowpeek).

The cask is updated automatically by the release workflow in that repository whenever a `v*` tag is
pushed; `version` and `sha256` in `Casks/flowpeek.rb` are rewritten by CI, so edit them only to fix
a broken release.

## Requirements

macOS 14 Sonoma or later. FlowPeek asks for Accessibility permission on first launch and requests
nothing else — no Screen Recording, no Input Monitoring.
