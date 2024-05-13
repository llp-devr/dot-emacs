;;; 50-company.el --- Company
;;; Commentary:

;;; Code:
(use-package
 company
 :straight t
 :diminish company-mode
 :custom
 (company-begin-commands '(self-insert-command))
 (company-idle-delay .1)
 (company-minimum-prefix-length 2)
 (company-show-numbers t)
 (company-tooltip-align-annotations 't)
 :hook (after-init-hook . global-company-mode))

(use-package
 company-box
 :straight t
 :after company
 :diminish company-box-mode
 :hook (company-mode . company-box-mode))

(provide '50-company)

;;; 50-company.el ends here
