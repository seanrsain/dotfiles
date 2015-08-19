;; MELPA package manager
(require 'package)

;; Override the various installed Emacsen so all versions and users can share
(setq package-user-dir "/usr/local/share/emacs/elpa")

(add-to-list 'package-archives
         '("melpa" . "http://melpa.org/packages/") t)
(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

(setq package-list
      '(ensime
        yasnippet
        company
        expand-region
        multiple-cursors
        graphviz-dot-mode
        magit
        git-gutter-fringe+))

(mapc 'package-install package-list)

(require 'ensime)
(add-hook 'scala-mode-hook 'ensime-scala-mode-hook)

(require 'expand-region)
(global-set-key (kbd "C-=") 'er/expand-region)

(require 'multiple-cursors)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)

(require 'graphviz-dot-mode)

(require 'git-gutter-fringe+)
(global-git-gutter+-mode t)

(require 'yasnippet)
(yas-global-mode 1)

(add-hook 'after-init-hook 'global-company-mode)
