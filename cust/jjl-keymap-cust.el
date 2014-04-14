;;; jjl-keymap-cust
;;; These bindings are applied regardless of whether Cask is working or not
(global-unset-key (kbd "C-z")) ; iconify-frame
(global-set-key (kbd "C-z") 'undo)
(global-set-key (kbd "C-;") 'comment-region)
;; Clojure-mode binds C-: to toggle between keyword and string, which is useful
(global-set-key (kbd "C-M-:") 'uncomment-region)
(provide 'jjl-keymap-cust)
