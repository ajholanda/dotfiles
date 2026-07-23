(use-package hledger-mode
  :ensure t
  :mode ("\\.journal\\'" "\\.ledger\\'")
  :bind (:map hledger-mode-map
              ("C-c C-b" . hledger-balance)
              ("C-c C-r" . hledger-register)
              ("C-c C-i" . hledger-incomestatement)
              ("C-c C-s" . hledger-balancesheet))
  :config
  (setq hledger-jfile "~/MEGA/Finance/hledger/journal.ledger"))

(provide 'init-finance)
