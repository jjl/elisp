; Auto selection
(autoload 'web-mode "web-mode.el" "Web Mode" t)
(al-util/register 'web-mode ".html.php" ".phtml" ".tpl.php" ".jsp" ".aspx" ".ascx" ".erb")

; Hook
(defun web-mode-custom ()
  "web-mode-hook"
  (setq web-mode-html-offset 2)
  (setq web-mode-css-offset 2)
  (setq web-mode-script-offset 2)
  (setq web-mode-autocompletes-flag nil))

(add-hook 'web-mode-hook 'web-mode-custom)


(provide 'web-mode-cust)
