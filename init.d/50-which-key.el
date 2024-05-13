;;; 50-which-key.el --- Which Key
;;; Commentary:

;;; Code:
(use-package
 which-key
 :straight t
 :diminish
 :custom
 (which-key-side-window-location 'bottom)
 (which-key-sort-order #'which-key-key-order-alpha)
 (which-key-allow-imprecise-window-fit nil)
 (which-key-sort-uppercase-first nil)
 (which-key-add-column-padding 1)
 (which-key-max-display-columns nil)
 (which-key-min-display-lines 6)
 (which-key-side-window-slot -10)
 (which-key-side-window-max-height 0.25)
 (which-key-idle-delay 0.8)
 (which-key-max-description-length 25)
 (which-key-allow-imprecise-window-fit nil)
 (which-key-separator " → ")
 :hook (after-init . which-key-mode))

(provide '50-which-key)

;;; 50-which-key.el ends here
