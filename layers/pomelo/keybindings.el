;;; keybindings.el --- Better Emacs Defaults Layer key bindings File
;;
;; Copyright (c) 2012-2017 Sylvain Benner & Contributors
;;
;; Author: Sylvain Benner <sylvain.benner@gmail.com>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3


(global-set-key (kbd "M-s o") 'occur-dwim)

(global-set-key (kbd "C-=") 'er/expand-region)
(global-set-key (kbd "C-\-") 'er/contract-region)
(global-set-key (kbd "M-s p") 'iedit-mode)

(global-set-key (kbd "<f5>") 'open-my-note)

(spacemacs/set-leader-keys "fep" 'pomelo/open-config)
(spacemacs/set-leader-keys "im" 'insert-kbd-macro)


;; 设置代码折叠相关的快捷键p开头表示pomelo的快捷键
(define-key prog-mode-map (kbd "C-c sa") 'hs-show-all)
(define-key prog-mode-map (kbd "C-c ha") 'hs-hide-all)
(define-key prog-mode-map (kbd "C-c sb") 'hs-show-block)
(define-key prog-mode-map (kbd "C-c hb") 'hs-hide-block)

;; 编辑相关
(global-set-key (kbd "C-c v") 'set-mark-command)
(global-set-key (kbd "C-c C-l") 'goto-line)
(global-set-key (kbd "C-c -") 'text-scale-decrease)
(global-set-key (kbd "C-c +") 'text-scale-increase)

(global-set-key (kbd "<f9>") 'loop-alpha)
