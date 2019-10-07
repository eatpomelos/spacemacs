;; Briefly, each package to be installed or configured by this layer should be
;; added to `pomelo-better-defaults-packages'. Then, for each package PACKAGE:
;;
;; - If PACKAGE is not referenced by any other Spacemacs layer, define a
;;   function `pomelo-better-defaults/init-PACKAGE' to load and initialize the package.

;; - Otherwise, PACKAGE is already referenced by another Spacemacs layer, so
;;   define the functions `pomelo-better-defaults/pre-init-PACKAGE' and/or
;;   `pomelo-better-defaults/post-init-PACKAGE' to customize the package as it is loaded.

;;; Code:

(defconst pomelo-better-defaults-packages
  '(
    pomodoro
    elpa-mirror
    ))

(defun pomelo-better-defaults/init-pomodoro ()
  (use-package pomodoro)
  (pomodoro-add-to-mode-line))

(defun pomelo-better-defaults/init-elpa-mirror ()
  (use-package elpa-mirror
    :init))

;; (defun pomelo-better-defaults/init-osx-dictionary ()
;;   (use-package osx-dictionary
;;     :init
;;     (progn
;;       (evilified-state-evilify osx-dictionary-mode osx-dictionary-mode-map)
;;       (setq osx-dictionary-use-chinese-text-segmentation t)
;;       (global-set-key (kbd "C-c d") 'osx-dictionary-search-pointer)
;;       )))

;;; packages.el ends here
