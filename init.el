(setq rbenv-installation-dir "/usr/local")

(let ((default-directory "~/.emacs.d/"))
  (normal-top-level-add-subdirs-to-load-path))

(setq ring-bell-function 'ignore)
(setq mac-option-key-is-meta nil)
(setq mac-command-key-is-meta t)
(setq mac-command-modifier 'meta)
(setq mac-option-modifier nil)

(defadvice rspec-compile (around rspec-compile-around)
  "Use BASH shell for running the specs because of ZSH issues."
  (let ((shell-file-name "/bin/bash"))
    ad-do-it))

(ad-activate 'rspec-compile)
(setq rspec-use-rvm t)

(mapc
 'require
 '(smex
   highline
   ido
   ido-ubiquitous
   simp
   auto-complete
   dired
   dired-efap
   smart-indent-rigidly
   sclang
   my-isearch
   my-advice
   my-backup
   my-package
   my-autoloads
   my-add-to-lists
   my-functions
   my-keybindings
   my-hooks
   my-settings
   my-initializers
   my-project-defenitions))

(toggle-frame-maximized)
(global-auto-complete-mode t)
