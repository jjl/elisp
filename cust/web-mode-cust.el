; Auto selection
(autoload 'web-mode "web-mode.el" "Web Mode" t)
(al-util/register 'web-mode ".html.php" ".phtml" ".tpl.php" ".jsp" ".aspx" ".ascx" ".erb")

; Hook
(defun web-mode-custom ()
  "web-mode-hook"
  (jproject/call-hook 'web-mode-hook))


(add-hook 'web-mode-hook 'web-mode-custom)


(provide 'web-mode-cust)
