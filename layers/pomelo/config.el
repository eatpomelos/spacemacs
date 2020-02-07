(defvar org-agenda-dir ""
  "gtd org files location")

(defvar macro-file-path ""
  "macro file location")

(defvar deft-dir ""
  "deft directory location.")

(if (spacemacs/system-is-mswindows)
    (progn
      (setq org-agenda-dir "d:/org-notes/agenda/")
      (setq macro-file-path "d:/Emacs/.spacemacs.d/layers/pomelo-programming/define.emacs")
      (setq deft-dir "d:/org-notes/notes/")
      (defvar win-exe-home-path "d:/Install/babun/.babun/cygwin/bin")
      )
  (progn
    (setq org-agenda-dir "~/pomelo/agenda/")
    (setq macro-file-path "~/.spacemacs.d/layers/pomelo-programming/define.emacs")
    (setq deft-dir "~/pomelo/org-notes/")
    ))

;; 备注，设置dir 之后完成自定义的agenda设置

(setq electric-pair-inhibit-predicate 'electric-pair-conservative-inhibit)

(add-hook 'find-file-hook 'spacemacs/check-large-file)

 ;; 当输入lambda的时候变成一个符号
(global-prettify-symbols-mode 1)

;; 这里由于在27以下的版本运行会直接报错，这里加上条件
(if (>= (string-to-number emacs-version) 27.0)
    (progn
      (global-company-mode t)
      (global-hungry-delete-mode t)))
(electric-pair-mode t)

;; 设置垃圾回收的阈值，加快启动的加载速度
(setq gc-cons-threshold (* 2 1000 1000))
