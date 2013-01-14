(define-key key-translation-map "\C-j" "\C-x")

(global-set-key (kbd "S-<backspace>") 'pop-to-mark-command)
(global-set-key (kbd "S-SPC") 'exchange-point-and-mark)

(global-set-key (kbd "C-o") 'indent-and-open-newline)
(global-set-key (kbd "C-?") 'revert-buffer)
(global-set-key (kbd "C-,") 'indent-buffer)
(global-set-key (kbd "C-|") 'rotate-frame-window-buffers)
(global-set-key (kbd "C-#") 'comment-region)
(global-set-key (kbd "C-<return>") 'embiggen-toggler)
(global-set-key (kbd "C-<backspace>") 'backwards-kill)

(global-set-key (kbd "M-l")  'next-in-frame-window)
(global-set-key (kbd "M-l")  'next-in-frame-window)
(global-set-key (kbd "M-o") 'previous-indent-and-open-newline)
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-M") 'er/expand-region)
(global-set-key (kbd "M-L")  'next-multiframe-window)
(global-set-key (kbd "M-H") 'previous-multiframe-window)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
(global-set-key (kbd "M-z") 'zap-up-to-char)
(global-set-key (kbd "M-P") 'clone-text-up)
(global-set-key (kbd "M-N") 'clone-text-down)
(global-set-key (kbd "M-|") 'toggle-window-split)
(global-set-key (kbd "M-/") 'hippie-expand)
(global-set-key (kbd "M-#") 'uncomment-region)
(global-set-key (kbd "M-?") 'comint-dynamic-complete-filename)

(global-set-key (kbd "C-S-y") 'kill-ring-search)
(global-set-key (kbd "C-S-l") 'emux-term-clear-screen)
(global-set-key (kbd "C-S-i") 'indent-region)
(global-set-key (kbd "C-S-p") 'move-text-up)
(global-set-key (kbd "C-S-n") 'move-text-down)
(global-set-key (kbd "C-S-b") 'bury-buffer)
(global-set-key (kbd "C-S-f") 'unbury-buffer)
(global-set-key (kbd "C-c C-S-f") 'winner-redo)
(global-set-key (kbd "C-c C-S-b") 'winner-undo)

(global-set-key (kbd "C-S-s") 'isearch-symbol-at-point)
(global-set-key (kbd "C-S-r") 'isearch-backward-symbol-at-point)
(global-set-key (kbd "C-S-m") 'mc/mark-all-like-this-dwim)
(global-set-key (kbd "C-S-k") 'hungry-kill)

(global-set-key (kbd "C-c j") 'newline-and-indent)
(global-set-key (kbd "C-c f") 'flyspell-correct-word-before-point)
(global-set-key (kbd "C-c k") 'copy-line)
(global-set-key (kbd "C-c e") 'flymake-goto-next-error-and-show)
(global-set-key (kbd "C-c f") 'simp-project-find-file)
(global-set-key (kbd "C-c d") 'simp-project-root-dired)
(global-set-key (kbd "C-c s") 'simp-project-rgrep)
(global-set-key (kbd "C-c S") 'simp-project-rgrep-thing-at-point)
(global-set-key (kbd "C-c M") 'rename-current-buffer-and-file)

(global-set-key (kbd "C-c C-f") 'simp-project-with-bookmark-find-file)
(global-set-key (kbd "C-c C-s") 'simp-project-with-bookmark-rgrep)
(global-set-key (kbd "C-c C-k") 'kill-whole-line)
(global-set-key (kbd "C-c C-a") 'beginning-of-line)
(global-set-key (kbd "C-c M-v") 'scroll-other-window-down)
(global-set-key (kbd "C-c C-v") 'scroll-other-window)
(global-set-key (kbd "C-c C-/") 'winner-undo)

(global-set-key (kbd "C-x B") 'bookmark-jump)
(global-set-key (kbd "C-x K") 'kill-focused-buffer)
(global-set-key (kbd "C-x g") 'magit-status)
(global-set-key (kbd "C-x G") 'magit-status-from-bookmark)

(global-set-key (kbd "C-x c") 'emux-term)
(global-set-key (kbd "C-x P") 'emux-session-load-template)
(global-set-key (kbd "C-x S") 'emux-session-switch)

(global-set-key (kbd "C-x C-d") 'dired-default)
(global-set-key (kbd "C-x C-b") 'ibuffer)
(global-set-key (kbd "C-x C-c") 'dont-kill-emacs)
(global-set-key (kbd "C-x C-p") 'eval-and-replace)
(global-set-key (kbd "C-x C-S-f") 'find-file-other-window)

(global-set-key (kbd "C-c m q") 'emms-add-directory-tree)
(global-set-key (kbd "C-c m p") 'emms-play-directory-tree)
(global-set-key (kbd "C-c m f") 'emms-next)
(global-set-key (kbd "C-c m b") 'emms-previous)

(define-key dired-mode-map (kbd "<backspace>") 'dired-up-directory)
(define-key dired-mode-map (kbd "e") 'dired-efap)

(provide 'my-keybindings)
