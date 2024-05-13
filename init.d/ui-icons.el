;;; ui-icons.el --- Icons
;;; Commentary:

;;; Code:
(use-package nerd-icons :straight t)

(use-package
 nerd-icons-dired
 :straight t
 :after nerd-icons
 :hook (dired-mode . nerd-icons-dired-mode))

(use-package
 nerd-icons-completion
 :straight t
 :after nerd-icons
 :hook (after-init . nerd-icons-completion-mode))

(use-package
 nerd-icons-ibuffer
 :straight t
 :after nerd-icons
 :hook (ibuffer-mode . nerd-icons-ibuffer-mode))

(use-package
 nerd-icons-ivy-rich
 :straight t
 :after (ivy-rich nerd-icons)
 :hook
 ((after-init . nerd-icons-ivy-rich-mode)
  (after-init . ivy-rich-mode)))

(provide 'ui-icons)

;;; ui-icons.el ends here
