;;; 50-flycheck.el --- Flycheck
;;; Commentary:

;;; Code:
(use-package
 flycheck
 :straight t
 :diminish
 :hook (after-init . global-flycheck-mode))

(provide '50-flycheck)

;;; 50-flycheck.el ends here.
