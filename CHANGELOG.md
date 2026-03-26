# Changelog

## 1.1.1

- Fix corrupted `hl-dark` hex value caused by unscoped version bump
- Fix Makefile `sed` to only replace version in Package-Version lines
- Remove unused palette colors and redundant variable pairs
- Rename inconsistent color variables (grey-1 -> grey-dim, ada-midnight -> surface, etc.)
- Precompute `danneskjold-invert-color` result, remove single-use function
- Light theme: use palette variables instead of hardcoded strings
- Light theme: add missing face overrides for fringe, header-line, mode-line, etc.
- Light theme: use `class` display spec consistent with dark theme

## 1.1.0

- Add semantic color aliases (success, warning, error, accent, link, etc.)
- Use semantic names in face definitions for clearer intent
- Add light/dark theme toggle via `danneskjold-toggle-theme`
- Add `danneskjold-invert-color` utility

## 1.0.0

- Initial release with dark and light variants
- High-contrast minimalistic color palette
- Support for major modes: org, dired, magit, company, vterm, vertico
