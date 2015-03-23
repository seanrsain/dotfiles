;; Basics
(setq visible-bell 1)
(setq-default indent-tabs-mode nil)
(setq show-paren-mode 1)
(if window-system
    (tool-bar-mode 0))
(global-linum-mode t)
(setq linum-format "%3d ")
(setq visual-line-mode t)
(setq word-wrap t)
(setq-default ispell-program-name "/usr/local/bin/ispell")
(add-hook 'before-save-hook 'delete-trailing-whitespace)
(global-set-key (kbd "M-j") 'join-line)
(global-set-key (kbd "M-g") 'goto-line)

;; Try to get rid of Aquamacs's insistence on turning on auto-fill everywhere
(turn-off-auto-fill)
(remove-hook 'text-mode-hook #'turn-on-auto-fill)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Org-mode
(setq org-default-notes-file (concat org-directory "~/Documents/capture.org"))
     (define-key global-map "\C-cc" 'org-capture)

;; Graphviz dot language
(org-babel-do-load-languages
     'org-babel-load-languages
     '((dot . t)))
