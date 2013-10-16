; Auto selection
(autoload 'cperl-mode "cperl-mode.el" "cPerl Mode" t)
(add-to-list 'auto-mode-alist '("\\.pl\\'" . cperl-mode))
(add-to-list 'auto-mode-alist '("\\.pm\\'" . cperl-mode))

; Hook
(defun cperl-mode-custom ()
  "cperl-mode-hook"
  (set (make-local-variable 'tab-width) 4))

(add-hook 'cperl-mode-hook 'cperl-mode-custom)

(provide 'cperl-mode-cust)
