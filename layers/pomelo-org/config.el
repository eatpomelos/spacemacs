;; 设置.txt为后缀的文件用org-mode打开
(add-to-list 'auto-mode-alist '("\\.txt\\'" . org-mode))

;; (org-babel-do-load-languages
;;  'org-babel-load-languages
;;  '((emacs-lisp . t)
;;    (C . t)
;;    (perl . t)
;;    (java . t)
;;    (js . t)
;;    (ruby . t)
;;    (ditaa . t)
;;    (python . t)
;;    ;;下面一行语句在不用的时候可以注释掉，但是不注释的话会出现一个警告
;;    ;;(shell . t)
;;    (latex . t)
;;    (plantuml . t)
;;    (R . t)))

(add-hook 'org-mode-hook 'turn-on-auto-fill)

(setq org-agenda-files '("~/.spacemacs.d/"))
