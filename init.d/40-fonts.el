;;; 40-fonts.el --- Fonts
;;; Commentary:

;;; Code:
(set-face-attribute 'default nil
                    :font "Fira Code"
                    :height 110
                    :weight 'medium)
(set-face-attribute 'variable-pitch nil
                    :font "Ubuntu"
                    :height 120
                    :weight 'medium)
(set-face-attribute 'fixed-pitch nil
                    :font "Fira Code"
                    :height 110
                    :weight 'medium)
(set-face-attribute 'font-lock-comment-face nil :slant 'italic)
(set-face-attribute 'font-lock-keyword-face nil :slant 'italic)

(add-to-list 'default-frame-alist '(font . "Fira Code-11"))

(setq-default line-spacing 0.12)

(provide '40-fonts)

;;; 40-fonts.el ends here.
