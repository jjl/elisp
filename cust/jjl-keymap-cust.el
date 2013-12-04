;;; jjl-keymap-cust
;;; These bindings are applied regardless of whether Cask is working or not
(global-unset-key (kbd "C-z")) ; iconify-frame
(global-set-key (kbd "C-z") 'undo)
(global-set-key (kbd "C-;") 'comment-region)
(global-set-key (kbd "C-:") 'uncomment-region)
(provide 'jjl-keymap-cust)
