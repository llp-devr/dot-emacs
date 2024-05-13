;;; 50-projectile.el --- Projectile
;;; Commentary:

;;; Code:
(use-package
 projectile
 :straight t
 :custom
 (projectile-indexing-method 'hybrid)
 (projectile-auto-discover t)
 (projectile-completion-system 'ivy)
 (projectile-project-search-path (list (expand-file-name "~/projects/"))) 
 :hook (after-init . projectile-mode))

(provide '50-projectile)

;;; 50-projectile.el ends here
