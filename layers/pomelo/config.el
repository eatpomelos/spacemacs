(defvar org-agenda-dir ""
  "gtd org files location")

(defvar macro-file-path ""
  "macro file location")


(if (spacemacs/system-is-mswindows)
    (setq org-agenda-dir "d:/org-notes")
  (setq org-agenda-dir "~/.spacemacs.d/Org"))

(if (spacemacs/system-is-mswindows)
    (setq macro-file-path "d:/org-notes/define.emacs")
  (setq macro-file-path "~/.spacemacs.d/layers/pomelo-programming/define.emacs"))

;; 备注，设置dir 之后完成自定义的agenda设置

(setq electric-pair-inhibit-predicate 'electric-pair-conservative-inhibit)

(add-hook 'find-file-hook 'spacemacs/check-large-file)

 ;; 当输入lambda的时候变成一个符号
(global-prettify-symbols-mode 1)

;; 设置snippets 这里暂时有点问题之后再进行完善
;; (add-hook 'c++-mode-hook
;;           (lambda ()
;;             (setq company-backends '(company-yasnippet))))
