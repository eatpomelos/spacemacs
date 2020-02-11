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

;; 这下面的两行并没有启用，这里暂时用其他方法替代
;; 设置scratch缓冲区的默认主模式为emacs-lisp-mode
(setq dotspacemacs-scratch-mode 'emacs-lisp-mode)

(setq-default fill-column 100)

;; 选中之后可以直接替换
(delete-selection-mode t)

;; 设置elpa-mirror的路径,下面的第一行会将之前的仓库覆盖掉，可能会出现一些问题，这里用了后面的用法
;; (setq package-archives '(("myelpa" . "~/myelpa/")))

;;(if (spacemacs/system-is-mswindows)
;;    (progn
;;      (add-to-list 'package-archives
;;                   '(("myelpa" . "d:/myelpa/")))
;;      (setq elpamr-default-output-directory "d:/myelpa")
;;      (add-to-list 'exec-path "D:/Install/babun/.babun/cygwin/bin"))
;;    (progn
;;      (add-to-list 'package-archives
;;                   '(("myelpa" . "~/myelpa/")))
;;      (setq elpamr-default-output-directory "~/myelpa")))

(setq configuration-layer--elpa-archives
      '(("melpa" . "http://elpa.emacs-china.org/melpa/")
        ("org"   . "http://elpa.emacs-china.org/org/")
        ("gnu"   . "http://elpa.emacs-china.org/gnu/")))
;; 设置github仓库,我的github地址:https://github.com/eatpomelos/myelpa.git
;;(add-to-list 'package-archives
;;             '("myelpa" . "https://raw.githubusercontent.com/eatpomelos/myelpa/master/"))
(setq elpamr-debug t)

'(company-show-numbers t)
