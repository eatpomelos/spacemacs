;; Briefly, each package to be installed or configured by this layer should be
;; added to `pomelo-packages'. Then, for each package PACKAGE:
;;
;; - If PACKAGE is not referenced by any other Spacemacs layer, define a
;;   function `pomelo/init-PACKAGE' to load and initialize the package.

;; - Otherwise, PACKAGE is already referenced by another Spacemacs layer, so
;;   define the functions `pomelo/pre-init-PACKAGE' and/or
;;   `pomelo/post-init-PACKAGE' to customize the package as it is loaded.

;;; Code:

(defconst pomelo-packages
  '(youdao-dictionary
    company
    (occur-mode :location built-in)
    (gulpjs :location (recipe :fetcher github :repo "zilongshanren/emacs-gulpjs"))
    cedit
    lispy
    )
  )

(defun pomelo/init-lispy()
  (use-package lispy
    :init))

(defun pomelo/init-cedit()
  (use-package cedit
    :init))

(defun pomelo/init-gulpjs()
  (use-package gulpjs
    :init))

(defun pomelo/init-youdao-dictionary()
  (use-package youdao-dictionary
    :defer t
    :init
    (spacemacs/set-leader-keys "oy" 'youdao-dictionary-search-at-point+)
    )
  )

(defun pomelo/post-init-company()
  (setq company-minimum-prefix-length 1))

(defun pomelo/post-init-occur-mode()
  (evilified-state-evilify-map occur-mode-map
    :mode occur-mode)
  )

;; global config
(global-company-mode t)
(global-hungry-delete-mode t)

;; some hooks
(add-hook 'c-mode-hook 'electric-pair-mode t)
(add-hook 'emacs-lisp-mode-hook 'lispy-mode t)

;; some pravite config
(defun open-pomelo-config()
  "open my config file
use \"fep\" to open my package.el file"
  (interactive)
  (find-file "/home/pomelo/.spacemacs.d/layers/pomelo/packages.el"))

(spacemacs/set-leader-keys "fep" 'open-pomelo-config)
;;; packages.el ends here
