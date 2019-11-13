;; 设置打开emacs时的初始位置
(set-frame-position (selected-frame) 960 0)
(set-frame-width (selected-frame) 117)
(set-frame-height (selected-frame) 59)

;; 设置标题
(setq frame-title-format
      '("" invocation-name " pomelo - " (:eval (if (buffer-file-name)
						    (abbreviate-file-name (buffer-file-name))
						    "%b"))))
