;; Load lisp/ path
(add-to-list 'load-path
	     (expand-file-name "lisp" user-emacs-directory))

;; Core
(require 'init-defaults)
(require 'init-packages)

;; UI & behavior
(require 'init-ui)
(when (display-graphic-p)
  (require 'init-theme))
(require 'init-fonts)
(require 'init-editing)

;; Org mode
(require 'init-org)

;; Files handling
(require 'init-files)

(require 'init-finance)

;; Versioning
(require 'init-git)

;; Language support
(require 'init-python)
(require 'init-yaml)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
