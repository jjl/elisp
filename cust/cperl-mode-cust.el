; Auto selection
(autoload 'cperl-mode "cperl-mode.el" "cPerl Mode" t)
(al-util/register 'cperl-mode ".pl" ".pm")

; Hook
(defun cperl-mode-custom ()
  "cperl-mode-hook"
  (set (make-local-variable 'tab-width) 4))

(add-hook 'cperl-mode-hook 'cperl-mode-custom)

(provide 'cperl-mode-cust)
