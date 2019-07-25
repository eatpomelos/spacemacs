;; 为了偷懒这里，设置一个文件来保存宏
(defun open-my-define-file ()
  "open my kbd macro file"
  (interactive)
  (setq my-kbd-macro "/home/gec/.spacemacs.d/layers/pomelo-programming/define.emacs")
  (find-file my-kbd-macro))
