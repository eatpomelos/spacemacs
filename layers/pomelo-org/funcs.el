(defun open-my-note ()
  "open note file."
  (interactive)
  (let ((mnote-path nil))
    (if (spacemacs/system-is-mswindows)
        (setq note-path "d:/org-note/mynote.org")
      (setq mnote-path "~/pomelo/org/note.org"))
    (find-file mnote-path))
  )
