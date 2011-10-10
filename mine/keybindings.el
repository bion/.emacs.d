(global-set-key (kbd "C-x C-c") 'dont-kill-emacs)
(global-set-key (kbd "C-x C-d") 'dired-default)
(global-set-key (kbd "C-x C-b") 'ibuffer)
(global-set-key (kbd "C-x B") 'bookmark-jump)
(global-set-key (kbd "M-i") 'idomenu)
(global-set-key (kbd "C-#") 'comment-region)
(global-set-key (kbd "M-#") 'uncomment-region)
(global-set-key (kbd "M-l")  'next-in-frame-window)
(global-set-key (kbd "M-h") 'previous-in-frame-window)
(global-set-key (kbd "M-L")  'next-multiframe-window)
(global-set-key (kbd "M-H") 'previous-multiframe-window)
(global-set-key (kbd "C-c r") 'rgrep)
(global-set-key (kbd "C-c M-r") 'rgrep-project)
(global-set-key (kbd "C-c M-R") 'rgrep-project-thing-at-point)
(global-set-key (kbd "C-c l") 'org-store-link)
(global-set-key (kbd "C-c a") 'org-agenda)
(global-set-key (kbd "C-c f") 'flyspell-correct-word-before-point)
(global-set-key (kbd "M-n") 'smart-symbol-go-forward)
(global-set-key (kbd "M-p") 'smart-symbol-go-backward)
(global-set-key (kbd "C-c m p") 'mpc-play-dir)
(global-set-key (kbd "C-c m q") 'mpc-queue-dir)
(global-set-key (kbd "C-c m c") 'mpc-clear-playlist)
(global-set-key (kbd "C-a") 'back-to-indentation)
(global-set-key (kbd "C-c C-a") 'beginning-of-line)
(global-set-key (kbd "C-k") 'kill-line)
(global-set-key (kbd "C-S-k") 'hungry-kill)
(global-set-key (kbd "C-c k") 'copy-line)
(global-set-key (kbd "C-c C-k") 'kill-whole-line)
(global-set-key (kbd "C-<backspace>") 'backwards-kill)
(global-set-key (kbd "S-<backspace>") 'pop-to-mark-command)
(global-set-key (kbd "C-z") 'jump-to-string)
(global-set-key (kbd "C-y") 'yank-and-indent)
(global-set-key (kbd "C-,") 'indent-buffer)
(global-set-key (kbd "M-s s") 'replace-string)
(global-set-key (kbd "M-s S") 'replace-regexp)
(global-set-key (kbd "C-c C-e") 'eshell)
(global-set-key (kbd "C-x C-r") 'ido-recentf-open)
(global-set-key (kbd "C-x M-f") 'project-find-file)
(global-set-key (kbd "C-c i f") 'insert-file-name)
(global-set-key (kbd "C-c i d") 'insert-dir-name)
(global-set-key (kbd "M-/") 'hippie-expand)
(global-set-key (kbd "M-?") 'comint-dynamic-complete-filename)
(global-set-key (kbd "C-c e") 'flymake-goto-next-error-and-show)
(global-set-key (kbd "C-x :") 'execute-extended-command)
(global-set-key (kbd "C-c M-v") 'scroll-other-window-down)
(global-set-key (kbd "C-c C-v") 'scroll-other-window)
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
(global-set-key (kbd "C-x K") 'kill-focused-buffer)
(global-set-key (kbd "C-o") 'next-newline)
(global-set-key (kbd "M-o") 'previous-newline)
(global-set-key (kbd "M-z") 'zap-up-to-char)
(global-set-key (kbd "M-P") 'clone-text-up)
(global-set-key (kbd "M-N") 'clone-text-down)
(global-set-key (kbd "C-S-p") 'move-text-up)
(global-set-key (kbd "C-S-n") 'move-text-down)
(global-set-key (kbd "C-S-b") 'bury-buffer)
(global-set-key (kbd "C-S-f") 'unbury-buffer)
(global-set-key (kbd "C-|") 'rotate-frame-window-buffers)

(global-set-key (kbd "C-<return>") 'embiggen-toggler)
(global-set-key (kbd "C-x ;") 'scratch-toggler)
(global-set-key (kbd "C-x d") 'dired-toggler)
(global-set-key (kbd "C-x g") 'magit-status)
(global-set-key (kbd "C-x m") 'music-toggler)

(global-set-key (kbd "C-c m q") 'emms-add-directory-tree)
(global-set-key (kbd "C-c m A") 'emms-play-directory-tree)
(global-set-key (kbd "C-c m n") 'emms-next)
(global-set-key (kbd "C-c m p") 'emms-previous)

(define-key dired-mode-map (kbd "q") 'dired-toggler)
(define-key emms-playlist-mode-map (kbd "q") 'music-toggler)
(define-key dired-mode-map (kbd "<backspace>") 'dired-up-directory)
(define-key dired-mode-map (kbd "e") 'dired-efap)

(global-set-key (kbd "C-x c") 'emux-create-terminal)
(global-set-key (kbd "C-x P") 'emux-load-session-template)
(global-set-key (kbd "C-S-l") 'emux-clear-screen)


(setq
 term-bind-key-alist
 '(("C-x c" . emux-create-terminal)
   ("C-x r" . emux-rename-terminal)
   ("C-x C" . emux-create-screen)
   ("C-x R" . emux-rename-screen)
   ("C-x s" . emux-switch-screen)
   ("C-x M-s" . emux-jump-to-screen)
   ("C-x S" . emux-switch-session)
   ("C-x P" . emux-load-session-template)
   ("C-x C-S-k" . emux-destroy-session)
   ("C-x B" . emux-jump-to-buffer)
   ("C-S-y" . emux-yank)
   ("C-x -" . emux-vsplit)
   ("C-x |" . emux-hsplit)
   ("C-c C-c" . term-interrupt-subjob)
   ("C-S-p" . previous-line)
   ("C-S-s" . isearch-forward)
   ("C-S-r" . isearch-backward)
   ("C-m" . term-send-raw)
   ("M-f" . term-send-forward-word)
   ("M-b" . term-send-backward-word)
   ("M-o" . term-send-backspace)
   ("M-d" . term-send-forward-kill-word)
   ("M-DEL" . term-send-backward-kill-word)
   ("M-," . term-send-input)
   ("M-." . comint-dynamic-complete)))
