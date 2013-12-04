; Magit
(global-set-key (kbd "M-g s") 'magit-status)
(global-set-key (kbd "M-g l") 'magit-log)
; Moving between errors
; -- unbind flymake ones since flymake doesn't work great for js
(global-unset-key (kbd "M-s n"))
(global-unset-key (kbd "M-s p"))
(global-set-key (kbd "M-s n") 'jjl-next-error)
(global-set-key (kbd "M-s p") 'jjl-previous-error)
; Multiple cursors
(global-unset-key (kbd "M-c"))
(global-set-key (kbd "M-c l") 'mc/edit-lines)
; Food for thought: stackoverflow.com/questions/7549259/is-there-a-quick-way-to-unbind-keys-in-emacs
(provide 'jjl-keymap-extra-cust)
