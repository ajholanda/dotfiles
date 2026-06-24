;; Better aligned, readable dired listing
(setq dired-listing-switches "-alh --group-directories-first")

;; Refresh dired automatically when files change
(setq dired-auto-revert-buffer t)
(setq dired-recursive-deletes 'top)
(setq dired-recursive-copies 'always)

;; Use a fixed-width font in dired
(add-hook 'dired-mode-hook
          (lambda ()
            (setq truncate-lines t)))

(use-package all-the-icons-dired
  :ensure t
  :hook (dired-mode . all-the-icons-dired-mode))

;; Hide boring files (cleaner listing)
(use-package dired-hide-dotfiles
  :ensure t
  :hook (dired-mode . dired-hide-dotfiles-mode))

;; Enable recent files
(recentf-mode 1)
(setq recentf-max-menu-items 30
            recentf-max-saved-items 200)

;; Startup dashboard
(add-hook 'emacs-startup-hook
   (lambda ()
   (recentf-open-files)))

(provide 'init-files)
