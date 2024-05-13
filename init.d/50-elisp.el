;;; 50-elisp.el --- Elisp
;;; Commentary:

;;; Code:
(use-package
 elisp-autofmt
 :straight t
 :commands (elisp-autofmt-mode elisp-autofmt-buffer)
 :hook (emacs-lisp-mode . elisp-autofmt-mode)
 :custom (elisp-autofmt-python-bin python-bin))

(provide '50-elisp)

;;; 50-elisp.el ends here.
