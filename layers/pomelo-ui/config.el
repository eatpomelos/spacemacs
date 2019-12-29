;; 设置打开emacs时的初始位置,只有在window上运行的时候会设置这个位置，在虚拟机中不需要
(if (spacemacs/system-is-mswindows)
    (progn
      (set-frame-position (selected-frame) 960 0)
      (set-frame-width (selected-frame) 117)
      (set-frame-height (selected-frame) 59)))

;; 设置标题
(setq frame-title-format
      '("" invocation-name " pomelo - " (:eval (if (buffer-file-name)
						    (abbreviate-file-name (buffer-file-name))
						    "%b"))))

;; Datetime format
(setq
 ;; display-time-day-and-date t
 display-time-24hr-format t)

(display-time-mode)
