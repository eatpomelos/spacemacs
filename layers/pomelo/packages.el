;;; packages.el --- pomelo layer packages file for Spacemacs.
;;
;; Copyright (c) 2012-2017 Sylvain Benner & Contributors
;;
;; Author: PomeloLy <pomelo@ubuntu>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;;; Commentary:

;; See the Spacemacs documentation and FAQs for instructions on how to implement
;; a new layer:
;;
;;   SPC h SPC layers RET
;;
;;
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
    lispy
    cedit
    )
  )

(defun pomelo/init-cedit()
  (use-package cedit
    :init
    (spacemacs/set-leader-keys
      "dcd" 'cedit-down-block
      "dcb" 'cedit-barf
      "dcr" 'cedit-raise
      "dcs" 'cedit-slurp
      "dcw" 'cedit-wrap-brace
      "dcn" 'cedit-forward-char
      "dcp" 'cedit-backward-char
      "dce" 'cedit-end-of-statement
      "dcup" 'cedit-up-block-backward
      "dcuf" 'cedit-up-block-forward
      "dca" 'cedit-beginning-of-statement
      "dck" 'cedit-splice-killing-backward)
    ))

(defun pomelo/init-lispy()
  (use-package lispy
    :init
    (progn
      (add-hook 'emacs-lisp-mode-hook 'lispy-mode)
      )))

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
  (setq company-minimum-prefix-length 1)
  (global-company-mode t))

(defun pomelo/post-init-occur-mode()
  (evilified-state-evilify-map occur-mode-map
    :mode occur-mode)
  )
;;; packages.el ends here
