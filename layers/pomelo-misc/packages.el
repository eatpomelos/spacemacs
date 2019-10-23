(defconst pomelo-misc-packages
  '(
    edit-server
    ))


;;; packages.el ends here
(defun pomelo-misc/init-edit-server ()
  (use-package edit-server
    :ensure t
    :config (edit-server-start))
  )
