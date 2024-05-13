;;; 50-git.el --- Git
;;; Commentary:

;;; Code:
(use-package
 git-timemachine
 :straight t
 :hook (evil-normalize-keymaps . git-timemachine-hook)
 :config
 (evil-define-key
  'normal
  git-timemachine-mode-map
  (kbd "C-j")
  'git-timemachine-show-previous-revision)
 (evil-define-key
  'normal
  git-timemachine-mode-map
  (kbd "C-k")
  'git-timemachine-show-next-revision))

(use-package magit :straight t)

(provide '50-git)

;;; 50-git.el ends here
