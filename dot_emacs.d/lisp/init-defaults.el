;;; init-defaults.el --- sane defaults -*- lexical-binding: t; -*-

(setq inhibit-startup-screen t
      ring-bell-function 'ignore
      make-backup-files nil
      auto-save-default nil
      use-short-answers t)

;; UTF-8 everywhere
(set-language-environment "UTF-8")
(set-default-coding-systems 'utf-8)

;; Auto-reload files
(global-auto-revert-mode 1)

;; Use eat as terminal emulator.
(use-package eat
  :ensure t
  :bind (("C-c t" . eat)) ; Quick access to a terminal
  :config
  ;; Windows-specific shell setup
  (when (eq system-type 'windows-nt)
    (setq eat-shell "C:/Program Files/PowerShell/7/pwsh.exe"))

  ;; Quality of life settings
  (setq eat-kill-buffer-on-exit t)

  ;; Integration with project.el
  (setq eat-enable-project-terminal t))


(provide 'init-defaults)
