;;; danneskjold-theme.el --- beautiful high-contrast theme  -*- lexical-binding: t; -*-

;; Copyright (c) 2016-2026 Dmitry Akatov
;; Author: Dmitry Akatov <dmitry.akatov@protonmail.com>
;; URL: https://github.com/rails-to-cosmos/danneskjold-theme
;; Package-Version: 1.1.1

;;; Commentary:
;; High-contrast minimalistic theme with dark and light variants.

;;; Code:

(deftheme danneskjold "High-contrast minimalistic theme. Dark variant.")
(deftheme danneskjold-light "High-contrast minimalistic theme. Light variant.")

;;;###autoload
(defun danneskjold-toggle-theme ()
  "Toggle between light and dark danneskjold themes."
  (interactive)
  (if (custom-theme-enabled-p 'danneskjold-light)
      (progn
        (disable-theme 'danneskjold-light)
        (enable-theme 'danneskjold))
    (disable-theme 'danneskjold)
    (enable-theme 'danneskjold-light)))

(let* ((class '((class color) (min-colors 89)))

       ;; Core
       (black      "#000000")
       (white      "#FFFFFF")
       (grey       "#C0C5CF")
       (grey-dim   "#525254")
       (grey-dark  "#39393D")

       ;; Hues
       (yellow     "#FFCC00")
       (orange     "#FFA500")
       (red        "#E74C3C")
       (magenta    "#F92672")
       (blue       "#4CB5F5")
       (cyan       "#66D9EF")
       (green      "#B6E63E")
       (teal       "#1ABC9C")

       ;; Hue variants
       (green-dark    "#27AE60")
       (green-muted   "#86B20E")
       (blue-dark     "#2980B9")
       (red-dark      "#C0392B")
       (yellow-bright "#F1C40F")
       (yellow-dark   "#F39C12")
       (magenta-dark  "#8E44AD")
       (dark-cyan     "#8FA1B3")

       ;; Surfaces
       (frost       "#D0E1F9")
       (comment     "#A4C2EB")
       (invisible   "#2B4B6E")
       (diredcl     "#749AF7")
       (surface     "#21252B")
       (surface-alt "#282C34")
       (hover       "#1F1F1F")
       (region-bg   "#373D4F")
       (border      "#223959")
       (golden      "#FFCA00")

       ;; Precomputed: inversion of #281580
       (yellow-c-inv "#D7EA7F")

       ;; Light theme overrides
       (light-bg         "#FFFFFF")
       (light-fg         "#000000")
       (light-hover      "#FAFAFA")
       (light-highlight  "#F0FFF0")
       (light-surface    "#F8F8FF")
       (light-comment    "#7F8C8D")
       (light-dim        "#BDC3C7")
       (light-golden     "#FFD600")

       ;; Semantic
       (success    green)
       (warning    yellow)
       (error      red)
       (accent     blue)
       (subtle     invisible)
       (match      yellow)
       (addition   green-dark)
       (deletion   red-dark)
       (modified   yellow-dark)
       (link       frost)
       (prompt     diredcl)
       (selection  region-bg)
       (highlight  golden))

  ;; --- Dark Theme ---
  (custom-theme-set-faces
   'danneskjold
   `(default ((,class (:foreground ,white :background ,black))))
   `(button ((,class (:foreground ,link :underline t :weight normal))))
   `(comint-highlight-prompt ((,class (:foreground ,cyan))))
   `(company-tooltip ((,class (:foreground ,white :background ,surface))))
   `(company-tooltip-selection ((,class (:foreground ,white :background ,surface-alt))))
   `(company-tooltip-common ((,class (:foreground ,match))))
   `(compilation-error ((,class (:foreground ,error))))
   `(compilation-info ((,class (:foreground ,prompt))))
   `(compilation-line-number ((,class (:foreground ,success))))
   `(diff-added ((,class (:foreground ,addition))))
   `(diff-removed ((,class (:foreground ,modified))))
   `(dired-directory ((,class (:foreground ,accent))))
   `(dired-flagged ((,class (:foreground ,error :underline t))))
   `(dired-ignored ((,class (:foreground ,subtle))))
   `(diredp-deletion ((,class (:foreground ,black :background ,error))))
   `(diredp-dir-name ((,class (:foreground ,prompt))))
   `(diredp-file-name ((,class (:foreground ,white))))
   `(font-lock-builtin-face ((,class (:foreground ,accent))))
   `(font-lock-comment-face ((,class (:foreground ,comment))))
   `(font-lock-constant-face ((,class (:foreground ,warning))))
   `(font-lock-function-name-face ((,class (:foreground ,warning))))
   `(font-lock-keyword-face ((,class (:foreground ,link))))
   `(font-lock-string-face ((,class (:foreground ,success))))
   `(font-lock-type-face ((,class (:foreground ,orange))))
   `(font-lock-variable-name-face ((,class (:foreground ,white))))
   `(fringe ((,class (:foreground ,subtle))))
   `(header-line ((,class (:background ,black :foreground ,comment :underline ,comment))))
   `(highlight ((,class (:background ,subtle :foreground ,black))))
   `(hl-line ((,class (:background ,hover))))
   `(isearch ((,class (:foreground ,black :background ,subtle))))
   `(lazy-highlight ((,class (:foreground ,black :background ,match))))
   `(line-number ((,class (:foreground ,subtle))))
   `(line-number-current-line ((,class (:foreground ,white))))
   `(link ((,class (:foreground ,link :underline t))))
   `(magit-branch-local ((,class (:foreground ,teal))))
   `(minibuffer-prompt ((,class (:foreground ,prompt))))
   `(mode-line ((,class (:background ,black :foreground ,yellow-bright))))
   `(mode-line-inactive ((,class (:background ,black :foreground ,subtle))))
   `(org-done ((,class (:foreground ,success))))
   `(org-todo ((,class (:foreground ,warning))))
   `(org-table ((,class (:foreground ,warning))))
   `(org-level-1 ((,class (:foreground ,white :bold t))))
   `(org-priority ((,class (:foreground ,white))))
   `(org-priority-highest ((,class (:foreground ,error :bold t))))
   `(org-priority-medium ((,class (:foreground ,warning))))
   `(org-priority-lowest ((,class (:foreground ,addition))))
   `(org-ellipsis ((,class (:inherit hs-face :underline unspecified))))
   `(rainbow-delimiters-depth-1-face ((,class (:foreground ,success))))
   `(rainbow-delimiters-depth-2-face ((,class (:foreground ,error))))
   `(region ((,class (:background ,selection))))
   `(show-paren-match ((,class (:background ,accent :foreground ,white))))
   `(vertico-current ((,class (:foreground ,highlight))))
   `(vertical-border ((,class (:foreground ,border))))
   `(wgrep-file-face ((,class (:background ,yellow-c-inv :foreground ,match))))
   `(whitespace-space ((,class (:foreground ,surface))))
   `(whitespace-newline ((,class (:foreground ,surface))))

   ;; vterm
   `(vterm-color-black ((,class (:foreground ,grey-dark :background ,grey-dim))))
   `(vterm-color-red ((,class (:foreground ,red :background ,red-dark))))
   `(vterm-color-green ((,class (:foreground ,green :background ,green-muted))))
   `(vterm-color-yellow ((,class (:foreground ,yellow :background ,yellow-dark))))
   `(vterm-color-blue ((,class (:foreground ,blue :background ,blue-dark))))
   `(vterm-color-magenta ((,class (:foreground ,magenta :background ,magenta-dark))))
   `(vterm-color-cyan ((,class (:foreground ,cyan :background ,dark-cyan))))
   `(vterm-color-white ((,class (:foreground ,grey :background ,white)))))

  ;; --- Light Theme ---
  (custom-theme-set-faces
   'danneskjold-light
   `(default ((,class (:foreground ,light-fg :background ,light-bg))))
   `(button ((,class (:foreground ,accent :underline t :weight normal))))
   `(company-tooltip ((,class (:foreground ,light-fg :background ,light-surface))))
   `(company-tooltip-selection ((,class (:background ,light-golden))))
   `(company-tooltip-common ((,class (:foreground ,warning))))
   `(diredp-date-time ((,class (:foreground ,golden))))
   `(diredp-deletion ((,class (:foreground ,error :weight bold :slant italic))))
   `(diredp-file-name ((,class (:foreground ,light-fg))))
   `(font-lock-comment-face ((,class (:foreground ,light-comment))))
   `(fringe ((,class (:foreground ,light-dim))))
   `(header-line ((,class (:background ,light-bg :foreground ,light-comment :underline ,light-comment))))
   `(highlight ((,class (:background ,light-highlight :extend t))))
   `(hl-line ((,class (:background ,light-hover))))
   `(isearch ((,class (:foreground ,light-bg :background ,accent))))
   `(ivy-current-match ((,class (:weight bold :background ,light-golden))))
   `(line-number ((,class (:foreground ,light-dim))))
   `(line-number-current-line ((,class (:foreground ,prompt))))
   `(link ((,class (:foreground ,accent :underline t))))
   `(mode-line ((,class (:background ,light-bg :foreground ,light-fg))))
   `(mode-line-inactive ((,class (:background ,light-bg :foreground ,light-dim))))
   `(org-block ((,class (:extend t :background ,light-surface))))
   `(org-block-begin-line ((,class (:foreground ,light-fg :weight bold :background ,light-bg))))
   `(org-agenda-current-time ((,class (:foreground ,light-fg :weight bold))))
   `(org-ellipsis ((,class (:underline unspecified))))
   `(org-upcoming-deadline ((,class (:foreground ,magenta-dark))))
   `(tooltip ((,class (:foreground ,light-fg :background ,light-bg))))
   `(vertical-border ((,class (:foreground ,light-dim))))
   `(whitespace-space ((,class (:foreground ,light-dim))))
   `(whitespace-newline ((,class (:foreground ,light-dim))))))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'danneskjold)
;;; danneskjold-theme.el ends here
