; Auto selection
(autoload 'coffee-mode "coffee-mode.el" "Coffee Mode" t)
(al-util/register 'coffee-mode ".coffee" ".iced" ".ics" "Cakefile")

; Hook
(defun coffee-mode-custom ()
  "coffee-mode-hook"
  (jproject/call-hook 'coffee-mode-hook))
  
(add-hook 'coffee-mode-hook 'coffee-mode-custom)

(provide 'coffee-mode-cust)
