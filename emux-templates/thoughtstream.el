(emux-session-set-default-directory "/vagrant:")
(emux-screen-create '(:name "misc") "vagrant")
(emux-screen-create '(:name "rcs") "user_management-rc" "cd user_management && bundle exec rails c")
(emux-term-vsplit "browser_client-rc" "cd browser_client && bundle exec rails c")
(emux-screen-create '(:name "guards"))
(emux-term-command "./browser_client_guard")
(emux-term-vsplit "collaboration_service" "./collaboration_service_guard")
(emux-term-vsplit "user_management" "./user_management_guard")
(balance-windows)
