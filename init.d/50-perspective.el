;;; 50-perspective.el --- Perspective
;;; Commentary:

;;; Code:
(use-package
 perspective
 :straight t
 :custom
 ;; NOTE! I have also set 'SCP =' to open the perspective menu.
 ;; I'm only setting the additional binding because setting it
 ;; helps suppress an annoying warning message.
 (persp-mode-prefix-key (kbd "C-c M-p"))
 :config
 ;; Sets a file to write to when we save states
 (setq persp-state-default-file "~/.config/emacs/sessions")
 :hook ((after-init . persp-mode) (kill-emacs . persp-state-save)))

;; This will group buffers by persp-name in ibuffer.
(add-hook
 'ibuffer-hook
 (lambda ()
   (persp-ibuffer-set-filter-groups)
   (unless (eq ibuffer-sorting-mode 'alphabetic)
     (ibuffer-do-sort-by-alphabetic))))

(provide '50-perspective)

;;; 50-perspective.el ends here
