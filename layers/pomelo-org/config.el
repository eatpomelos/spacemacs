;; 设置.txt为后缀的文件用org-mode打开
(add-to-list 'auto-mode-alist '("\\.txt\\'" . org-mode))

(add-hook 'org-mode-hook 'turn-on-auto-fill)

(setq org-agenda-files '("~/pomelo/org/"))

;; Org Headline Bullet Style (From Level 0 to Level 20)
(setq org-bullets-bullet-list '("⓪" "①" "②" "③"
                                "④" "⑤" "⑥" "⑦"
                                "⑧" "⑨" "⑩" "⑪"
                                "⑫" "⑬" "⑭"
                                "⑮" "⑯" "⑰"
                                "⑱" "⑲" "⑳"))

;; 设置一下自己的任务管理的一些简单的配置,要是想放弃一个任务的时候，要进行说明，以后可能会再次启用这个任务
(setq org-todo-keywords '((sequence "TODO(t)" "DOING(i)" "|" "DONE(d)" "ABORT(a@/!)")))
(setq org-todo-keyword-faces '(("TODO" . "red")
                               ("DOING" . "yellow")
                               ("DONE" . "green")
                               ("ABORT" . "blue")))

;; 一些暂时写来用的配置，但是不一定需要整合到emacs的配置中,defadvice的格式
;; (defadvice FUNCTION (CLASS NAME [POSITION] [ARGLIST] FLAG...)
;;   [DOCSTRING] [INTERACTIVE-FORM]
;;   BODY...)

(defvar pomelo-local-dictionary nil
  "defun the path of local english dictionary.")

(setq pomelo-local-dictionary "~/pomelo/english/english-words.txt")

(defun pomelo-load-localdictionary ()
  "Load local dictionary to complement."
  (interactive)
  (find-file-read-only pomelo-local-dictionary)
  (spacemacs/alternate-buffer))

(global-set-key (kbd "C-c d") 'pomelo-load-localdictionary)
