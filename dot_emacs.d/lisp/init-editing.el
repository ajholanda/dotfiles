;;; init-editing.el --- Editing defaults -*- lexical-binding: t; -*-

;; ----------------------------
;; General editing behavior
;; ----------------------------

;; Use short answers: y/n instead of yes/no
(setq use-short-answers t)

;; No tabs by default
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)

;; Newline at end of file
(setq require-final-newline t)

;; Better undo behavior
(setq undo-limit        80000000   ; 80MB
      undo-strong-limit 120000000
      undo-outer-limit  120000000)

;; ----------------------------
;; Selection & clipboard
;; ----------------------------

;; Replace selection when typing
(delete-selection-mode 1)

;; Clipboard integration
(setq select-enable-clipboard t
      select-enable-primary t)

(use-package multiple-cursors
  :ensure t
  :bind (("C-S-c C-S-c" . mc/edit-lines)            ; Edit all lines in region
         ("C->"         . mc/mark-next-like-this)   ; Select next match
         ("C-<"         . mc/mark-previous-like-this) ; Select prev match
         ("C-c C-<"     . mc/mark-all-like-this)))  ; Select all matches
;; ----------------------------
;; Whitespace & formatting
;; ----------------------------

;; Show trailing whitespace in programming modes
(add-hook 'prog-mode-hook
          (lambda ()
            (setq show-trailing-whitespace t)))

;; Clean up whitespace on save (prog only)
(add-hook 'prog-mode-hook
          (lambda ()
           (add-hook 'before-save-hook
            #'delete-trailing-whitespace
            nil t)))

;; ----------------------------
;; Navigation & commands
;; ----------------------------

;; Reuse buffers for files
(setq find-file-visit-truename t)

;; Enable disabled but useful commands
(put 'narrow-to-region 'disabled nil)
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)

;; ----------------------------
;; Auto-revert & history
;; ----------------------------

;; Reload files changed on disk
(global-auto-revert-mode 1)
(setq global-auto-revert-non-file-buffers t)

;; Remember minibuffer history
(savehist-mode 1)

;; ----------------------------
;; Completion (built-in, conservative)
;; ----------------------------

;; Better minibuffer completion
(icomplete-mode 1)
(setq icomplete-delay-completions-threshold 0
      icomplete-max-delay-chars 0
      icomplete-show-matches-on-no-input t)

;; ----------------------------
;; Parentheses & pairs
;; ----------------------------

;; Auto-pair parentheses, quotes, etc.
(electric-pair-mode 1)

;; ----------------------------
;; End
;; ----------------------------

(provide 'init-editing)
