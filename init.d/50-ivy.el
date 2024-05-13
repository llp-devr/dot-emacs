;;; 50-ivy.el --- Ivy
;;; Commentary:

;;; Code:
(use-package
 counsel
 :straight t
 :after ivy
 :diminish counsel-mode
 :hook (ivy-mode . counsel-mode)
 :custom (ivy-initial-inputs-alist nil))

(use-package
 ivy
 :straight t
 :bind
 ;; ivy-resume resumes the last Ivy-based completion.
 (("C-c C-r" . ivy-resume) ("C-x B" . ivy-switch-buffer-other-window))
 :diminish ivy-mode
 :custom
 (ivy-use-virtual-buffers t)
 (ivy-count-format "(%d/%d) ")
 (enable-recursive-minibuffers t)
 :hook (after-init-hook . ivy-mode))

(use-package
 ivy-rich
 :straight t
 :after (ivy nerd-icons-ivy-rich)
 :hook (ivy-mode . ivy-rich-mode)
 :custom
 (ivy-virtual-abbreviate 'full)
 (ivy-rich-switch-buffer-align-virtual-buffer t)
 (ivy-rich-path-style 'abbrev)
 :config
 (ivy-set-display-transformer
  'ivy-switch-buffer 'ivy-rich-switch-buffer-transformer))

(provide '50-ivy)

;;; 50-ivy.el ends here
