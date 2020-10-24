(deftheme danneskjold-light "Default theme with minor improvements.")

(let ((class '((class color) (min-colors 89)))
      (zoom-in-factor 1.3))
  (custom-theme-set-faces
   'danneskjold-light
   `(org-ellipsis ((,class (:underline nil))))

   `(ivy-current-match ((,class (:weight bold))))

   `(ivy-minibuffer-match-face-1 ((,class (:foreground "black"))))
   `(ivy-minibuffer-match-face-2 ((,class (:height ,zoom-in-factor))))
   `(ivy-minibuffer-match-face-3 ((,class (:height ,zoom-in-factor))))
   `(ivy-minibuffer-match-face-4 ((,class (:height ,zoom-in-factor))))

   `(swiper-match-face-1 ((,class (:foreground "black"))))
   `(swiper-match-face-2 ((,class (:underline "red"))))
   `(swiper-match-face-3 ((,class (:underline "orange"))))
   `(swiper-match-face-4 ((,class (:underline "gold"))))

   `(line-number ((,class (:foreground "grey"))))
   `(line-number-current-line ((,class (:foreground "#749AF7"))))

     ;; dired+
     `(diredp-compressed-file-suffix ((,class (:foreground "#f39c12"))))
     `(diredp-date-time ((,class (:foreground "goldenrod1"))))
     `(diredp-deletion ((,class (:foreground "#e74c3c" :weight bold :slant italic))))
     `(diredp-deletion-file-name ((,class (:foreground "#e74c3c" :underline t))))
     `(diredp-dir-heading ((,class (:foreground "#e74c3c"))))
     `(diredp-dir-priv ((,class (:foreground "#9b59b6" :background nil))))
     `(diredp-exec-priv ((,class (:foreground "#2ecc71" :background nil))))
     `(diredp-executable-tag ((,class (:foreground "#2ecc71" :background nil))))
     `(diredp-file-name ((,class (:foreground "black"))))
     `(diredp-file-suffix ((,class (:foreground "coral"))))
     `(diredp-flag-mark ((,class (:foreground "#e74c3c" :weight bold))))
     `(diredp-flag-mark-line ((,class (:inherit highlight))))
     `(diredp-ignored-file-name ((,class (:foreground "#95a5a6"))))
     `(diredp-link-priv ((,class (:background nil :foreground "#e67e22"))))
     `(diredp-mode-line-flagged ((,class (:foreground "#f39c12"))))
     `(diredp-mode-line-marked ((,class (:foreground "#9b59b6"))))
     `(diredp-no-priv ((,class (:foreground "#95a5a6" :background nil))))
     `(diredp-number ((,class (:foreground "#f39c12"))))
     `(diredp-other-priv ((,class (:background nil :foreground "#f39c12"))))
     `(diredp-rare-priv ((,class (:foreground "#c0392b" :background nil))))
     `(diredp-read-priv ((,class (:foreground "#2980b9" :background nil))))
     `(diredp-symlink ((,class (:foreground "#e67e22"))))
     `(diredp-write-priv ((,class (:foreground "#9b59b6" :background nil))))
     `(diredp-date-time ((,class (:foreground "#749AF7"))))
     `(diredp-dir-name ((,class (:foreground "blue"))))
     `(diredp-ignored-file-name ((,class ())))
     `(diredp-compressed-file-suffix ((,class (:foreground "#ffa500"))))
     `(diredp-rainbow-media-face ((,class (:foreground "#ffcc00"))))
     `(diredp-symlink ((,class (:foreground "#ffcc00"))))
     `(diredp-number ((,class (:foreground "#ffcc00"))))
   ))

(provide-theme 'danneskjold-light)
;;; danneskjold-light-theme.el ends here