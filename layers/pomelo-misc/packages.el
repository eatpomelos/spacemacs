(defconst pomelo-misc-packages
  '(
    edit-server
    ivy-rich
    ))

;; 使得M-x的时候显示文档
(defun pomelo-misc/init-ivy-rich ()
  (use-package ivy-rich
    :ensure t
    :config
    (ivy-rich-mode t)))

;;; packages.el ends here
(defun pomelo-misc/init-edit-server ()
  (use-package edit-server
    :ensure t
    :config (edit-server-start))
  )
