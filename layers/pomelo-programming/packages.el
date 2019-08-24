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
;;     :defer 1
;;     :init
;;     (defun mege-lang-ccls-enable ()
;;       (condition-case nil)
;;       (lsp-ccls-enable)
;;       (user-error nil))
;;     (add-hook 'c-mode-hook #'magew-lang-ccls-enable)
;;     (add-hook 'c++-mode-hook #'magew-lang-ccls-enable)
;;     :config
;;     (setq ccls-sem-highlight-method 'font-lock)
;;     (ccls-use-default-rainbow-sem-highlight)
;;     (setq ccls-executable "/home/gec/.spacemacs.d/ccls")
;;     (setq ccls-extra-init-params '(
;;                                    :completion (:detailedLabel t)
;;                                    :diagnostics (frequencyMs 5000)
;;                                    :index (:reparseForDependency 1)))
;;     (with-eval-after-load 'projectile
;;       (progn (add-to-list 'projectile-globally-ignored-directories ".ccls-cache")
;;              (setq projectile-project-root-files-top-down-recurring
;;                    (append '("compile_commands.json"
;;                              ".ccls_root")
;;                            projectile-project-root-files-top-down-recurring))))))

;; ;; c/c++ mode configuration
;; (defun pomelo-programming/init-lsp-mode ()
;;   (use-package lsp-mode
;;     :defer 1
;;     :init
;;     :config
;;     (add-hook 'lsp-after-open-hook 'lsp-enable-imenu))

;; (defun pomelo-programming/init-lsp-ui ()
;;   (use-package lsp-ui
;;     :after (lsp-mode)
;;     :hook (lsp-mode . lsp-ui-mode)
;;     :config
;;     (setq lsp-ui-sideline-enable nil
;;           lsp-ui-sideline-show-symbol nil
;;           lsp-ui-sideline-show-symbol nil
;;           lsp-ui-sideline-ignore-duplicate t
;;           lsp-ui-doc-max-width 50
;;           )))

;; (defun pomelo-programming/init-company-lsp ()
;;   (use-package company-lsp
;;     :after (company lsp-mode)
;;     :init
;;     (setq company-lsp-cache-candidates nil)
;;     (add-hook 'lsp-mode-hook
;;               (lambda ()
;;                 (add-to-list (make-local-variable 'company-backends)
;;                              'company-lsp)))))

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
