;; 定义一些自己的函数
;; 当退出emacs 的时候保存scratch的内容
(defun pomelo|save-scratch ()
  (ignore-errors
    (with-current-buffer "*scratch*"
        (write-region nil nil "~/.spacemacs.d/layers/pomelo-misc/local/scratch"))))

(defun pomelo|recover-scratch ()
  (let ((s "~/.spacemacs.d/layers/pomelo-misc/local/scratch"))
    (when (file-exists-p s)
      (with-current-buffer "*scratch*")
      (erase-buffer)
      (insert-file-contents s))))

(add-hook 'kill-emacs-hook #'pomelo|save-scratch)
(add-hook 'after-init-hook #'pomelo|recover-scratch)

