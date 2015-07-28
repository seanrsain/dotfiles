;; From http://www.emacswiki.org/emacs/UnfillRegion
(defun unfill-region (beg end)
      "Unfill the region, joining text paragraphs into a single
    logical line.  This is useful, e.g., for use with
    `visual-line-mode'."
      (interactive "*r")
      (let ((fill-column (point-max)))
        (fill-region beg end)))

;; Handy key definition
(define-key global-map "\C-\M-Q" 'unfill-region)

(defun my-set-frame-width ()
  (interactive)
  (set-frame-width (selected-frame) (cdr (assoc 'width default-frame-alist))))

(define-key global-map "\C-z" 'my-set-frame-width)
