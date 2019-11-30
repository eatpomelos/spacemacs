;; Briefly, each package to be installed or configured by this layer should be
;; added to `pomelo-programming-packages'. Then, for each package PACKAGE:
;;
;; - If PACKAGE is not referenced by any other Spacemacs layer, define a
;;   function `pomelo-programming/init-PACKAGE' to load and initialize the package.

;; - Otherwise, PACKAGE is already referenced by another Spacemacs layer, so
;;   define the functions `pomelo-programming/pre-init-PACKAGE' and/or
;;   `pomelo-programming/post-init-PACKAGE' to customize the package as it is loaded.

;;; Code:

(defconst pomelo-programming-packages
  '(youdao-dictionary
    company
    (occur-mode :location built-in)
    ;; (gulpjs :location (recipe :fetcher github :repo "zilongshanren/emacs-gulpjs"))
    lispy
    minimap
    ;; yasnippet-snippets
    vc-msg
    )
  )
;; vc-msg用来查看当前提交项目中的提交信息
(defun pomelo-programming/init-vc-msg ()
  (use-package vc-msg
    :init
    :config
    (global-set-key (kbd "C-c mi") 'vc-msg-show)
    (spacemacs/set-leader-keys "sm" 'vc-msg-show)))

;; (defun pomelo-programming/init-yasnippet-snippets ()
;;   (use-package yasnippet-snippets
;;     :config
;;     (progn
;;       (if (spacemacs/system-is-mswindows)
;;           (setq yas--default-user-snippets-dir "d:/Emacs/.spacemacs.d/snippets")
;;         (setq yas--default-user-snippets-dir "~/.spacemacs.d/snippets")
;;         )
;;       (add-to-list 'yas-snippet-dirs yas--default-user-snippets-dir)
;;       (yas-load-directory yas--default-user-snippets-dir)
;;       )))

;; code minimap
(defun pomelo-programming/init-minimap ()
  (use-package minimap
    :defer t
    ;; :map prog-mode-map
    ;; (("C-p mp"). minimap-mode)
    :config
    (define-key prog-mode-map (kbd "C-c mp") 'minimap-mode)
    ))

;; lisp configuration
(defun pomelo-programming/init-lispy()
  (use-package lispy
    :init
    :defer t))

;; (defun pomelo-programming/init-gulpjs()
;;   (use-package gulpjs
;;     :init))

(defun pomelo-programming/init-youdao-dictionary()
  (use-package youdao-dictionary
    :defer t
    :init
    (spacemacs/set-leader-keys "oy" 'youdao-dictionary-search-at-point+)
    (spacemacs/set-leader-keys "os" 'youdao-dictionary-play-voice-at-point)
    )
  )

(defun pomelo-programming/post-init-company()
  (setq company-minimum-prefix-length 1))

(defun pomelo-programming/post-init-occur-mode()
  (evilified-state-evilify-map occur-mode-map
    :mode occur-mode)
  )

;;; packages.el ends here
