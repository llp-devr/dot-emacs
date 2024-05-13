;;; 50-lsp.el --- LSP
;;; Commentary:

;;; Code:
(use-package
 lsp-mode
 :straight t
 :commands (lsp lsp-deferred)
 :custom
 (lsp-kotlin-trace-server "messages")
 (lsp-kotlin-compiler-jvm-target "17")
 (lsp-kotlin-linting-debounce-time 300)
 (lsp-kotlin-completion-snippets-enabled nil)
 (lsp-kotlin-ondisk-cache-path
  (expand-file-name "~/.cache/kotlin-language-server/ondisk-cache/"))
 (lsp-kotlin-ondisk-cache-enabled t)
 (lsp-semgrep nil)
 (lsp-semgrep-languages nil)
 :hook (lsp-mode . lsp-enable-which-key-integration))

(use-package lsp-ui :straight t :commands lsp-ui-mode)

(use-package lsp-ivy :straight t :commands lsp-ivy-workspace-symbol)

(provide '50-lsp)

;;; 50-lsp.el ends here
