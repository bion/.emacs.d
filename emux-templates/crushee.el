(emux-session-set-default-directory "~/code/crushee")
;; (emux-screen-create '(:name "bg") "jasmine" "rake jasmine")
;; (emux-term-create "mongodb" "rm -rf /data/db/mongod.lock && mongod")
(emux-term-create "rs" "rs")
(emux-term-hsplit "rc" "rc")
;; (emux-term "mongo" "sleep 5 && mongo artifex_development")
(emux-screen-create '(:name "tests") "rspec")
(emux-term-send-raw "rake spec")
(emux-term "cucumber")
(emux-term-send-raw "cok")
(emux-screen-create '(:name "misc") "misc")
(emux-screen-create '(:name "git") "git" "git status")
