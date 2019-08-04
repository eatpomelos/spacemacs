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

(global-set-key (kbd "<f4>") 'open-my-diary)
(global-set-key (kbd "<f5>") 'open-my-define-file)

(spacemacs/set-leader-keys "fep" 'open-pomelo-config)
(spacemacs/set-leader-keys "im" 'insert-kbd-macro)

(define-key evil-insert-state-map (kbd "C-x g") 'goto-line)
