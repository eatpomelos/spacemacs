(defun open-my-note ()
  "open note file."
  (interactive)
  (let ((mnote-path nil))
    (if (spacemacs/system-is-mswindows)
        (setq mnote-path "d:/org-notes/note.org")
      (setq mnote-path "~/pomelo/org/note.org"))
    (find-file mnote-path))
  )
