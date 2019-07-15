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
    )
  )

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

;; some hooks
;; (add-hook 'c-mode-hook 'electric-pair-mode t)
(add-hook 'emacs-lisp-mode-hook 'lispy-mode t)

;;; packages.el ends here
