;;; config.el --- Better Emacs Defaults Layer configuration variables File
;;
;; Copyright (c) 2012-2017 Sylvain Benner & Contributors
;;
;; Author: Thomas de Beauchêne <thomas.de.beauchene@gmail.com>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

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

;;(hungry-delete-mode t)

;; (electric-pair-mode t)
(setq electric-pair-inhibit-predicate 'electric-pair-conservative-inhibit)

;; 当打开一个大的文件的时候使用另外的模式提升性能
(defun spacemacs/check-large-file ()
  (when (> (buffer-size) 500000)
    (progn (fundamental-mode)
           (hl-line-mode -1))))

(add-hook 'find-file-hook 'spacemacs/check-large-file)

 ;; 当输入lambda的时候变成一个符号
(global-prettify-symbols-mode 1)
