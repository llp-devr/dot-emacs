;;; 50-org.el --- Org Mode
;;; Commentary:

;;; Code:
(use-package
 toc-org
 :straight t
 :commands toc-org-enable
 :hook (org-mode . toc-org-enable))

(add-hook 'org-mode-hook 'org-indent-mode)

(use-package
 org-bullets
 :straight t
 :hook (org-mode . org-bullets-mode))

(eval-after-load 'org-indent '(diminish 'org-indent-mode))

(custom-set-faces
 '(org-level-1 ((t (:inherit outline-1 :height 1.7))))
 '(org-level-2 ((t (:inherit outline-2 :height 1.6))))
 '(org-level-3 ((t (:inherit outline-3 :height 1.5))))
 '(org-level-4 ((t (:inherit outline-4 :height 1.4))))
 '(org-level-5 ((t (:inherit outline-5 :height 1.3))))
 '(org-level-6 ((t (:inherit outline-5 :height 1.2))))
 '(org-level-7 ((t (:inherit outline-5 :height 1.1)))))

(require 'org-tempo)

(provide '50-org)

;;; 50-org.el ends here
