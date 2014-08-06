(define-key key-translation-map "\C-j" "\C-x")

(global-set-key (kbd "S-<backspace>") 'pop-to-mark-command)
(global-set-key (kbd "S-<return>") 'newline-and-indent)

(global-set-key (kbd "C-=") 'text-scale-increase)
(global-set-key (kbd "C--") 'text-scale-decrease)
(global-set-key (kbd "C-0") 'text-scale-adjust)
(global-set-key (kbd "C-o") 'previous-indent-and-open-newline)
(global-set-key (kbd "C-?") 'revert-buffer)
(global-set-key (kbd "C-,") 'indent-buffer)
(global-set-key (kbd "C-|") 'rotate-frame-window-buffers)
(global-set-key (kbd "C-#") 'comment-region)
(global-set-key (kbd "C-!") 'shell-command-on-dwim-replace)
(global-set-key (kbd "C-<return>") 'embiggen-toggler)
(global-set-key (kbd "C-<backspace>") 'backwards-kill)

(global-set-key (kbd "M-l") 'next-in-frame-window)
(global-set-key (kbd "M-h") 'previous-in-frame-window)
(global-set-key (kbd "M-o") 'indent-and-open-newline)
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-B") 'backward-to-word)
(global-set-key (kbd "M-F") 'forward-to-word)
(global-set-key (kbd "M-M") 'er/expand-region)
(global-set-key (kbd "M-L")  'next-multiframe-window)
(global-set-key (kbd "M-H") 'previous-multiframe-window)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
(global-set-key (kbd "M-z") 'zap-up-to-char)
(global-set-key (kbd "M-P") 'md/duplicate-up)
(global-set-key (kbd "M-N") 'md/duplicate-down)
(global-set-key (kbd "M-|") 'toggle-window-split)
(global-set-key (kbd "M-/") 'hippie-expand)
(global-set-key (kbd "M-#") 'uncomment-region)
(global-set-key (kbd "M-?") 'comint-dynamic-complete-filename)

(global-set-key (kbd "M-i") nil)
(global-set-key (kbd "M-i m") 'flyspell-mode)
(global-set-key (kbd "M-i b") 'ispell-buffer)
(global-set-key (kbd "M-i w") 'ispell-word)
(global-set-key (kbd "M-i s") 'dictionary-search)

(global-set-key (kbd "C-S-y") 'kill-ring-search)
(global-set-key (kbd "C-S-j") (lambda () (interactive) (join-line -1)))
(global-set-key (kbd "C-S-l") 'emux-term-clear-previous-scrollback)
(global-set-key (kbd "C-S-i") 'indent-region)
(global-set-key (kbd "C-S-p") 'md/move-lines-up)
(global-set-key (kbd "C-S-n") 'md/move-lines-down)
(global-set-key (kbd "C-S-b") 'bury-buffer)
(global-set-key (kbd "C-S-f") 'unbury-buffer)
(global-set-key (kbd "C-S-SPC") 'exchange-point-and-mark)

(global-set-key (kbd "C-S-s") 'isearch-symbol-at-point)
(global-set-key (kbd "C-S-r") 'isearch-backward-symbol-at-point)
(global-set-key (kbd "C-S-m") 'mc/mark-all-like-this-dwim)
(global-set-key (kbd "C-S-k") 'hungry-kill)

(global-set-key (kbd "M-j") nil)
(global-set-key (kbd "M-j '") 'toggle-quote-type)
(global-set-key (kbd "M-j j") 'newline-and-indent)
(global-set-key (kbd "M-j J") 'bookmark-jump)
(global-set-key (kbd "M-j f") 'flyspell-correct-word-before-point)
(global-set-key (kbd "M-j k") 'copy-line)
(global-set-key (kbd "M-j e") 'flymake-goto-next-error-and-show)
(global-set-key (kbd "M-j M") 'rename-current-buffer-and-file)
(global-set-key (kbd "M-j K") 'kill-focused-buffer)

(global-set-key (kbd "M-j f") 'simp-project-find-file)
(global-set-key (kbd "M-j d") 'simp-project-root-dired)
(global-set-key (kbd "M-j s") 'simp-project-rgrep)
(global-set-key (kbd "M-j S") 'simp-project-rgrep-thing-at-point)
(global-set-key (kbd "M-j b") 'simp-project-ibuffer-files-only)
(global-set-key (kbd "M-j B") 'simp-project-ibuffer)
(global-set-key (kbd "M-j g") 'magit-status)
(global-set-key (kbd "M-j G") 'git-timemachine)

(global-set-key (kbd "M-j M-f") 'simp-project-with-bookmark-find-file)
(global-set-key (kbd "M-j M-s") 'simp-project-with-bookmark-rgrep)
(global-set-key (kbd "M-j M-b") 'simp-project-with-bookmark-ibuffer)
(global-set-key (kbd "M-j M-g") 'magit-status-from-bookmark)

(global-set-key (kbd "M-j M-k") 'kill-whole-line)

(global-set-key (kbd "M-j C-S-f") 'winner-redo)
(global-set-key (kbd "M-j C-S-b") 'winner-undo)

(global-set-key (kbd "M-j c") 'emux-term)
(global-set-key (kbd "M-j P") 'emux-session-load-template)
(global-set-key (kbd "M-j C-s") 'emux-session-switch)

(global-set-key (kbd "C-x f") 'fill-region)
(global-set-key (kbd "C-x C-d") 'dired-jump)
(global-set-key (kbd "C-x C-b") 'ibuffer)
(global-set-key (kbd "C-x C-c") 'dont-kill-emacs)
(global-set-key (kbd "C-x C-p") 'eval-and-replace)
(global-set-key (kbd "C-x C-s") 'force-save)
(global-set-key (kbd "C-x C-S-f") 'find-file-other-window)

(global-set-key (kbd "M-j m q") 'emms-add-directory-tree)
(global-set-key (kbd "M-j m p") 'emms-play-directory-tree)
(global-set-key (kbd "M-j m f") 'emms-next)
(global-set-key (kbd "M-j m b") 'emms-previous)

(provide 'my-keybindings)
