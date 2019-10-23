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


