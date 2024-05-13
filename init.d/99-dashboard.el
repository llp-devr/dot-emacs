;;; 99-dashboard.el --- Dashboard
;;; Commentary:

;;; Code:

(defvar my-dashboard-banner-path
  (expand-file-name "images/emacs.png" user-emacs-directory)
  "Path to the custom banner image used in the dashboard.")

(use-package
 dashboard
 :straight t
 :after nerd-icons
 :custom
 (initial-buffer-choice 'dashboard-open)
 (dashboard-display-icons-p t)
 (dashboard-icon-type 'nerd-icons)
 (dashboard-set-heading-icons t)
 (dashboard-set-file-icons t)
 (dashboard-banner-logo-title "Emacs Is More Than A Text Editor!")
 (dashboard-startup-banner my-dashboard-banner-path)
 (dashboard-center-content nil)
 (dashboard-projects-backend 'projectile)
 (dashboard-items
  '((recents . 5)
    (agenda . 5)
    (bookmarks . 3)
    (projects . 3)
    (registers . 3)))
 (dashboard-modify-heading-icons
  '((recents . "file-text") (bookmarks . "book")))
 :hook (window-setup . dashboard-setup-startup-hook))

(provide '50-dashboard)

;;; 99-dashboard.el ends here.
