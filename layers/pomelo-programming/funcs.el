;; 为了偷懒这里，设置一个文件来保存宏
(defun open-my-define-file ()
  "open my kbd macro file"
  (interactive)
  (setq my-kbd-macro "~/.spacemacs.d/layers/pomelo-programming/define.emacs")
  (find-file my-kbd-macro))

;; 定义一个自己函数用来建立snippet,这个函数是参考的源文件中的函数，中间有很多东西还不是很清楚
(defun pomelo/yas-new-snippet (&optional no-template)
  "Pops a new buffer for writing a snippet.

Expands a snippet-writing snippet, unless the optional prefix arg
NO-TEMPLATE is non-nil."
  (interactive "P")
  (let ((snippet-directories yas--default-user-snippets-dir)
        (yas-selected-text (or yas-selected-text
                               (and (region-active-p)
                                    (buffer-substring-no-properties
                                     (region-beginning) (region-end))))))

    (switch-to-buffer yas-new-snippet-buffer-name)
    (erase-buffer)
    (kill-all-local-variables)
    (snippet-mode)
    (yas-minor-mode 1)
    (set (make-local-variable 'yas--guessed-modes)
         'emacs-lisp-mode)
    (set (make-local-variable 'default-directory)
         snippet-directories)
    (if (and (not no-template) yas-new-snippet-default)
        (yas-expand-snippet yas-new-snippet-default))))

;;set transparent effect
(setq alpha-list '((100 100) (75 45) (45 15)))
(defun loop-alpha ()
  (interactive)
  (let ((h (car alpha-list))) ;; head value will set to
    ((lambda (a ab)
       (set-frame-parameter (selected-frame) 'alpha (list a ab))
       (add-to-list 'default-frame-alist (cons 'alpha (list a ab)))
       ) (car h) (car (cdr h)))
    (setq alpha-list (cdr (append alpha-list (list h))))
    )
  )
