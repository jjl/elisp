; Auto selection
(autoload 'php-mode "php-mode.el" "PHP Mode" t)
(al-util/register 'php-mode ".php")

; Hook
(defun php-mode-custom ()
  "php-mode-hook")

(add-hook 'php-mode-hook 'php-mode-custom)


(provide 'php-mode-cust)
