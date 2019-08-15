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

(global-set-key (kbd "<f4>") 'open-my-list)
(global-set-key (kbd "<f5>") 'open-my-define-file)

(spacemacs/set-leader-keys "fep" 'open-pomelo-config)
(spacemacs/set-leader-keys "im" 'insert-kbd-macro)


;; 设置代码折叠相关的快捷键p开头表示pomelo的快捷键
(define-key evil-normal-state-map (kbd "C-c sa") 'hs-show-all)
(define-key evil-normal-state-map (kbd "C-c ha") 'hs-hide-all)
(define-key evil-normal-state-map (kbd "C-c sb") 'hs-show-block)
(define-key evil-normal-state-map (kbd "C-c hb") 'hs-hide-block)
