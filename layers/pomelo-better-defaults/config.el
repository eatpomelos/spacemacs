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

(global-linum-mode t)
;; recentf不保存一下后缀的文件
(defun pomelo-better-defaults/post-init-recentf ()
  (progn
    (setq recentf-exclude
          '("COMMIT_MSG"
            "COMMIT_EDITMSG"
            "github.*txt$"
            "/tmp/"
            "/ssh:"
            "/sudo:"
            "/TAGS$"
            "/GTAGS$"
            "/GRAGS$"
            "/GPATH$"
            "\\.mkv$"
            "\\.mp[34]$"
            "\\.avi$"
            "\\.pdf$"
            "\\.sub$"
            "\\.srt$"
            "\\.ass$"
            ".*png$"
            ".*bmp$"
            ".*bd$"))))

;; 设置scratch缓冲区的默认主模式为emacs-lisp-mode
(setq dotspacemacs-scratch-mode 'emacs-lisp-mode)

(setq recentf-max-saved-items 30)

(setq-default fill-column 100)

;; 选中之后可以直接替换
(delete-selection-mode t)

;; 设置elpa-mirror的路径,下面的第一行会将之前的仓库覆盖掉，可能会出现一些问题，这里用了后面的用法
;; (setq package-archives '(("myelpa" . "~/myelpa/")))
(add-to-list 'package-archives
            '(("myelpa" . "~/myelpa/")))
(setq elpamr-default-output-directory "~/myelpa")
;; 设置github仓库,我的github地址:https://github.com/eatpomelos/myelpa.git
(add-to-list 'package-archives
             '("myelpa" . "https://raw.githubusercontent.com/eatpomelos/myelpa/master/"))
(setq elpamr-debug t)
