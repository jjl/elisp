; Magit
(global-set-key (kbd "M-g s") 'magit-status)
(global-set-key (kbd "M-g l") 'magit-log)
; Moving between errors
(global-set-key (kbd "M-s e n") 'jjl-next-error)
(global-set-key (kbd "M-s e p") 'jjl-previous-error)

(provide 'jjl-keymap-extra-cust)
