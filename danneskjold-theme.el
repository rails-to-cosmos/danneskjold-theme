;;; danneskjold-theme.el --- beautiful high-contrast theme  -*- lexical-binding: t; -*-

;; Copyright (c) 2016-2026 Dmitry Akatov
;; Author: Dmitry Akatov <dmitry.akatov@protonmail.com>
;; URL: https://github.com/rails-to-cosmos/danneskjold-theme
;; Package-Version: 1.1.0

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

(defun danneskjold-invert-color (color)
  "Invert a hex COLOR string using Emacs' built-in color manipulation."
  (let ((rgb (color-name-to-rgb color)))
    (if rgb
        (apply #'color-rgb-to-hex
               (mapcar (lambda (c) (- 1.0 c)) rgb))
      (error "Invalid color: %s" color))))

;; Define shared variables for the dark theme
(let* ((class '((class color) (min-colors 89)))
       ;; Core Palette
       (background "#000000")
       (foreground "#FFFFFF")
       (black      "#000000")
       (white      "#FFFFFF")
       (grey       "#C0C5CF")
       (grey-1     "#525254")
       (grey-2     "#39393D")

       ;; Accent Palette
       (yellow     "#FFCC00")
       (yellow-c   "#281580")
       (orange     "#FFA500")
       (red        "#E74C3C")
       (magenta    "#F92672")
       (violet     "#7B68EE")
       (blue       "#4CB5F5")
       (cyan       "#66D9EF")
       (green      "#B6E63E")
       (green-3    "#86B20E")
       (dark-cyan  "#8FA1B3")

       ;; Specialized Colors
       (frost      "#D0E1F9")
       (invisible  "#2B4B6E")
       (comment    "#A4C2EB")
       (waddles    "#FF87BA")
       (diredcl    "#749AF7")
       (ada-midnight "#21252B")
       (sbt-midnight "#282C34")
       (hl-dark    "#1.1.0F")
       (teal       "#1ABC9C")
       (region-bg  "#373D4F")
       (border     "#223959")
       (golden     "#FFCA00")
       (golden-bright "#FFD600")

       ;; Component Mappings
       (green-bright "#2ECC71")
       (green-dark   "#27AE60")
       (blue-bright  "#3498DB")
       (blue-dark    "#2980B9")
       (red-bright   "#E74C3C")
       (red-dark     "#C0392B")
       (orange-bright "#E67E22")
       (yellow-bright "#F1C40F")
       (yellow-dark   "#F39C12")
       (magenta-bright "#9B59B6")
       (magenta-dark   "#8E44AD")
       (grey-bright1 "#BDC3C7")
       (grey-bright2 "#ECF0F1")
       (grey-dark1   "#95A5A6")
       (grey-dark2   "#7F8C8D")

       ;; Semantic Aliases
       (success    green)
       (warning    yellow)
       (error      red)
       (info       blue)
       (accent     blue)
       (muted      grey-1)
       (subtle     invisible)
       (dimmed     grey-dark2)
       (highlight  golden)
       (match      yellow)
       (addition   green-dark)
       (deletion   red-dark)
       (modified   yellow-dark)
       (link       frost)
       (prompt     diredcl)
       (selection  region-bg)
       (hover      hl-dark)
       (surface    ada-midnight)
       (surface-alt sbt-midnight))

  ;; --- Dark Theme Face Definitions ---
  (custom-theme-set-faces
   'danneskjold
   `(default ((,class (:foreground ,foreground :background ,black))))
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
   `(diredp-file-name ((,class (:foreground ,foreground))))
   `(font-lock-builtin-face ((,class (:foreground ,accent))))
   `(font-lock-comment-face ((,class (:foreground ,comment))))
   `(font-lock-constant-face ((,class (:foreground ,warning))))
   `(font-lock-function-name-face ((,class (:foreground ,warning))))
   `(font-lock-keyword-face ((,class (:foreground ,link))))
   `(font-lock-string-face ((,class (:foreground ,success))))
   `(font-lock-type-face ((,class (:foreground ,orange))))
   `(font-lock-variable-name-face ((,class (:foreground ,foreground))))
   `(fringe ((,class (:foreground ,subtle))))
   `(header-line ((,class (:background ,black :foreground ,comment :underline ,comment))))
   `(highlight ((,class (:background ,subtle :foreground ,black))))
   `(hl-line ((,class (:background ,hover))))
   `(isearch ((,class (:foreground ,black :background ,subtle))))
   `(lazy-highlight ((,class (:foreground ,black :background ,match))))
   `(line-number ((,class (:foreground ,subtle))))
   `(line-number-current-line ((,class (:foreground ,foreground))))
   `(link ((,class (:foreground ,link :underline t))))
   `(magit-branch-local ((,class (:foreground ,teal))))
   `(minibuffer-prompt ((,class (:foreground ,prompt))))
   `(mode-line ((,class (:background ,black :foreground ,yellow-bright))))
   `(mode-line-inactive ((,class (:background ,black :foreground ,subtle))))
   `(org-done ((,class (:foreground ,success))))
   `(org-todo ((,class (:foreground ,warning))))
   `(org-table ((,class (:foreground ,warning))))
   `(org-level-1 ((,class (:foreground ,foreground :bold t))))
   `(rainbow-delimiters-depth-1-face ((,class (:foreground ,success))))
   `(rainbow-delimiters-depth-2-face ((,class (:foreground ,error))))
   `(region ((,class (:background ,selection))))
   `(show-paren-match ((,class (:background ,accent :foreground ,foreground))))
   `(vertical-border ((,class (:foreground ,border))))
   `(wgrep-file-face ((,class (:background ,(danneskjold-invert-color yellow-c) :foreground ,match))))
   `(whitespace-space ((,class (:foreground ,surface))))
   `(whitespace-newline ((,class (:foreground ,surface))))

   `(org-priority ((,class (:foreground ,foreground)))) ;; Default
   `(org-priority-highest ((,class (:foreground ,error :bold t))))  ; [#A]
   `(org-priority-medium ((,class (:foreground ,warning))))         ; [#B]
   `(org-priority-lowest ((,class (:foreground ,addition))))        ; [#C]
   `(org-ellipsis ((,class (:inherit hs-face :underline unspecified))))

   `(vertico-current ((,class (:foreground ,highlight))))

   ;; vterm
   `(vterm-color-black ((,class (:foreground ,grey-2 :background ,grey-1))))
   `(vterm-color-red ((,class (:foreground ,red :background ,red-dark))))
   `(vterm-color-green ((,class (:foreground ,green :background ,green-3))))
   `(vterm-color-yellow ((,class (:foreground ,yellow :background ,yellow-dark))))
   `(vterm-color-blue ((,class (:foreground ,blue :background ,blue-dark))))
   `(vterm-color-magenta ((,class (:foreground ,magenta :background ,magenta-dark))))
   `(vterm-color-cyan ((,class (:foreground ,cyan :background ,dark-cyan))))
   `(vterm-color-white ((,class (:foreground ,grey :background ,white)))))

  ;; --- Light Theme Face Definitions ---
  (custom-theme-set-faces
   'danneskjold-light
   `(default ((t (:foreground "black" :background "white"))))
   `(org-block ((t (:extend t :background "ghost white"))))
   `(org-upcoming-deadline ((t (:foreground "purple3"))))
   `(company-tooltip-selection ((t (:background ,golden-bright))))
   `(diredp-date-time ((t (:foreground "goldenrod1"))))
   `(diredp-deletion ((t (:foreground ,error :weight bold :slant italic))))
   `(diredp-file-name ((t (:foreground "black"))))
   `(font-lock-comment-face ((t (:foreground ,dimmed))))
   `(highlight ((t (:background "honeydew" :extend t))))
   `(hl-line ((t (:background "gray98"))))
   `(ivy-current-match ((t (:weight bold :background ,golden-bright))))
   `(line-number ((t (:foreground "grey"))))
   `(line-number-current-line ((t (:foreground ,prompt))))
   `(mode-line-buffer-read-only-face ((t (:foreground "brown4"))))
   `(org-agenda-current-time ((t (:foreground "black" :weight bold))))
   `(org-block-begin-line ((t (:foreground "black" :weight bold :background "white"))))
   `(org-ellipsis ((t (:underline unspecified))))
   `(tooltip ((t (:foreground "black" :background "white"))))))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'danneskjold)
;;; danneskjold-theme.el ends here
