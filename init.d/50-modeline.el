;;; 50-modeline.el --- Doom Modeline
;;; Commentary:

;;; Code:
(use-package
 doom-modeline
 :straight t
 :custom
 (doom-modeline-height 35)
 (doom-modeline-bar-width 5)
 (doom-modeline-persp-name t)
 (doom-modeline-persp-icon t)
 :hook (after-init . doom-modeline-mode))

(provide '50-modeline)

;;; 50-modeline.el ends here
