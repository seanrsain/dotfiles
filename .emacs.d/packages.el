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
        emmet-mode
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
(if window-system (global-git-gutter+-mode t))

(require 'yasnippet)
(setq yas-snippet-dirs
      '(;; personal snippets
        "~/.emacs.d/snippets"
        ;; You'll need to clone https://github.com/AndreaCrotti/yasnippet-snippets
        ;; and customize this based on where you clone it.
        "~/vcs/github.com/AndreaCrotti/yasnippet-snippets"
        ))
(define-key yas-minor-mode-map (kbd "\t") nil)
(define-key yas-minor-mode-map (kbd "TAB") nil)
(define-key yas-minor-mode-map (kbd "C-M-y") 'yas-expand)

;;keys for navigation
(define-key yas-keymap [(tab)]       nil)
(define-key yas-keymap (kbd "TAB")   nil)
(define-key yas-keymap [(shift tab)] nil)
(define-key yas-keymap [backtab]     nil)
(define-key yas-keymap (kbd "C-M-y") 'yas-next-field-or-maybe-expand)
(define-key yas-keymap (kbd "C-M-Y") 'yas-prev)
(yas-global-mode 1)

(add-hook 'after-init-hook 'global-company-mode)

(require 'emmet-mode)
