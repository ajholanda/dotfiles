;; init-python.el --- Python configuration

(setq python-shell-interpreter "python3")
(setq python-indent-offset 4)

(add-hook 'python-mode-hook
          (lambda ()
            (setq indent-tabs-mode nil)))

;; Virtualenv support
(use-package pyvenv
  :ensure t
  :config
  (pyvenv-mode 1))

;; Auto-completion
(use-package company
  :ensure t
  :hook (after-init . global-company-mode))

;; Linting
(use-package flymake
  :hook (python-mode . flymake-mode))

(provide 'init-python)

