;;; 50-dired.el --- Dired
;;; Commentary:

;;; Code:
(use-package
 dirvish
 :straight t
 :hook (dired-mode . dirvish-override-dired-mode))

(provide '50-dired)

;;; 50-dired.el ends here.
