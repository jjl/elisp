; Auto selection
(autoload 'less-css-mode "less-css-mode.el" "LESS CSS Mode" t)
(al-util/register 'less-css-mode ".less")

; Hook
(defun less-css-mode-custom ()
  "less-css-mode-hook"
  (jproject/call-hook 'less-css-mode-hook))

(add-hook 'less-css-mode-hook 'less-css-mode-custom)


(provide 'less-css-mode-cust)
