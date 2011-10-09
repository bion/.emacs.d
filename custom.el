(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-term-color-vector [unspecified "white" "red" "green" "yellow" "royal blue" "magenta" "cyan" "white"] t)
 '(column-highlight-mode t)
 '(column-number-mode t)
 '(crosshairs-overlay-priority 100)
 '(css-indent-level 2)
 '(css-indent-offset 2)
 '(display-time-mode t)
 '(elscreen-display-tab nil)
 '(fringe-mode (quote (1 . 1)) nil (fringe))
 '(global-linum-mode nil)
 '(global-visible-mark-mode t)
 '(global-whitespace-mode t)
 '(grep-command "grep -nH -e ")
 '(grep-find-command nil)
 '(grep-find-ignored-files (quote (".#*" "*.o" "*~" "*.bin" "*.lbin" "*.so" "*.a" "*.ln" "*.blg" "*.bbl" "*.elc" "*.lof" "*.glo" "*.idx" "*.lot" "*.fmt" "*.tfm" "*.class" "*.fas" "*.lib" "*.mem" "*.x86f" "*.sparcf" "*.dfsl" "*.pfsl" "*.d64fsl" "*.p64fsl" "*.lx64fsl" "*.lx32fsl" "*.dx64fsl" "*.dx32fsl" "*.fx64fsl" "*.fx32fsl" "*.sx64fsl" "*.sx32fsl" "*.wx64fsl" "*.wx32fsl" "*.fasl" "*.ufsl" "*.fsl" "*.dxl" "*.lo" "*.la" "*.gmo" "*.mo" "*.toc" "*.aux" "*.cp" "*.fn" "*.ky" "*.pg" "*.tp" "*.vr" "*.cps" "*.fns" "*.kys" "*.pgs" "*.tps" "*.vrs" "*.pyc" "*.pyo" "#*")))
 '(grep-find-template "find . <X> -type f <F> -exec grep <C> -nH -e <R> {} +")
 '(grep-highlight-matches (quote auto))
 '(grep-template "grep <X> <C> -nH -e <R> <F>")
 '(grep-use-null-device nil)
 '(highline-selected-window t)
 '(hippie-expand-try-functions-list (quote (yas/hippie-try-expand try-complete-file-name-partially try-complete-file-name try-expand-all-abbrevs try-expand-list try-expand-line try-expand-dabbrev try-expand-dabbrev-all-buffers try-expand-dabbrev-from-kill try-complete-lisp-symbol-partially try-complete-lisp-symbol)))
 '(ido-auto-merge-delay-time 5)
 '(ido-enable-flex-matching t)
 '(ido-everywhere t)
 '(ido-max-directory-size 100000)
 '(ido-mode (quote both) nil (ido))
 '(ido-use-virtual-buffers t)
 '(indent-tabs-mode t)
 '(indicate-buffer-boundaries (quote left))
 '(indicate-empty-lines t)
 '(iswitchb-use-virtual-buffers t nil (recentf))
 '(js-indent-level 2)
 '(js2-auto-indent-p nil)
 '(js2-basic-offset 2)
 '(js2-bounce-indent-p t)
 '(js2-mirror-mode nil)
 '(kill-ring-max 200)
 '(kill-whole-line t)
 '(linum-delay t)
 '(linum-eager t)
 '(magit-commit-all-when-nothing-staged (quote ask-stage))
 '(magit-completing-read-function (quote ido-completing-read))
 '(magit-process-popup-time 0)
 '(magit-save-some-buffers nil)
 '(multi-term-program "/bin/zsh")
 '(multi-term-scroll-show-maximum-output t)
 '(mumamo-chunk-coloring 10)
 '(nxml-child-indent 2)
 '(nxml-outline-child-indent 2)
 '(save-interprogram-paste-before-kill t)
 '(save-place t nil (saveplace))
 '(sgml-basic-offset 4)
 '(size-indication-mode t)
 '(tab-width 2)
 '(term-buffer-maximum-size 16384)
 '(term-default-bg-color "#000000")
 '(term-default-fg-color "#AAAAAA")
 '(term-unbind-key-list (quote ("C-z" "C-x" "C-c" "C-h" "C-l" "<ESC>")))
 '(text-mode-hook (quote (turn-on-auto-fill text-mode-hook-identify)))
 '(transient-mark-mode nil)
 '(uniquify-buffer-name-style (quote forward) nil (uniquify))
 '(visible-mark-max 1)
 '(whitespace-global-modes t)
 '(whitespace-line-column 800)
 '(yank-pop-change-selection t)
 '(yas/global-mode t nil (yasnippet))
 '(yas/trigger-key ""))

