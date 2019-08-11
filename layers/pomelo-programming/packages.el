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
    (gulpjs :location (recipe :fetcher github :repo "zilongshanren/emacs-gulpjs"))
    lispy
    cedit
    ;; lsp configuration
    ;; lsp-mode
    ;; lsp-ui
    ;; company-lsp
    ;; helm-lsp
    ;; dap-mode
    ;; lsp-treemacs
    ;; ccls
    )
  )

;; ;; ccls + lsp
;; (defun pomelo-programming/init-ccls ()
;;   (use-package ccls
;;     :init
;;     :hook ((c-mode c++-mode objc-mode) .
;;            (lambda () (require 'ccls) (lsp))))
;;   (setq ccls-executable "/home/gec/.spacemacs.d/ccls"))

;; ;; c/c++ mode configuration
;; (defun pomelo-programming/init-lsp-mode ()
;;   (use-package lsp-mode
;;     :init
;;     :hook (c-mode . lsp)
;;     :commands lsp))

;; (defun pomelo-programming/init-lsp-ui ()
;;     (use-package lsp-ui :commands lsp-ui-mode))

;; (defun pomelo-programming/init-company-lsp ()
;;     (use-package company-lsp :commands company-lsp))

;; (defun pomelo-programming/init-helm-lsp ()
;;     (use-package helm-lsp :commands helm-lsp))

;; (defun pomelo-programming/init-lsp-treemacs ()
;;     (use-package lsp-treemacs :commands lsp-treemacs-error-list))

;; (defun pomelo-programming/init-dap-mode ()
;;     (use-package dap-mode))



;; lisp configuration
(defun pomelo-programming/init-lispy()
  (use-package lispy
    :init))

(defun pomelo-programming/init-gulpjs()
  (use-package gulpjs
    :init))

(defun pomelo-programming/init-cedit()
  (use-package cedit
    :init))


(defun pomelo-programming/init-youdao-dictionary()
  (use-package youdao-dictionary
    :defer t
    :init
    (spacemacs/set-leader-keys "oy" 'youdao-dictionary-search-at-point+)
    )
  )

(defun pomelo-programming/post-init-company()
  (setq company-minimum-prefix-length 1))

(defun pomelo-programming/post-init-occur-mode()
  (evilified-state-evilify-map occur-mode-map
    :mode occur-mode)
  )

;;; packages.el ends here
