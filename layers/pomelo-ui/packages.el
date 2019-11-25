;; Briefly, each package to be installed or configured by this layer should be
;; added to `pomelo-packages'. Then, for each package PACKAGE:
;;
;; - If PACKAGE is not referenced by any other Spacemacs layer, define a
;;   function `pomelo/init-PACKAGE' to load and initialize the package.

;; - Otherwise, PACKAGE is already referenced by another Spacemacs layer, so
;;   define the functions `pomelo/pre-init-PACKAGE' and/or
;;   `pomelo/post-init-PACKAGE' to customize the package as it is loaded.

;;; Code:

(defconst pomelo-ui-packages
  '(
    ;; doom-themes
    )
  )

;; (defun pomelo-ui/init-doom-themes ()
;;   (use-package doom-themes))
