;;; 50-neotree.el --- Neotree
;;; Commentary:

;;; Code:
(use-package
 neotree
 :straight t
 :config
 (setq
  neo-smart-open t
  neo-show-hidden-files t
  neo-window-width 55
  neo-window-fixed-size nil
  inhibit-compacting-font-caches t
  projectile-switch-project-action 'neotree-projectile-action)
 ;; truncate long file names in neotree
 (add-hook
  'neo-after-create-hook
  #'(lambda (_)
      (with-current-buffer (get-buffer neo-buffer-name)
        (setq truncate-lines t)
        (setq word-wrap nil)
        (make-local-variable 'auto-hscroll-mode)
        (setq auto-hscroll-mode nil)))))

(provide '50-neotree)

;;; 50-neotree.el ends here
