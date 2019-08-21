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
    ))

(defun pomelo-better-defaults/init-pomodoro ()
  (require 'pomodoro)
  (pomodoro-add-to-mode-line))


;;; packages.el ends here
