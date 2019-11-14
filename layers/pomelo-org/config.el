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

;; 一些暂时写来用的配置，但是不一定需要整合到emacs的配置中,defadvice的格式
;; (defadvice FUNCTION (CLASS NAME [POSITION] [ARGLIST] FLAG...)
;;   [DOCSTRING] [INTERACTIVE-FORM]
;;   BODY...)
