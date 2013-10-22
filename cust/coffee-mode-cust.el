; Auto selection
(autoload 'coffee-mode "coffee-mode.el" "Coffee Mode" t)
(al-util/register 'coffee-mode ".coffee" ".iced" ".ics" "Cakefile")

; Hook
(defun coffee-mode-custom ()
  "coffee-mode-hook"
  ; Indent with two spaces. Nodejs gets very nested
  (set (make-local-variable 'tab-width) 2))
  
(add-hook 'coffee-mode-hook 'coffee-mode-custom)

(provide 'coffee-mode-cust)
