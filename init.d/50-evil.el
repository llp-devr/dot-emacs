;;; 50-evil.el --- Evil
;;; Commentary:

;;; Code:
(use-package
 evil
 :straight t
 :defines evil-motion-state-map
 :custom
 (evil-want-integration t)
 (evil-want-keybinding nil)
 (evil-vsplit-window-right t)
 (evil-split-window-below t)
 (evil-undo-system 'undo-redo)
 :config
 (define-key evil-motion-state-map (kbd "SPC") nil)
 (define-key evil-motion-state-map (kbd "RET") nil)
 (define-key evil-motion-state-map (kbd "TAB") nil)
 :hook (after-init . evil-mode))

(use-package
 evil-collection
 :straight t
 :after evil
 :defines evil-collection-mode-list
 :config
 (add-to-list 'evil-collection-mode-list 'help)
 :hook (evil-mode . evil-collection-init))

(use-package evil-tutor :straight t)

;;(use-package org
;; :custom
;; (org-return-follows-link t))

(provide '50-evil)

;;; 50-evil.el ends here.
