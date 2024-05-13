;;; 50-all-the-icons.el --- All The Icons
;;; Commentary:

;;; Code:

(use-package all-the-icons :straight t :if (display-graphic-p))

(use-package
 all-the-icons-dired
 :straight t
 :hook (dired-mode . all-the-icons-dired-mode))

(use-package
 all-the-icons-ivy-rich
 :straight t
 :hook (ivy-rich-mode . all-the-icons-ivy-rich-mode))

(provide '50-all-the-icons)

;;; 50-all-the-icons.el ends here
