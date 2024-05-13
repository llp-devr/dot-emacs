;;; 70-kotlin.el --- Kotlin
;;; Commentary:

;;; Code:
(use-package
 kotlin-ts-mode
 :straight t
 :mode
 (("\\.kt\\'" . kotlin-ts-mode) ("\\.kts\\'" . kotlin-ts-mode))
 :hook (kotlin-ts-mode . lsp))

(use-package
 flycheck-kotlin
 :straight t
 :after (flycheck kotlin-ts-mode)
 :config (flycheck-kotlin-setup)
 :hook
 ((kotlin-mode . flycheck-mode) (kotlin-ts-mode . flycheck-mode)))

(provide '70-kotlin)

;;; 70-kotlin.el ends here
