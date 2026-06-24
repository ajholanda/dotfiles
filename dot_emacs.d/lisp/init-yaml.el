;;; init-yaml.el --- YAML support -*- lexical-binding: t; -*-

(use-package yaml-mode
  :mode "\\.ya?ml\\'"
  :hook (yaml-mode . (lambda ()
                      (setq yaml-indent-offset 2))))

(provide 'init-yaml)

