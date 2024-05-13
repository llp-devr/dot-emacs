;;; 50-elfeed.el --- Elfeed
;;; Commentary:

;;; Code:
(use-package
 elfeed
 :straight t
 :defines (elfeed-feeds elfeed-search-feed-face)
 :config
 (setq
  elfeed-search-feed-face ":foreground #ffffff :weight bold"
  elfeed-feeds
  (quote (("https://www.reddit.com/r/linux.rss" reddit linux)
          ("https://www.reddit.com/r/commandline.rss"
           reddit
           commandline)
          ("https://www.reddit.com/r/distrotube.rss"
           reddit
           distrotube)
          ("https://www.reddit.com/r/emacs.rss" reddit emacs)))))


(use-package
 elfeed-goodies
 :straight t
 :after elfeed
 :defines elfeed-goodies/entry-pane-size
 :functions elfeed-goodies/setup
 :init (elfeed-goodies/setup)
 :custom (elfeed-goodies/entry-pane-size 0.5))

(provide '50-elfeed)

;;; 50-elfeed.el ends here.
