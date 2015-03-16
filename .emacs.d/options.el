;; Basics
(setq visible-bell 1)
(setq-default indent-tabs-mode nil)
(setq show-paren-mode 1)
(setq tool-bar-mode 0)
(setq global-linum-mode t)
(setq linum-format "%d ")
(setq visual-line-mode t)
(setq word-wrap t)
(setq-default ispell-program-name "/usr/local/bin/ispell")
(add-hook 'before-save-hook 'delete-trailing-whitespace)
(global-set-key (kbd "M-j") 'join-line)
(global-set-key (kbd "M-g") 'goto-line)

;; Try to get rid of Aquamacs's insistence on turning on auto-fill everywhere
(turn-off-auto-fill)
(remove-hook 'text-mode-hook #'turn-on-auto-fill)
