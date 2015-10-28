;; Extensions that don't have ELPA packages

;; Homebrew-installed packages
(let ((default-directory "/usr/local/share/emacs/site-lisp/"))
  (normal-top-level-add-subdirs-to-load-path))
