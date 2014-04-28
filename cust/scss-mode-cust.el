; Auto selection
(autoload 'scss-mode "scss-mode.el" "scss Mode" t)
(al-util/register 'scss-mode ".scss")

; Hook
(defun scss-mode-custom ()
  "scss-mode-hook"
  (jproject/call-hook 'scss-mode-hook))

(add-hook 'scss-mode-hook 'scss-mode-custom)


(provide 'scss-mode-cust)
