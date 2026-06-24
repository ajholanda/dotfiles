;;; init-theme.el --- Theme configuration -*- lexical-binding: t; -*-

;; Disable all enabled themes first
(mapc #'disable-theme custom-enabled-themes)

;; Use a built-in theme (safe fallback)
(load-theme 'tango-dark t)

;; Optional theme tweaks
(with-eval-after-load 'tango-dark-theme
  (set-face-attribute 'region nil :background "#44475a")
  (set-face-attribute 'hl-line nil :inherit nil :background "#2a2a2a"))

(provide 'init-theme)
