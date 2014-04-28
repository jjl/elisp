; Auto selection
(autoload 'scss-mode "sass-mode.el" "sass Mode" t)
(al-util/register 'sass-mode ".sass")

; Hook
(defun sass-mode-custom ()
  "sass-mode-hook"
  (jproject/call-hook 'sass-mode-hook))

(add-hook 'sass-mode-hook 'sass-mode-custom)

(provide 'sass-mode-cust)