(deftheme selwyn
  "my theme")
(custom-theme-set-faces
 'selwyn
 '(default ((t (:background "#050505" :foreground "#AAA" :height 100 :width normal :foundry "unknown" :family "dejavu sans mono"))))
 '(cursor ((t (:background "#FF0" :foreground "#F00"))))
 '(mode-line ((t (:background "#111" :foreground "#888888"))))
 '(mode-line-inactive ((t (:background "#262626" :foreground "#888888"))))
 '(fringe ((t (:background "#111"))))
 '(minibuffer-prompt ((t (:foreground "#09F" :weight bold))))
 '(font-lock-builtin-face ((t (:foreground "#F0F"))))
 '(font-lock-comment-face ((t (:foreground "#af5f00"))))
 '(font-lock-constant-face ((t (:foreground "#0F0"))))
 '(font-lock-keyword-face ((t (:foreground "#00afff" :weight bold))))
 '(font-lock-string-face ((t (:foreground "#090"))))
 '(font-lock-type-face ((t (:foreground "#ff5fff" :weight bold))))
 '(font-lock-warning-face ((t (:background "#ff0000" :foreground "#ffffff"))))
 '(isearch ((t (:background "#ffaf5f" :foreground "#000000"))))
 '(link ((t (:foreground "#00afff" :underline t))))
 '(link-visited ((t (:foreground "#ff5fff" :underline t))))
 '(button ((t (:underline t))))
 '(header-line ((t (:background "#262626" :foreground "#888888")))))
(provide-theme 'selwyn)

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:stipple nil :background "#000000" :foreground "#AAA" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 98 :width normal :foundry "unknown" :family "DejaVu Sans Mono"))))
 '(erc-prompt-face ((t (:background "lightBlue2" :foreground "green" :weight bold))))
 '(flymake-errline ((t (:background "red"))))
 '(font-lock-comment-delimiter-face ((t (:inherit font-lock-comment-face :foreground "#f90"))))
 '(font-lock-comment-face ((t (:foreground "#444"))))
 '(font-lock-function-name-face ((t (:foreground "#F90" :weight bold))))
 '(font-lock-string-face ((t (:foreground "#c00"))))
 '(font-lock-variable-name-face ((t (:foreground "#FF0" :weight bold))))
 '(fringe ((t (:background "#111" :foreground "#500"))))
 '(highlight ((t (:background "#330"))))
 '(highline-face ((t (:background "#000011"))))
 '(highline-vertical-face ((t (:background "#030303"))))
 '(ido-first-match ((t (:foreground "#FF0" :weight bold))))
 '(ido-only-match ((t (:foreground "#0F0" :weight extra-bold))))
 '(isearch ((t (:background "#220022" :foreground "#FF00FF"))))
 '(linum ((t (:foreground "#0F0"))))
 '(magit-diff-add ((t (:foreground "#0F0"))))
 '(magit-diff-del ((t (:foreground "#F00"))))
 '(magit-item-highlight ((t (:background "#002"))))
 '(mode-line ((t (:background "#111" :foreground "#0F0"))))
 '(mode-line-inactive ((t (:background "#262626" :foreground "#777"))))
 '(regex-tool-matched-face ((t (:background "#020" :foreground "Orange" :weight bold))))
 '(region ((t (:background "#550055"))))
 '(show-paren-match ((t (:background "#06F" :foreground "#000" :weight ultra-bold))))
 '(show-paren-mismatch ((t (:background "#F00" :foreground "white" :weight ultra-bold))))
 '(whitespace-hspace ((t (:foreground "#222"))))
 '(whitespace-indentation ((t (:inherit nil :foreground "#400"))))
 '(whitespace-line ((t (:inherit default))))
 '(whitespace-newline ((t (:foreground "#111"))))
 '(whitespace-space ((t (:foreground "#111"))))
 '(whitespace-tab ((t (:foreground "#222"))))
 '(whitespace-trailing ((t (:foreground "#F00" :weight bold))))
 '(yas/field-highlight-face ((t (:background "#300")))))
