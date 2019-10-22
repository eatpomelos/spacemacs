(defvar org-agenda-dir ""
  "gtd org files location")

(defvar macro-file-path ""
  "macro file location")

(defvar win-exe-home-path "d:/Install/babun/.babun/cygwin/bin")


(if (spacemacs/system-is-mswindows)
    (progn
      (setq org-agenda-dir "d:/org-notes")
      (setq macro-file-path "d:/Emacs/.spacemacs.d/layers/pomelo-programming/define.emacs"))
  (progn
    (setq org-agenda-dir "~/.spacemacs.d/Org")
    (setq macro-file-path "~/.spacemacs.d/layers/pomelo-programming/define.emacs")
    ))

;; 备注，设置dir 之后完成自定义的agenda设置

(setq electric-pair-inhibit-predicate 'electric-pair-conservative-inhibit)

(add-hook 'find-file-hook 'spacemacs/check-large-file)

 ;; 当输入lambda的时候变成一个符号
(global-prettify-symbols-mode 1)

