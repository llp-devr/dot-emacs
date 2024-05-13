;;; 60-highlights.el --- Highlight everything
;;; Commentary:

;;; Code:
(use-package
 hl-todo
 :straight t
 :config
 (setq
  hl-todo-highlight-punctuation ":"
  hl-todo-keyword-faces
  `(("TODO" warning bold)
    ("FIXME" error bold)
    ("HACK" font-lock-constant-face bold)
    ("REVIEW" font-lock-keyword-face bold)
    ("NOTE" success bold)
    ("DEPRECATED" font-lock-doc-face bold)))

 :hook ((org-mode . hl-todo-mode) (prog-mode . hl-todo-mode)))

(use-package
 rainbow-delimiters
 :straight t
 :hook
 ((emacs-lisp-mode . rainbow-delimiters-mode)
  (clojure-mode . rainbow-delimiters-mode)))

(use-package
 rainbow-mode
 :straight t
 :diminish
 :hook (prog-mode . rainbow-mode))

(provide '60-highlight)

;;; 60-highlights.el ends here
