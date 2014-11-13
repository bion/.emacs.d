(let ((default-directory "~/.emacs.d/"))
  (normal-top-level-add-subdirs-to-load-path))

(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

(dired "~/dev")

(mapc
 'require
 '(slime
   sclang
   smex
   auto-complete
   ido
   ido-ubiquitous
   visible-mark
   highline
   dired
   dired-efap
   stumpwm-mode
   misc
   simp
   move-dup
   expand-region
   winner
   midnight
   isearch-symbol-at-point
   multiple-cursors
   itail
   powerline
   smart-indent-rigidly
   my-erc
   my-isearch
   my-advice
   my-backup
   my-package
   my-emms
   my-autoloads
   my-add-to-lists
   my-project-defenitions
   my-functions
   my-keybindings
   my-hooks
   my-settings
   my-emux-templates
   my-initializers))
