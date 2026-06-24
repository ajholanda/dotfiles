;;; init-ui.el --- UI defaults -*- lexical-binding: t; -*-

;; ----------------------------
;; Frame & window behavior
;; ----------------------------

;; No startup screen handled elsewhere, but safe here
(setq inhibit-startup-screen t)

;; Disable UI chrome early (GUI-safe)
(when (fboundp 'menu-bar-mode)   (menu-bar-mode -1))
(when (fboundp 'tool-bar-mode)   (tool-bar-mode -1))
(when (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

;; Better window splitting
(setq split-height-threshold nil
            split-width-threshold  80)

;; ----------------------------
;; Visual feedback
;; ----------------------------

;; Highlight current line
(global-hl-line-mode 1)
(set-face-background 'hl-line "gray10")

;; Show matching parentheses
(show-paren-mode 1)
(setq show-paren-delay 0)

;; Visual bell instead of audible
(setq ring-bell-function 'ignore)

;; ----------------------------
;; Line numbers
;; ----------------------------

;; Use modern line numbers (Emacs 26+)
;;(setq display-line-numbers-type 'relative)

;; Force line numbers to use the default fixed-pitch font
(set-face-attribute 'line-number nil :inherit 'fixed-pitch)

;; Optional: Force the current line number to match as well
(set-face-attribute 'line-number-current-line nil :inherit 'fixed-pitch)

(global-display-line-numbers-mode 1)

;;(add-hook 'prog-mode-hook #'display-line-numbers-mode)
;;(add-hook 'text-mode-hook #'display-line-numbers-mode)

;; Disable line numbers in some modes
(dolist (mode '(term-mode
                 shell-mode
                 eshell-mode
                 vterm-mode
                 dired-mode))
    (add-hook (intern (format "%s-hook" mode))
              (lambda () (display-line-numbers-mode 0))))

;; ----------------------------
;; Cursor & scrolling
;; ----------------------------

;; Smooth-ish scrolling (built-in)
(setq scroll-margin 5
      scroll-conservatively 101
      mouse-wheel-scroll-amount '(1 ((shift) . 1))
      mouse-wheel-progressive-speed nil)

;; Blinking cursor is distracting
(blink-cursor-mode 0)

;; ----------------------------
;; Mode line
;; ----------------------------

;; Show column number
(column-number-mode 1)

;; Clean mode-line (no date/time junk)
(setq display-time-day-and-date nil)
(display-time-mode 0)

;; Maximize screen
(add-hook 'window-setup-hook #'toggle-frame-maximized)

;; ----------------------------
;; End
;; ----------------------------

(provide 'init-ui)
