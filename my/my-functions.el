(defun go-to-hell-bars ()
  (if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
  (if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
  (if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1)))

(defun hungry-kill (&optional arg)
  (interactive "P")
  (kill-line)
  (delete-region (point) (1- (next-non-white))))

(defun backwards-kill ()
  (interactive)
  (delete-region (point) (line-beginning-position))
  (indent-according-to-mode))

;; from http://emacsblog.org/2009/05/18/copying-lines-not-killing/
(defun copy-line (&optional arg)
  "Do a kill-line but copy rather than kill. This function directly
calls kill-line, so see documentation of kill-line for how to use it
including prefix argument and relevant variables. This function works
by temporarily making the buffer read-only, so I suggest setting
kill-read-only-ok to t."
  (interactive "P")
  (toggle-read-only 1)
  (kill-line arg)
  (toggle-read-only 0))

(defun indent-buffer ()
  "Fix indentation on the entire buffer."
  (interactive)
  (save-excursion
    (indent-region (point-min) (point-max))))

(defun untabify-all ()
  (interactive)
  (untabify (point-min) (point-max)))

(defun flymake-goto-next-error-and-show ()
  (interactive)
  (flymake-goto-next-error)
  (flymake-display-err-menu-for-current-line))

(defun kill-focused-buffer ()
  (interactive)
  (kill-buffer (current-buffer)))

(defun next-in-frame-window ()
  (interactive)
  (select-window (next-window)))

(defun previous-in-frame-window ()
  (interactive)
  (select-window (previous-window)))

(defun auto-make-directory ()
  (let ((dir (file-name-directory (buffer-file-name))))
    (unless (file-readable-p dir)
      (make-directory dir t))))

(defun rotate-frame-window-buffers ()
  (interactive)
  (let ((map
         (mapcar
          (lambda (window)
            `(,window
              ,(window-buffer
                (next-window window))))
          (window-list))))
    (mapcar
     (lambda (window-to-buffer)
       (let ((window (car window-to-buffer))
             (buffer (cadr window-to-buffer)))
         (select-window window)
         (switch-to-buffer buffer))) map)))

(defun toggle-window-split ()
  (interactive)
  (if (= (count-windows) 2)
      (let* ((this-win-buffer (window-buffer))
             (next-win-buffer (window-buffer (next-window)))
             (this-win-edges (window-edges (selected-window)))
             (next-win-edges (window-edges (next-window)))
             (this-win-2nd (not (and (<= (car this-win-edges)
                                         (car next-win-edges))
                                     (<= (cadr this-win-edges)
                                         (cadr next-win-edges)))))
             (splitter
              (if (= (car this-win-edges)
                     (car (window-edges (next-window))))
                  'split-window-horizontally
                'split-window-vertically)))
        (delete-other-windows)
        (let ((first-win (selected-window)))
          (funcall splitter)
          (if this-win-2nd (other-window 1))
          (set-window-buffer (selected-window) this-win-buffer)
          (set-window-buffer (next-window) next-win-buffer)
          (select-window first-win)
          (if this-win-2nd (other-window 1))))))

(defun eval-and-replace ()
  "Replace the preceding sexp with its value."
  (interactive)
  (backward-kill-sexp)
  (condition-case nil
      (prin1 (eval (read (current-kill 0)))
             (current-buffer))
    (error (message "Invalid expression")
           (insert (current-kill 0)))))

(defun rename-current-buffer-and-file ()
  "Renames current buffer and file it is visiting."
  (interactive)
  (let ((name (buffer-name))
        (filename (buffer-file-name)))
    (if (not (and filename (file-exists-p filename)))
        (error "Buffer '%s' is not visiting a file!" name)
      (let ((new-name (read-file-name "New name: " default-directory filename)))
        (if (get-buffer new-name)
            (error "A buffer named '%s' already exists!" new-name)
          (rename-file filename new-name 1)
          (rename-buffer new-name)
          (set-visited-file-name new-name)
          (set-buffer-modified-p nil)
          (message "File '%s' successfully renamed to '%s'"
                   name (file-name-nondirectory new-name)))))))

(defmacro with-directory-from-bookmark (&rest body)
  "Run BODY with default-directory set to
to the location of the selected bookmark."
  `(let ((bookmark
          (list
           (bookmark-completing-read
            "bookmark"
            bookmark-current-bookmark))))
     (let ((default-directory
             (file-name-directory
              (expand-file-name
               (bookmark-location
                (car bookmark))))))
       ,@body)))

(defun call-interactively-with-directory-from-bookmark (fn)
  "Interactively call FN with-directory-from-bookmark"
  (interactive "afunction: ")
  (with-directory-from-bookmark
   (call-interactively fn)))

(defun magit-status-from-bookmark ()
  "Magit status for bookmark"
  (interactive)
  (with-directory-from-bookmark
   ;; magit does some pretty funny stuff invovling buffers
   ;; and default-directory, the below works around it.
   (magit-status default-directory)))

(defun indent-and-open-newline (&optional previous)
  "Add a newline after current line and tab to indentation.
If PREVIOUS is non-nil, go up a line first."
  (interactive)
  (if previous
      (previous-line))
  (end-of-line)
  (newline)
  (indent-for-tab-command))

(defun previous-indent-and-open-newline ()
  "call indent-and-open-newline with previous non-nil"
  (interactive)
  (indent-and-open-newline t))

(defun magit-tracking-name-unfucked-with (remote branch)
  branch)

(defun magit-quick-stash ()
  "Immediately stash with message WIP on branchname: short-sha commit-message"
  (interactive)
  (magit-stash ""))

(defun prettify-json ()
  "NOTE: requires ruby in $PATH. Replace a valid json region with
pretty printed json By default uses the jj method to print,
uses pp if there is a prefix argument"
  (interactive)
  (let* ((print-method (if current-prefix-arg "pp" "jj"))
         (cmd (format
               "ruby -e 'require \"json\"; require \"pp\"; %s JSON.parse(gets)'" print-method)))
    (shell-command-on-region
     (region-beginning)
     (region-end)
     cmd nil t)))

(defun shell-command-on-region-replace (start end command)
  (shell-command-on-region start end command nil t))

(defun shell-command-on-dwim-replace (command)
  (interactive
   (list
    (read-shell-command "Shell command: " nil nil
                        (let ((filename
                               (cond
                                (buffer-file-name)
                                ((eq major-mode 'dired-mode)
                                 (dired-get-filename nil t)))))
                          (and filename (file-relative-name filename))))))
  (let ((start (if (region-active-p)
                   (region-beginning)
                 (point-min)))
        (end (if (region-active-p)
                 (region-end)
               (point-max))))
    (shell-command-on-region-replace start end command)))

(defun force-save ()
  (interactive)
  (not-modified 1)
  (save-buffer))

(defun devolve-ruby-symbols ()
  (interactive)
  (query-replace-regexp
   "\\([@$_A-Za-z][_A-Za-z0-9]*[!_=?A-Za-z0-9]\\): "
   ":\\1 => "
   nil (point-min) (point-max)))

(defun toggle-quote-type ()
  "Toggle single quoted string to double or vice versa, and
  flip the internal quotes as well.  Best to run on the first
  character of the string."
  (interactive)
  (save-excursion
    (re-search-backward "[\"']")
    (let* ((start (point))
           (old-c (char-after start))
           new-c)
      (setq new-c
            (case old-c
              (?\" "'")
              (?\' "\"")))
      (setq old-c (char-to-string old-c))
      (delete-char 1)
      (insert new-c)
      (re-search-forward old-c)
      (backward-char 1)
      (let ((end (point)))
        (delete-char 1)
        (insert new-c)
        (replace-string new-c old-c nil (1+ start) end)))))

(defun ruby-format-string-to-heredoc ()
  "formats a ruby string to a heredoc with no more than 80 chars per line"
  (interactive)
  (save-excursion
    (re-search-backward "[\"']")
    (let ((quote-c (char-after (point))))
      (delete-char 1)
      (insert "<<-TEXT\n")
      (save-excursion (re-search-forward quote-c)
                      (delete-backward-char 1)
                      (insert "\nTEXT"))
      (forward-char 80)
      (insert "\n"))))

(defun simp-find-test-or-source-other-window ()
  (interactive)
  (let ((file-key
         (file-name-sans-extension
          (file-name-nondirectory
           (buffer-file-name)))))
    (let ((to-match
           (if (string-match "_spec" file-key)
               (replace-regexp-in-string "_spec" "" file-key)
             (concat file-key "_spec"))))
      (let ((match
             (dolist (file-path (simp-project-files))
               (when (string-match to-match file-path)
                 (return file-path)))))
        (let ((file-to-open (concat (simp-project-root) "/" match)))
          (find-file-other-window file-to-open))))))

(defun dired-sclang-preview-soundfile ()
  (interactive)
  (sclang-preview-soundfile (dired-get-filename)))

(defun sclang-preview-soundfile (path)
  (let ((command (concat "~sampleBuffer.value(\"" path "\")")))
    (sclang-eval-string command)))

(defun endless/visit-pull-request-url ()
  "Visit the current branch's PR on Github."
  (interactive)
  (browse-url (format "https://github.com/%s/pull/new/%s"
                      (replace-regexp-in-string "\\`.+github\\.com:\\(.+\\)\\.git\\'" "\\1"
                                                (magit-get "remote"
                                                           (magit-get-push-remote)
                                                           "url"))
                      (magit-get-current-branch))))

(defun my-put-file-name-on-clipboard ()
  "Put the current file name on the clipboard"
  (interactive)
  (let ((filename (if (equal major-mode 'dired-mode)
                      default-directory
                    (buffer-file-name))))
    (when filename
      (with-temp-buffer
        (insert filename)
        (clipboard-kill-region (point-min) (point-max)))
      (message filename))))

;; (defun dired-overtone-preview-waveform ()
;;  (interactive)
;;  (overtone-preview-waveform (dired-get-filename)))

;; (defun overtone-preview-waveform ()
;;  (let ((command (concat "(preview-waveform \"" path "\")")))
;;    (cider)))

(provide 'my-functions)
