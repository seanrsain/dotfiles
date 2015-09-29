;; Extensions that don't have ELPA packages

;; markdown-mode
(add-to-list 'load-path "~/vcs/github.com/jrblevin/markdown-mode")

(autoload 'markdown-mode "markdown-mode"
   "Major mode for editing Markdown files" t)

(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))
