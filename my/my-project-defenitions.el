(project-define
 '(:type rails
   :has (config.ru app/views app/models app/controllers)
   :ignore (tmp coverage log vendor .git public/system public/assets)))

(project-define
 '(:type emacs
   :has (init.el)))

(provide 'my-project-defenitions)