;; init-org.el --- Basic Org-mode config

(require 'org)

(setq org-directory
      (pcase system-name
        ("AHOLANDA" "F:/Meu Drive/Org")
        ("AJH-LAPTOP" "G:/Meu Drive/Org")
        (_ "~/org")))

(setq org-default-notes-file (expand-file-name "inbox.org" org-directory)
      org-startup-indented t
      org-hide-emphasis-markers t
      org-ellipsis " ▾"
      org-return-follows-link t
      org-src-fontify-natively t
      org-src-tab-acts-natively t
      org-edit-src-content-indentation 0
      org-log-done 'time
      org-log-into-drawer t
      org-agenda-files (list org-directory))

(setq org-todo-keywords
      '((sequence "TODO(t)" "NEXT(n)" "WAIT(w)" "|" "DONE(d)" "CANCELED(c)")))

(setq org-capture-templates
      '(("t" "Todo" entry
         (file org-default-notes-file)
         "* TODO %?\n  %U\n  %a")
        ("n" "Note" entry
         (file+headline org-default-notes-file "Notes")
         "* %?\n  %U\n")))

(global-set-key (kbd "C-c c") #'org-capture)
(global-set-key (kbd "C-c a") #'org-agenda)

;; Org clock
(setq org-clock-persist 'history
      org-clock-in-resume t
      org-clock-out-remove-zero-time-clocks t
      org-clock-into-drawer t
      org-clock-mode-line-total 'today
      org-clock-idle-time 15)

(org-clock-persistence-insinuate)

(setq org-clock-in-switch-to-state "NEXT"
      org-clock-out-switch-to-state "WAIT")

;; EOF
(provide 'init-org)
