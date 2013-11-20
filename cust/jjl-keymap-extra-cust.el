; Magit
(global-set-key (kbd "M-g s") 'magit-status)
(global-set-key (kbd "M-g l") 'magit-log)
; Moving between errors
(global-set-key (kbd "M-s e n") 'jjl-next-error)
(global-set-key (kbd "M-s e p") 'jjl-previous-error)
; Multiple cursors
(global-unset-key (kbd "M-c"))
(global-set-key (kbd "M-c l") 'mc/edit-lines)
; Food for thought: stackoverflow.com/questions/7549259/is-there-a-quick-way-to-unbind-keys-in-emacs
(provide 'jjl-keymap-extra-cust)
