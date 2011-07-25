;; HOOKS
(add-hook 'find-file-hook 'delete-trailing-whitespace) ;; "
(add-hook 'find-file-hook 'untabify-all)
(add-hook 'before-save-hook 'delete-trailing-whitespace) ;; go to hell trailing whitespace
(add-hook 'before-save-hook 'untabify-all)
(add-hook 'after-save-hook 'executable-make-buffer-file-executable-if-script-p) ;; make it executable if it should be (starts with #!)
(add-hook 'ruby-mode-hook (lambda ()
                            (autopair-mode)
                            (rvm-use-default)
                            (flymake-ruby-load)))

(add-hook 'javascript-mode-hook (lambda ()
                                  (autopair-mode)
                                  ))
(add-hook 'css-mode-hook (lambda ()
                           (autopair-mode)
                           ))
(add-hook 'magit-log-edit-mode-hook (lambda ()
                                 (flyspell-mode)
                                 ))
(add-hook 'emacs-lisp-mode-hook           (lambda () (paredit-mode +1)))
(add-hook 'lisp-mode-hook                 (lambda () (paredit-mode +1)))
(add-hook 'lisp-interaction-mode-hook     (lambda () (paredit-mode +1)))
(add-hook 'slime-repl-mode-hook           (lambda () (paredit-mode +1)))
