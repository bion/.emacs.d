(define-key key-translation-map "\C-j" "\C-x")

(global-set-key (kbd "S-<backspace>") 'pop-to-mark-command)
(global-set-key (kbd "S-SPC") 'exchange-point-and-mark)

(global-set-key (kbd "C-a") 'back-to-indentation)
(global-set-key (kbd "C-o") 'next-newline)
(global-set-key (kbd "C-z") 'jump-to-string)
(global-set-key (kbd "C-?") 'revert-buffer)
(global-set-key (kbd "C-,") 'indent-buffer)
(global-set-key (kbd "C-|") 'rotate-frame-window-buffers)
(global-set-key (kbd "C-#") 'comment-region)
(global-set-key (kbd "C-<return>") 'embiggen-toggler)
(global-set-key (kbd "C-<backspace>") 'backwards-kill)

(global-set-key (kbd "M-i") 'idomenu)
(global-set-key (kbd "M-l")  'next-in-frame-window)
(global-set-key (kbd "M-h") 'previous-in-frame-window)
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-M") 'er/expand-region)
(global-set-key (kbd "M-L")  'next-multiframe-window)
(global-set-key (kbd "M-H") 'previous-multiframe-window)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
(global-set-key (kbd "M-o") 'previous-newline)
(global-set-key (kbd "M-z") 'zap-up-to-char)
(global-set-key (kbd "M-P") 'clone-text-up)
(global-set-key (kbd "M-N") 'clone-text-down)
(global-set-key (kbd "M-|") 'toggle-window-split)
(global-set-key (kbd "M-/") 'hippie-expand)
(global-set-key (kbd "M-#") 'uncomment-region)
(global-set-key (kbd "M-?") 'comint-dynamic-complete-filename)
(global-set-key (kbd "M-<return>") 'space-out)

(global-set-key (kbd "C-S-y") 'kill-ring-search)
(global-set-key (kbd "C-S-l") 'emux-terminal-clear-screen)
(global-set-key (kbd "C-S-i") 'indent-region)
(global-set-key (kbd "C-S-p") 'move-text-up)
(global-set-key (kbd "C-S-n") 'move-text-down)
(global-set-key (kbd "C-S-b") 'bury-buffer)
(global-set-key (kbd "C-S-f") 'unbury-buffer)
(global-set-key (kbd "C-S-s") 'isearch-symbol-at-point)
(global-set-key (kbd "C-S-r") 'isearch-backward-symbol-at-point)
(global-set-key (kbd "C-S-m") 'mc/mark-all-like-this-dwim)
(global-set-key (kbd "C-S-k") 'hungry-kill)

(global-set-key (kbd "C-c j") 'newline-and-indent)
(global-set-key (kbd "C-c f") 'flyspell-correct-word-before-point)
(global-set-key (kbd "C-c k") 'copy-line)
(global-set-key (kbd "C-c e") 'flymake-goto-next-error-and-show)
(global-set-key (kbd "C-c c") 'emux-terminal-create)
(global-set-key (kbd "C-c P") 'emux-session-load-template)
(global-set-key (kbd "C-c g") 'magit-status)
(global-set-key (kbd "C-c G") 'google-this)
(global-set-key (kbd "C-c r") 'simp-project-rgrep)
(global-set-key (kbd "C-c R") 'simp-project-rgrep-thing-at-point)
(global-set-key (kbd "C-c K") 'kill-focused-buffer)
(global-set-key (kbd "C-c M") 'rename-file-and-buffer)

(global-set-key (kbd "C-c C-k") 'kill-whole-line)
(global-set-key (kbd "C-c C-a") 'beginning-of-line)
(global-set-key (kbd "C-c M-v") 'scroll-other-window-down)
(global-set-key (kbd "C-c C-v") 'scroll-other-window)
(global-set-key (kbd "C-c C-d") 'dired-default)
(global-set-key (kbd "C-c C-b") 'ibuffer)

(global-set-key (kbd "C-x C-c") 'dont-kill-emacs)
(global-set-key (kbd "C-x M-f") 'simp-project-find-file)
(global-set-key (kbd "C-x C-p") 'eval-and-replace)
(global-set-key (kbd "C-x C-S-f") 'find-file-other-window)

(global-set-key (kbd "C-c m q") 'emms-add-directory-tree)
(global-set-key (kbd "C-c m a") 'emms-play-directory-tree)
(global-set-key (kbd "C-c m n") 'emms-next)
(global-set-key (kbd "C-c m p") 'emms-previous)

(define-key emms-playlist-mode-map (kbd "q") 'music-toggler)
(define-key dired-mode-map (kbd "<backspace>") 'dired-up-directory)
(define-key dired-mode-map (kbd "e") 'dired-efap)

(setq
 term-bind-key-alist
 '(("C-x r" . emux-terminal-rename)
   ("C-x K" . emux-terminal-destroy)
   ("C-x C" . emux-screen-create)
   ("C-x R" . emux-screen-rename)
   ("C-x s" . emux-screen-switch)
   ("C-x M-s" . emux-jump-to-screen)
   ("C-x S" . emux-session-switch)
   ("C-x C-S-k" . emux-session-destroy)
   ("C-x B" . emux-jump-to-buffer)
   ("C-S-y" . emux-terminal-yank)
   ("C-x -" . emux-terminal-vsplit)
   ("C-x |" . emux-terminal-hsplit)
   ("C-c C-c" . term-interrupt-subjob)
   ("C-c C-S-c" . term-kill-subjob)
   ("C-S-p" . previous-line)
   ("C-S-s" . isearch-forward)
   ("C-S-r" . isearch-backward)
   ("M-f" . term-send-forward-word)
   ("M-b" . term-send-backward-word)
   ("M-d" . term-send-forward-kill-word)
   ("M-DEL" . term-send-backward-kill-word)))

(provide 'my-keybindings)
