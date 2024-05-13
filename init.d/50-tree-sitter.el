;;; 50-tree-sitter.el --- Tree Sitter
;;; Commentary:

;;; Code:
(use-package
 treesit-auto
 :straight t
 :custom (treesit-auto-install 'prompt)
 (treesit-auto-langs '(go kotlin python rust))
 (treesit-auto-add-to-auto-mode-alist '(go kotlin python rust))
 :hook (after-init . global-treesit-auto-mode))

(provide '50-tree-sitter)

;;; 50-tree-sitter.el ends here
