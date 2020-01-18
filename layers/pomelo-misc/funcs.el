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

;; 参照子龙的代码，这里不适用是因为直接用 spacemacs/swiper-region-or-symbol 比较符合我自己想要的结果
(defun my-swiper-search (p)
  (interactive "P")
  (let ((current-prefix-arg nil))
    (call-interactively
     (if p #'spacemacs/swiper-region-or-symbol
       #'swiper))))
