;;; 80-shell.el --- Shell
;;; Commentary:

;;; Code:
(use-package eshell-syntax-highlighting
  :straight t
  :after eshell-mode
  :hook
  (after-init . eshell-syntax-highlighting-global-mode))

(provide '80-shell)

;;; 80-shell.el ends here
