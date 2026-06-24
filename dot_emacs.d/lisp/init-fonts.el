;;; init-fonts.el --- Font configuration -*- lexical-binding: t; -*-

;; Font (GUI only)
;;(when (display-graphic-p)
;;   (set-face-attribute 'default nil
;;                      :family "DejaVu Sans Mono"
;;                     :height 110))

(when (display-graphic-p)
    (set-face-attribute 'default nil
                        :font "JetBrains Mono"
                        :height 120))

(when (display-graphic-p)
  (set-face-attribute 'default nil :height 140))

(provide 'init-fonts)
