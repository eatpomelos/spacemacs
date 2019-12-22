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
    ;; elpa-mirror
    (recentf :location built-in)
    (profiler :location built-in)
    ;; esup
    benchmark-init
    ))

(defun pomelo-better-defaults/init-benchmark-init ()
  (use-package benchmark-init))

;; (defun pomelo-better-defaults/init-esup ()
;;   (use-package esup))

;; (defconst pomelo-better-defaults-packages
;;   '(
;;     (dired-mode :location built-in)
;;     (recentf :location built-in)
;;     )
;;   )
;; recentf不保存以下后缀的文件,这里要注意的是在emacs中正则表达式的'\'要写成'\\'
(defun pomelo-better-defaults/post-init-recentf ()
  (progn
    (setq recentf-exclude
          '("COMMIT_MSG"
            "COMMIT_EDITMSG"
            "github.*txt$"
            "/tmp/"
            "/ssh:"
            "/sudo:"
            "/TAGS$"
            "/GTAGS$"
            "/GRAGS$"
            "/GPATH$"
            "\\.mkv$"
            "\\.mp[34]$"
            "\\.avi$"
            "\\.pdf$"
            "\\.sub$"
            "\\.srt$"
            "\\.ass$"
            ".*png$"
            ".*bmp$"
            ".*db$"
            "init\\.el$"
            "/\\.spacemacs\\.d"))
    (setq recentf-max-saved-items 30)))

(defun pomelo-better-defaults/init-profiler ()
  (use-package profiler
    :init
    (evilified-state-evilify profiler-report-mode profiler-report-mode-map)))

;;; packages.el ends here
