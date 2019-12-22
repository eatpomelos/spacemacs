;;; funcs.el --- zilongshanren Layer packages File for Spacemacs
;;
;; Copyright (c) 2015-2016 zilongshanren 
;;
;; Author: zilongshanren <guanghui8827@gmail.com>
;; URL: https://github.com/zilongshanren/spacemacs-private
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;; some pravite config
(defun pomelo/open-config()
  "open my config file
use \"fep\" to open my package.el file"
  (interactive)
  (find-file "~/.spacemacs.d/layers"))

;; 当打开一个大的文件的时候使用另外的模式提升性能
(defun spacemacs/check-large-file ()
  (when (> (buffer-size) 500000)
    (progn (fundamental-mode)
           (hl-line-mode -1))))

(defun occur-dwim ()
  "Call `occur' with a sane default."
  (interactive)
  (push (if (region-active-p)
	          (buffer-substring-no-properties
	           (region-beginning)
	           (region-end))
	        (let ((sym (thing-at-point 'symbol)))
	          (when (stringp sym)
              (regexp-quote sym))))
	      regexp-history)
  (call-interactively 'occur))

;; 当用swiper查找某一个单词之后，自动将这一行放到屏幕中间
(defadvice swiper (after pomelo-swiper-hack activate)
  (recenter-top-bottom))

(defadvice goto-line (after pomelo-goto-line-hack activate)
  (recenter-top-bottom))

(defadvice spacemacs/helm-project-smart-do-search (after pomelo-helm-project-search-hack activate)
  (recenter-top-bottom))

;; 当关闭一个buffer的时候，如果当前的window 数大于1则删除这个window
(defadvice spacemacs/kill-this-buffer (after pomelo-kill-buffer-hack activate)
  (if (> (count-windows) 1)
      (spacemacs/delete-window)))
