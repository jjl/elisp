; Auto selection
(autoload 'scala-mode "scala-mode2.el" "Scala Mode" t)
(al-util/register 'scala-mode ".scala" ".sbt")

; Hook
(defun scala-mode-custom ()
  "scala-mode-hook"
  (jproject/call-hook 'scala-mode-hook))
  
(add-hook 'scala-mode-hook 'scala-mode-custom)


(provide 'scala-mode-cust)
