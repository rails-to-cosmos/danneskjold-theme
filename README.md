# Danneskjold Theme for Emacs

Beautiful high-contrast Emacs theme.

## Screenshot

### Org-mode

![org-mode](https://github.com/rails-to-cosmos/danneskjold-theme/raw/master/screenshots/org-mode.png)

## Installation

### From MELPA

```elisp
M-x package-install RET danneskjold-theme RET
```

### Using use-package

```elisp
(use-package danneskjold-theme
  :ensure t
  :config
  (load-theme 'danneskjold t))
```

### Manual

Clone this repository and add it to your load path:

```elisp
(add-to-list 'custom-theme-load-path "/path/to/danneskjold-theme")
(load-theme 'danneskjold t)
```

## Bug Reporting

Please [open an issue](https://github.com/rails-to-cosmos/danneskjold-theme/issues) and include:

- The output of `M-x version`
- Whether you're using color-theme or the Emacs 24+ theme system
- Names of problematic Emacs faces (`M-: (face-at-point)` and `M-x describe-face`)
- The output of `M-: (display-color-cells)`
- Screenshots (before and after if you made a change)
- If using a terminal: the terminal name, number of colors it supports, and whether the issue also occurs in GUI mode
- `M-x customize-apropos-faces` can help you find all relevant faces for a mode

## License

This project is licensed under the [GNU General Public License v3.0](LICENSE).
