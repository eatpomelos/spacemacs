(defvar org-agenda-dir ""
  "gtd org files location")

(if (spacemacs/system-is-mswindows)
    (setq org-agenda-dir "f:/org-notes")
  (setq org-agenda-dir "~/.spacemacs.d/Org"))

;; 备注，设置dir 之后完成自定义的agenda设置

(setq electric-pair-inhibit-predicate 'electric-pair-conservative-inhibit)

(add-hook 'find-file-hook 'spacemacs/check-large-file)

 ;; 当输入lambda的时候变成一个符号
(global-prettify-symbols-mode 1)

;; 设置snippets 这里暂时有点问题之后再进行完善
;; (add-hook 'c++-mode-hook
;;           (lambda ()
;;             (setq company-backends '(company-yasnippet))))
