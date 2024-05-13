;;; init.el --- My custom init.el file. -*- lexical-binding: t; -*-
;;; Commentary:
;; This file sets up the initial environment for Emacs, configuring fundamental
;; settings, defining user details, and loading custom configurations.

;;; Code:

;; Enable debugging during startup to diagnose any initialization issues.
;; Uncomment the following line to activate debugging:
;; (setq debug-on-error t)

;; Set user details directly in the init file to ensure they are globally accessible.
(setq
 user-full-name "Leonardo Lopes Pereira"
 user-mail-address "leonardolopespereira@outlook.com")

;; Define the global variable to find the Python executable
(defvar python-bin (executable-find "python3")
  "Path to the Python executable.")

;; Disable backup files
(setq make-backup-files nil)

;; Disable auto-save files
(setq auto-save-default nil)

;; Optionally, disable lockfiles
(setq create-lockfiles nil)


;; Define the directory containing Emacs Lisp configuration files
(let ((config-directory "~/.config/emacs/init.d/"))

  ;; Load all Emacs Lisp files from the configuration directory in alphabetical order
  (dolist (file
           (sort
            (directory-files config-directory t "\\.el$") 'string<))
    ;; Ensure only files ending with '.el' are loaded to prevent errors
    (when (string-match-p "\\.el\\'" file)
      ;; Load each Emacs Lisp file
      (load file))))

;;(org-babel-load-file
;; (expand-file-name "config.org" user-emacs-directory))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("02f57ef0a20b7f61adce51445b68b2a7e832648ce2e7efb19d217b6454c1b644"
     "6945dadc749ac5cbd47012cad836f92aea9ebec9f504d32fe89a956260773ca4"
     "944d52450c57b7cbba08f9b3d08095eb7a5541b0ecfb3a0a9ecd4a18f3c28948"
     "636b135e4b7c86ac41375da39ade929e2bd6439de8901f53f88fde7dd5ac3561"
     "1f669e8abe4dc2855268c9a607b5e350e2811b3c5afd09af5939ff0c01a89c5a"
     default)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-level-1 ((t (:inherit outline-1 :height 1.7))))
 '(org-level-2 ((t (:inherit outline-2 :height 1.6))))
 '(org-level-3 ((t (:inherit outline-3 :height 1.5))))
 '(org-level-4 ((t (:inherit outline-4 :height 1.4))))
 '(org-level-5 ((t (:inherit outline-5 :height 1.3))))
 '(org-level-6 ((t (:inherit outline-5 :height 1.2))))
 '(org-level-7 ((t (:inherit outline-5 :height 1.1)))))

;;; init.el ends here
