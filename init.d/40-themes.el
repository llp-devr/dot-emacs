;;; 40-themes.el --- Themes configuration -*- lexical-binding: t -*-
;;; Commentary:

;;; Code:

;; dracula-theme.el
;; 🧛 Dark theme for Emacs.
;; https://github.com/dracula/emacs
(use-package dracula-theme :straight t)

;; cyberpunk-theme.el
;; Cyberpunk theme for emacs built-in color theme support
;; https://github.com/n3mo/cyberpunk-theme.el
(use-package cyberpunk-theme :straight t)

;; abyss-theme.el
;; A dark theme for Emacs
;; https://github.com/mgrbyte/emacs-abyss-theme
(use-package abyss-theme :straight t)

;; timu-caribbean-theme.el
;; Color theme with cyan as a dominant color.
;; https://gitlab.com/aimebertrand/timu-caribbean-theme
(use-package timu-caribbean-theme
  :straight t
  :config(load-theme 'timu-caribbean t))

(provide '40-themes)

;;; 40-themes.el ends here.
