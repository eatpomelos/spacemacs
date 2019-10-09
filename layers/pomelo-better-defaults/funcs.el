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
(defun open-pomelo-config()
  "open my config file
use \"fep\" to open my package.el file"
  (interactive)
  (find-file "~/.spacemacs.d/layers"))

;; 当用swiper查找某一个单词之后，自动将这一行放到屏幕中间
(defadvice swiper (after pomelo-swiper-hack activate)
  (recenter-top-bottom))

(defadvice goto-line (after pomelo-goto-line-hack activate)
  (recenter-top-bottom))

(defadvice spacemacs/helm-project-smart-do-search (after pomelo-helm-project-search-hack activate)
  (recenter-top-bottom))
