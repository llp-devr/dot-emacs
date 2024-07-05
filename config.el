;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

(setq user-full-name "Leonardo Lopes Pereira"
      user-mail-address "leonardolopespereira@outlook.com")

(setq doom-font (font-spec :family "FiraCode Nerd Font" :size 12 :weight 'semi-light)
      doom-variable-pitch-font (font-spec :family "Fira Sans" :size 13))

(setq nerd-icons-font-names '("SymbolsNerdFontMono-Regular"))

(setq doom-theme 'doom-snazzy)

(setq display-line-numbers-type t)

(setq org-directory "~/Git/org/")

;;(setq grep-command (executable-find "ggrep"))

(after! lsp-mode
  (setq lsp-clients-kotlin-server-executable (executable-find "kotlin-language-server")
        lsp-kotlin-compiler-jvm-target 17))
