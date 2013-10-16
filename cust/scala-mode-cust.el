; Auto selection
(autoload 'scala-mode "scala-mode.el" "Scala Mode" t)
(add-to-list 'auto-mode-alist '("\\.scala\\'" . scala-mode))

; Hook
(defun scala-mode-custom ()
  "scala-mode-hook")
  
(add-hook 'scala-mode-hook 'scala-mode-custom)


(provide 'scala-mode-cust)
