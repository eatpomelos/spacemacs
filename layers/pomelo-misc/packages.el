(defconst pomelo-misc-packages
  '(
    edit-server
    ivy-rich
    keyfreq
    evil
    ))

(defun pomelo-misc/post-init-evil ()
  (global-set-key (kbd "M-;") 'evilnc-comment-or-uncomment-lines)
  (evil-leader/set-key
    "ci" 'evilnc-comment-or-uncomment-lines
    "cl" 'evilnc-quick-comment-or-uncomment-to-the-line
    "ll" 'evilnc-quick-comment-or-uncomment-to-the-line
    "cc" 'evilnc-copy-and-comment-lines
    "cp" 'evilnc-comment-or-uncomment-paragraphs
    "cr" 'comment-or-uncomment-region
    "cv" 'evilnc-toggle-invert-comment-line-by-line
    "."  'evilnc-copy-and-comment-operator
    "\\" 'evilnc-comment-operator ; if you prefer backslash key
    )
  )

;; 安装keyfreq 来测试自己的按键的效率
(defun pomelo-misc/init-keyfreq ()
  (use-package keyfreq
    :config
    (keyfreq-mode 1)
    (keyfreq-autosave-mode 1)
    (setq keyfreq-excluded-commands
          '(
            self-insert-command
            evil-normal-state
            evil-insert-state
            evil-visual-state
            lispy-move-beginning-of-line
            lispy-move-end-of-line
            evil-previous-line
            evil-next-line
            evil-forward-char
            evil-backward-char
            counsel-M-x
            save-buffer
            ))
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
