(emux-session-set-default-directory "~/code/")
(emux-screen-create '(:name "guards") "browser_client" "ssh vagrant")
(emux-term-command "./browser_client_guard")
(emux-term-hsplit "collaboration_service" "ssh vagrant")
(emux-term-command "./collaboration_service_guard")
(emux-term-hsplit "user_management" "ssh vagrant")
(emux-term-command "./user_management_guard")
(emux-screen-create '(:name "misc") "vagrant" "ssh vagrant")
(emux-screen-create '(:name "tails") "vagrant" "ssh vagrant")
(balance-windows)
