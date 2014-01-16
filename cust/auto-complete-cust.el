(defun enable-auto-complete-hook ()
  (setq completion-at-point-functions '(auto-complete)))

(defun enable-auto-complete ()
  (auto-complete-mode)
  (enable-auto-complete-hook))

; Hooks
(defun auto-complete-custom ()
  (add-hook 'auto-complete-mode-hook 'enable-auto-complete-hook))

(auto-complete-custom)

(provide 'auto-complete-cust)
