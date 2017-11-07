;; danneskjold-theme.el --- beautiful high-contrast theme

;; Copyright (c) 2016 Dmitry Akatov

;; Author: Dmitry Akatov <akatovda@yandex.com>
;; URL: https://github.com/rails-to-cosmos/
;; Package-Version: 20160311.458

;;; Commentary:

;;; Code:

(deftheme danneskjold
  "Amazing. Beautiful. Contrast.")

(let ((c '((class color) (min-colors 89)))
      (background     "#000000")
      (fg             "#ffffff")
      (vsubtle        "#556172")

      ;; doom-molokai-colors
      ;; https://github.com/hlissner/emacs-doom-theme/blob/master/doom-molokai-theme.el
      (black          "#000000")
      (grey           "#C0C5CF")
      (grey-.5        "#828284")
      (grey-1         "#525254")
      (grey-2         "#39393D")
      (white          "#FFFFFF")
      (yellow         "#E2C770")
      (orange         "#FD971F")
      (red            "#E74C3C")
      (magenta        "#F92672")
      (violet         "#9C91E4")
      (blue           "#268BD2")
      (blue+2         "#727280")
      (cyan           "#66D9EF")
      (green          "#B6E63E")
      (green-3        "#86B20E")
      (dark-cyan      "#8FA1B3")


      ;; danneskjold-colors
      (frost          "#D0E1F9" )
      (comment        "#8593AE")
      (anthracite     "#3a3f4b")
      (sbt-midnight   "#282c34")
      (ada-midnight   "#21252b")
      (sunrise        "#FFDB45")
      (saffron        "#F9BA32")
      (orange-sat     "#FF9009")
      (spring-flower  "#B3DE81")
      (summer-flower  "#013220")
      (twitter        "#4CB5F5")
      (diredcl        "#749AF7")
      (dvi            "DarkViolet")
      (waddles        "#FF87BA")
      (krayola        "#E38B75")
      (santa          "#F34A4A")
      (red-forest     "#8b0000"))

  (let* ((search-bg      green)
         (search-fg      black)
         (search-rest-bg violet)
         (search-rest-fg black)
         (highlight      orange)
         (vertical-bar   grey-2)
         (current-line   "#1F1F1F")
         (selection      "#535556")
         (builtin        orange)
         (comments       grey-1)
         (constants      green)
         (delimiters     "#c0c5ce")
         (functions      cyan)
         (keywords       magenta)
         (methods        dark-cyan)
         (operators      violet)
         (type           cyan)
         (strings        green)
         (variables      orange)

         (error-highlight red)

         (linum-bg       current-line)
         (linum-fg       "#3F3F48")
         (linum-hl-fg    orange)
         (linum-hl-bg    current-line)

         (active-minibuffer "#404046")
         (modeline-fg    white)
         (modeline-fg-2  orange)
         (modeline-fg-3  orange)
         (modeline-fg-inactive  "#80858F")
         (modeline-bg    grey-2)
         (modeline-bg-2  grey-2)
         (modeline-bg-3  grey-2)
         (modeline-bg-inactive  current-line)

         (vc-modified    grey-2)
         (vc-added       green-3)
         (vc-deleted     red))

    (custom-theme-set-faces
     'danneskjold
     `(default ((,c (:foreground ,fg :background ,background))))
     `(fringe ((,c (:background ,background))))
     `(region ((,c (:background ,anthracite))))
     `(button ((,c (:foreground ,frost :underline t :weight normal))))
     `(link ((,c (:foreground ,frost :underline t))))
     `(menu ((,c (:foreground ,fg :background ,ada-midnight))))

     `(show-paren-match ((,c (:background ,twitter :foreground ,white))))

     `(font-lock-string-face ((,c (:foreground ,spring-flower))))
     `(font-lock-doc-face ((,c (:foreground ,spring-flower))))
     `(font-lock-builtin-face ((,c (:foreground ,twitter))))
     `(font-lock-variable-name-face ((,c (:foreground ,fg))))
     `(font-lock-keyword-face ((,c (:foreground ,frost))))
     `(font-lock-comment-face ((,c (:foreground ,comment))))
     `(font-lock-comment-delimiter-face ((,c (:foreground ,anthracite))))
     `(font-lock-function-name-face ((,c (:foreground ,saffron))))
     `(font-lock-type-face ((,c (:foreground ,orange-sat))))
     `(font-lock-constant-face ((,c (:foreground ,sunrise))))

     `(mmm-default-submode-face ((,c (:background ,ada-midnight))))

     `(header-line ((,c (:background ,background
                                    :foreground ,comment
                                    :underline ,comment
                                    :weight normal))))

     ;; Mode-line
     `(mode-line ((,c (:background ,ada-midnight
                                  :foreground ,comment
                                  :box ,(list
                                         :line-width 4
                                         :color ada-midnight)))))
     `(mode-line-inactive ((,c (:background ,sbt-midnight
                                           :foreground ,comment
                                           :box ,(list
                                                  :line-width 4
                                                  :color sbt-midnight)))))
     `(mode-line-buffer-id ((,c (:foreground ,frost))))

     `(font-lock-warning-face ((,c (:underline (:color ,santa :style wave)))))
     `(compilation-error ((,c (:background ,santa))))
     `(compilation-warning ((,c (:underline (:color ,santa :style wave)))))
     `(compilation-info ((,c (:foreground ,spring-flower))))
     `(highlight ((,c (:background ,ada-midnight :foreground ,frost))))

     ;; Linum
     `(linum ((,c (:foreground ,anthracite))))

     `(widget-field ((,c (:foreground ,fg :background ,sbt-midnight))))
     `(widget-button ((,c (:foreground ,saffron))))

     ;; Highlight quoted mode-line
     `(highlight-quoted-symbol ((,c (:foreground ,waddles))))
     `(highlight-symbol-face ((,c (:foreground ,background :background ,diredcl))))

     ;; Hl-line and hlinum-activate
     `(linum-highlight-face ((,c (:foreground ,anthracite :background ,ada-midnight :weight bold))))
     `(hl-line ((,c (:foreground ,fg :background ,diredcl))))

     ;; Diff
     `(diff-header ((,c (:foreground ,sunrise))))
     `(diff-file-header ((,c (:foreground ,sunrise))))
     `(diff-indicator-removed ((,c (:foreground ,background))))
     `(diff-removed ((,c (:foreground ,santa))))
     `(diff-added ((,c (:foreground ,spring-flower))))
     `(diff-indicator-added ((,c (:foreground ,background))))
     `(diff-refine-removed ((,c (:foreground ,red-forest))))
     `(diff-refine-added ((,c (:foreground ,summer-flower))))

     `(diff-context ((,c (:foreground ,comment))))

     ;; Magit
     `(magit-diff-added ((,c (:foreground ,spring-flower))))
     `(magit-diff-added-highlight ((,c (:foreground ,spring-flower))))
     `(magit-diff-removed ((,c (:foreground ,santa))))
     `(magit-diff-removed-highlight ((,c (:foreground ,santa))))
     `(magit-diff-context ((,c (:background ,background :foreground ,frost))))
     `(magit-diff-context-highlight ((,c (:background ,background :foreground ,frost))))
     `(magit-section-highlight ((,c (:background ,background))))
     `(magit-section-heading ((,c (:foreground ,sunrise :inherit nil))))
     `(magit-diff-hunk-heading ((,c (:foreground ,twitter :background ,sbt-midnight))))
     `(magit-diff-hunk-heading-highlight ((,c (:foreground ,twitter :background ,sbt-midnight))))
     `(magit-diff-lines-heading ((,c (:foreground ,frost :background ,sbt-midnight))))
     `(magit-blame-heading ((,c (:foreground ,twitter :background ,sbt-midnight))))
     `(magit-diff-lines-heading ((,c (:foreground ,orange :background ,sbt-midnight))))
     `(magit-diff-lines-boundary ((,c (:foreground ,fg :background ,sbt-midnight))))
     `(magit-diff-hunk-heading-highlight ((,c (:foreground ,fg :background ,sbt-midnight))))

     ;; Org-mode
     `(org-tag                      ((,c (:foreground ,yellow :bold nil))))
     `(org-ellipsis                 ((,c (:inherit hs-face :underline nil))))
     `(org-link                     ((,c (:foreground ,frost :underline ,diredcl))))
     `(org-hide                     ((,c (:foreground ,background))))
     `(org-table                    ((,c (:foreground ,yellow))))
     `(org-quote                    ((,c (:slant italic :foreground ,grey :background ,current-line))))
     `(org-document-info            ((,c (:foreground ,orange))))
     `(org-document-info-keyword    ((,c (:foreground ,grey-1))))
     `(org-meta-line                ((,c (:foreground ,comment))))
     `(org-block-begin-line         ((,c (:foreground ,vsubtle))))
     `(org-block-end-line           ((,c (:inherit org-block-begin-line))))
     `(org-block-background         ((,c (:background ,current-line))))
     `(org-archived                 ((,c (:foreground ,grey-.5))))
     `(org-document-title           ((,c (:foreground ,twitter))))
     `(org-level-1                  ((,c (:foreground ,santa))))
     `(org-level-2                  ((,c (:foreground ,spring-flower))))
     `(org-level-3                  ((,c (:foreground ,twitter))))
     `(org-level-4                  ((,c (:foreground ,frost))))
     `(org-level-5                  ((,c (:foreground ,fg))))
     `(org-level-6                  ((,c (:foreground ,fg))))
     `(org-code                     ((,c (:foreground ,orange))))
     `(org-column                   ((,c (:background ,background))))
     `(org-column-title             ((,c (:background ,background :foreground ,comment))))
     `(org-verbatim                 ((,c (:foreground ,diredcl))))
     `(org-formula                  ((,c (:foreground ,orange))))
     `(org-list-dt                  ((,c (:foreground ,orange))))
     `(org-footnote                 ((,c (:foreground ,orange))))

     `(org-date                     ((,c (:foreground ,violet))))
     `(org-todo                     ((,c (:foreground ,yellow))))
     `(org-done                     ((,c (:foreground ,green))))
     `(org-headline-done            ((,c (:foreground ,grey-.5 :strike-through t :bold nil))))
     `(org-special-keyword          ((,c (:foreground ,orange))))
     `(org-checkbox-statistics-todo ((,c (:inherit org-todo))))
     `(org-checkbox-statistics-done ((,c (:inherit org-done))))

     `(org-habit-clear-face ((,c (:background ,background :foreground ,frost :underline t))))
     `(org-habit-clear-future-face ((,c (:background ,background :underline t :foreground ,frost))))
     `(org-habit-ready-face ((,c (:background ,background :foreground ,green :underline t))))
     `(org-habit-ready-future-face ((,c (:background ,background :underline t :foreground ,green))))

     `(org-habit-alert-face ((,c (:background ,background :underline t :foreground ,yellow))))
     `(org-habit-alert-future-face ((,c (:background ,background :underline t :foreground ,yellow))))
     `(org-habit-overdue-face ((,c (:background ,background :underline t :foreground ,red))))
     `(org-habit-overdue-future-face ((,c (:background ,background :underline t :foreground ,red))))

     `(org-scheduled-today ((,c (:foreground ,green))))
     `(org-scheduled-previously ((,c (:foreground ,orange))))
     `(org-time-grid ((,c (:foreground ,comment))))
     `(org-agenda-date ((,c (:foreground ,blue))))
     `(org-agenda-dimmed-todo-face ((,c (:foreground ,comment))))
     `(org-agenda-date-today ((,c (:foreground ,red))))
     `(org-agenda-structure ((,c (:foreground ,violet))))
     `(org-upcoming-deadline ((,c (:foreground ,violet))))

     `(secondary-selection ((,c (:background ,sbt-midnight))))

     ;; Hi
     `(hi-green-b ((,c (:foreground ,spring-flower))))
     `(hi-yellow-b ((,c (:foreground ,sunrise))))
     `(hi-yellow ((,c (:foreground ,background :background ,yellow))))
     `(hi-red-b ((,c (:foreground ,santa))))

     ;; Wgrep
     `(wgrep-face                  ((,c (:foreground ,saffron))))
     `(wgrep-done-face                  ((,c (:foreground ,green))))
     `(wgrep-reject-face                  ((,c (:foreground ,santa))))

     ;; Perspeen
     `(perspeen-selected-face ((,c (:foreground ,frost))))

     ;; Powerline
     `(powerline-active1 ((,c (:foreground ,sunrise))))
     `(powerline-active2 ((,c (:foreground ,comment))))
     `(powerline-inactive1 ((,c (:foreground ,comment))))
     `(powerline-inactive2 ((,c (:foreground ,comment))))

     ;; Prodigy
     `(prodigy-red-face ((,c (:foreground ,santa))))
     `(prodigy-green-face ((,c (:foreground ,spring-flower))))
     `(prodigy-yellow-face ((,c (:foreground ,sunrise))))

     ;; Jabber
     `(jabber-title-large ((,c (:foreground ,sunrise))))
     `(jabber-title-medium ((,c (:foreground ,sunrise))))
     `(jabber-title-small ((,c (:foreground ,sunrise))))
     `(jabber-chat-prompt-local ((,c (:foreground ,frost))))
     `(jabber-chat-prompt-foreign ((,c(:foreground ,sunrise))))
     `(jabber-roster-user-xa ((,c (:foreground ,saffron))))
     `(jabber-roster-user-online ((,c (:foreground ,spring-flower))))
     `(jabber-roster-user-offline ((,c (:foreground ,comment))))
     `(jabber-roster-user-away ((,c (:foreground ,frost))))
     `(jabber-rare-time-face ((,c (:foreground ,sbt-midnight))))

     ;; SQL*Plus
     `(sqlplus-table-head-face ((,c (:foreground ,sunrise))))
     `(sqlplus-table-even-rows-face ((,c (:foreground ,fg :background ,ada-midnight))))
     `(sqlplus-table-odd-rows-face ((,c (:foreground ,fg))))

     ;; Rainbow-delimiters
     `(rainbow-delimiters-depth-1-face ((,c (:foreground ,spring-flower))))
     `(rainbow-delimiters-depth-2-face ((,c (:foreground ,santa))))
     `(rainbow-delimiters-depth-3-face ((,c (:foreground ,frost))))
     `(rainbow-delimiters-depth-4-face ((,c (:foreground ,saffron))))
     `(rainbow-delimiters-depth-5-face ((,c (:foreground ,waddles))))
     `(rainbow-delimiters-depth-6-face ((,c (:foreground ,frost))))
     `(rainbow-delimiters-depth-7-face ((,c (:foreground ,spring-flower))))
     `(rainbow-delimiters-depth-8-face ((,c (:foreground ,santa))))
     `(rainbow-delimiters-depth-9-face ((,c (:foreground ,frost))))
     `(rainbow-delimiters-depth-10-face ((,c (:foreground ,saffron))))

     ;; Company-mode
     `(company-tooltip ((,c (:foreground ,fg :background ,ada-midnight))))
     `(company-tooltip-selection ((,c (:foreground ,fg :background ,sbt-midnight))))
     `(company-scrollbar-fg ((,c (:background ,ada-midnight))))
     `(company-scrollbar-bg ((,c (:background ,sbt-midnight))))
     `(company-tooltip-common ((,c (:foreground ,saffron))))
     `(company-preview ((,c (:background ,sbt-midnight))))
     `(company-preview-common ((,c (:background ,sbt-midnight :foreground ,santa))))
     `(company-mouse ((,c (:background ,ada-midnight))))

     ;; Elfeed
     `(elfeed-search-feed-face ((,c (:foreground ,comment))))
     `(elfeed-search-tag-face ((,c (:foreground ,spring-flower))))
     `(elfeed-search-unread-title-face ((,c (:foreground ,fg))))
     `(elfeed-search-date-face ((,c (:foreground ,diredcl))))

     ;; Flycheck
     `(flycheck-warning ((,c (:underline (:color ,santa :style wave)))))

     ;; js2-mode
     `(js2-function-param ((,c (:foreground ,saffron))))

     ;; message
     `(message-header-name ((,c (:foreground ,comment))))
     `(message-header-subject ((,c (:foreground ,fg))))
     `(message-header-to ((,c (:foreground ,fg))))
     `(message-header-other ((,c (:foreground ,fg))))
     `(shr-link ((,c (:foreground ,frost :underline t))))

     ;; erc
     `(erc-timestamp-face ((,c (:foreground ,santa))))
     `(erc-prompt-face ((,c (:foreground ,spring-flower))))
     `(erc-nick-default-face ((,c (:foreground ,frost))))
     `(erc-notice-face ((,c (:foreground ,waddles))))
     `(erc-button ((,c (:foreground ,frost))))
     `(erc-current-nick-face ((,c (:foreground ,santa))))

     ;; eshell
     `(eshell-prompt ((,c (:foreground ,santa))))
     `(eshell-ls-executable ((,c (:foreground ,spring-flower))))
     `(eshell-ls-directory ((,c (:foreground ,twitter))))
     `(eshell-ls-symlink ((,c (:foreground ,waddles))))
     `(eshell-ls-readonly ((,c (:foreground ,anthracite))))
     `(eshell-ls-missing ((,c (:foreground ,santa))))
     `(eshell-ls-special ((,c (:foreground ,comment :underline t))))

     ;; dired
     `(dired-directory ((,c (:foreground ,twitter))))
     `(dired-git-face ((,c (:foreground ,santa))))
     `(dired-ignored ((,c (:foreground ,anthracite))))
     `(dired-filetype-omit ((,c (:foreground ,anthracite))))
     `(dired-filetype-common ((,c (:foreground ,saffron))))
     `(dired-filetype-execute ((,c (:foreground ,spring-flower))))
     `(dired-filetype-source ((,c (:foreground ,orange-sat))))
     `(dired-filetype-plain ((,c (:foreground ,comment))))
     `(dired-filetype-link ((,c (:foreground ,twitter :underline t))))
     `(dired-flagged ((,c (:foreground ,santa :underline t))))
     `(dired-marked ((,c (:foreground ,saffron :underline t))))
     `(dired-subtree-depth-1-face ((,c (:background ,background))))
     `(dired-subtree-depth-2-face ((,c (:background ,background))))
     `(dired-subtree-depth-3-face ((,c (:background ,background))))
     `(dired-subtree-depth-4-face ((,c (:background ,background))))
     `(dired-subtree-depth-5-face ((,c (:background ,background))))
     `(dired-subtree-depth-6-face ((,c (:background ,background))))
     `(dired-subtree-depth-7-face ((,c (:background ,background))))
     `(dired-subtree-depth-8-face ((,c (:background ,background))))
     `(dired-subtree-depth-9-face ((,c (:background ,background))))

   ;;; dired+
     `(diredp-dir-heading ((,c (:foreground ,santa))))
     `(diredp-dir-name ((,c (:foreground ,twitter))))
     `(diredp-file-name ((,c (:foreground ,frost))))
     `(diredp-file-suffix ((,c (:foreground ,frost))))
     `(diredp-ignored-file-name ((,c (:foreground ,comment))))
     `(diredp-symlink ((,c (:foreground ,waddles))))
     `(diredp-number ((,c (:foreground ,saffron))))

     `(diredp-dir-priv ((,c (:foreground ,twitter))))
     `(diredp-read-priv ((,c (:foreground ,santa))))
     `(diredp-write-priv ((,c (:foreground ,sunrise))))
     `(diredp-exec-priv ((,c (:foreground ,spring-flower))))
     `(diredp-no-priv ((,c (:foreground ,fg))))
     `(diredp-rare-priv ((,c (:foreground ,waddles))))
     `(diredp-flag-mark ((,c (:foreground ,background))))
     `(diredp-flag-mark-line ((,c (:foreground ,background :background ,sunrise))))
     `(diredp-mode-line-marked ((,c (:foreground ,sunrise))))
     `(diredp-deletion ((,c (:foreground ,background :background ,santa))))
     `(diredp-deletion-file-name ((,c (:foreground ,background :background ,santa))))
     `(diredp-mode-line-flagged ((,c (:foreground ,santa))))

     ;; ido
     `(minibuffer-prompt ((,c (:foreground ,diredcl))))
     `(ido-first-match ((,c (:bold t :foreground ,fg))))
     `(ido-only-match ((,c (:bold t :foreground ,fg))))
     `(ido-subdir ((,c (:foreground ,frost))))
     `(ido-virtual ((,c (:foreground ,comment))))
     `(ido-vertical-match-face ((,c (:underline ,diredcl))))

     ;; ivy
     `(ivy-current-match ((,c (:bold t :foreground ,fg))))
     `(ivy-prompt-match ((,c (:bold t :foreground ,fg))))
     `(ivy-confirm-face ((,c (:underline ,diredcl))))
     `(ivy-virtual ((,c (:foreground ,violet))))
     `(ivy-action ((,c (:foreground ,yellow))))
     `(ivy-highlight-face ((,c (:foreground ,orange))))
     `(ivy-minibuffer-match-face-1 ((,c (:underline ,vsubtle))))
     `(ivy-minibuffer-match-face-2 ((,c (:underline ,yellow))))
     `(ivy-minibuffer-match-face-3 ((,c (:underline ,orange))))
     `(ivy-minibuffer-match-face-4 ((,c (:underline ,red))))

     ;; vertical-border
     `(vertical-border ((,c (:foreground "#282a2e"))))

     ;; yas
     `(yas-field-highlight-face ((,c (:background ,ada-midnight))))

     ;; hackernews
     `(hackernews-score-face ((,c (:foreground ,fg))))
     `(hackernews-link-face ((,c (:foreground ,spring-flower))))
     `(hackernews-comment-count-face ((,c (:foreground ,santa)))))))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
	       (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'danneskjold)
;;; danneskjold-theme.el ends here
